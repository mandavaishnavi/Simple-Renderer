#include "light.h"

Light::Light(LightType type, nlohmann::json config)
{
    switch (type)
    {
    case LightType::POINT_LIGHT:
        this->position = Vector3f(config["location"][0], config["location"][1], config["location"][2]);
        break;
    case LightType::DIRECTIONAL_LIGHT:
        this->direction = Vector3f(config["direction"][0], config["direction"][1], config["direction"][2]);
        break;
    case LightType::AREA_LIGHT:
        this->center = Vector3f(config["center"][0], config["center"][1], config["center"][2]);
        this->vx = Vector3f(config["vx"][0], config["vx"][1], config["vx"][2]);
        this->vy = Vector3f(config["vy"][0], config["vy"][1], config["vy"][2]);
        this->normal = Vector3f(config["normal"][0], config["normal"][1], config["normal"][2]);
        break;
    default:
        std::cout << "WARNING: Invalid light type detected";
        break;
    }

    this->radiance = Vector3f(config["radiance"][0], config["radiance"][1], config["radiance"][2]);
    this->type = type;
}

std::pair<Vector3f, LightSample> Light::sample(Interaction *si)
{
    LightSample ls;
    memset(&ls, 0, sizeof(ls));

    Vector3f radiance;
    switch (type)
    {
    case LightType::POINT_LIGHT:
        ls.wo = (position - si->p);
        ls.d = ls.wo.Length();
        ls.wo = Normalize(ls.wo);
        radiance = (1.f / (ls.d * ls.d)) * this->radiance;
        break;
    case LightType::DIRECTIONAL_LIGHT:
        ls.wo = Normalize(direction);
        ls.d = 1e10;
        radiance = this->radiance;
        break;
    case LightType::AREA_LIGHT:
        // TODO: Implement this
        float u1 = next_float();
        float u2 = next_float();

        ls.p = center + 2 * (u1 - 0.5) * vx + 2 * (u2 - 0.5) * vy;

        ls.wo = Normalize(ls.p - si->p);
        ls.d = (ls.p - si->p).Length();
        ls.n = this->normal;
        radiance = this->radiance;

        break;
    }
    return {radiance, ls};
}

// Interaction Light::intersectLight(Ray *ray) {
//     Interaction si;
//     memset(&si, 0, sizeof(si));

//     if (type == LightType::AREA_LIGHT) {
//         // TODO: Implement this
//     }

//     return si;
// }

// Interaction Light::intersectLight(Ray *ray) {
//     Interaction si;
//     memset(&si, 0, sizeof(si));

//     if (type == LightType::AREA_LIGHT) {
//         // Calculate normal of the area light
//         Vector3f nl = Normalize(this->normal);

//         // Calculate determinant for ray-plane intersection
//         float det = Dot(nl, ray->d);

//         // Check if ray and plane are parallel
//         if (fabs(det) < 1e-6f)
//             return si; // No intersection

//         // Calculate parameter t for ray-plane intersection
//         float t = Dot((this->center - ray->o), nl) / det;

//         // Check if intersection point is behind ray origin or beyond tmax
//         if (t < 0 || t > ray->tmax)
//             return si; // No intersection

//         // Calculate intersection point
//         Vector3f p = ray->o + ray->d * t;

//         // Calculate vectors from center to intersection point
//         Vector3f cp = p - this->center;
//         float dx = Dot(cp, Normalize(vx));
//         float dy = Dot(cp, Normalize(vy));

//         // if (Dot(si.n, this->normal) > 0){
//                 // si.emissiveColor = Vector3f(0, 0, 0);
//                 // si.didIntersect = false;
//                 // }

//         // Check if intersection point is within the bounds of the area light
//         if (fabs(dx) <= this->vx.Length() && fabs(dy) <= vy.Length()) {
//             // Intersection occurred, set emissive color
//             si.didIntersect = true;
//             si.emissiveColor = this->radiance;

//             if(Dot(si.n, ray->d)<0){
//                 si.emissiveColor=Vector3f(0,0,0);
//                 si.didIntersect=false;
//                 return si;
//             }
//         }
//     }

//     return si;
// }

Interaction Light::intersectLight(Ray *ray)
{
    Interaction si;
    memset(&si, 0, sizeof(si));

    si.didIntersect = false;
    if (type == LightType::AREA_LIGHT)
    {
        // TODO: Implement this

        // Find the intersection point with the area light
        float t = Dot((center - ray->o), normal) / Dot(ray->d, normal);
        si.t = t;
        si.p = ray->o + t * ray->d;

        // Check if the intersection point is inside the rectangle defined by vx and vy
        Vector3f d = si.p - center;
        float ddvx = Dot(d, vx);
        float ddvy = Dot(d, vy);
        float dvxvx = Dot(vx, vx);
        float dvxvy = Dot(vx, vy);
        float dvyvy = Dot(vy, vy);
        float invDenom = 1.0f / (dvxvx * dvyvy - dvxvy * dvxvy);

        float u = (dvyvy * ddvx - dvxvy * ddvy) * invDenom;
        float v = (dvxvx * ddvy - dvxvy * ddvx) * invDenom;

        if (u >= -1.0f && u <= 1.0f && v >= -1.0f && v <= 1.0f)
        {
            si.didIntersect = true;
            si.n = Normalize(Cross(vx, vy));
            si.emissiveColor = this->radiance;

            float val = Dot(ray->d, si.n);
            if (val <= 0)
            {
                si.didIntersect = false;
                si.emissiveColor = Vector3f(0, 0, 0);
                return si;
            }
        }
    }

    return si;
}