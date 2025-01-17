#pragma once

#include "vec.h"

// Forward declaration of BSDF class
class BSDF;

struct Interaction
{
    // Position of interaction
    Vector3f p;
    // Normal of the surface at interaction
    Vector3f n;
    // The uv co-ordinates at the intersection point
    Vector2f uv;
    // The viewing direction in local shading frame
    Vector3f wi;
    // Distance of intersection point from origin of the ray
    float t = 1e30f;
    // Used for light intersection, holds the radiance emitted by the emitter.
    Vector3f emissiveColor = Vector3f(0.f, 0.f, 0.f);
    // BSDF at the shading point
    BSDF *bsdf;
    // Vectors defining the orthonormal basis
    Vector3f a, b, c;

    bool didIntersect = false;

    Vector3f toWorld(Vector3f w)
    {
        // Vector3f C = n;
        // Vector3f B = Normalize(Cross(c, wi));
        // Vector3f A = Normalize(Cross(b, c));
        // // return v_local.x * x + v_local.y * y + v_local.z * z;
        // return A * w.x + B * w.y + C * w.z;

                return Vector3f( Dot(w, Vector3f(a.x, b.x, c.x)), Dot(w, Vector3f(a.y, b.y, c.y)), Dot(w, Vector3f(a.z, b.z, c.z)));

    }

   

    // Vector3f toWorld(Vector3f w) {
    //     // TODO: Implement this

    //     return Vector3f(0, 0, 0);
    // }

    // Vector3f toLocal(Vector3f w)
    // {
    //     // TODO: Implement this
    //     return Vector3f(0, 0, 0);
    // }

    Vector3f toLocal(Vector3f w)
    {
        
        return Vector3f(Dot(w, a), Dot(w, b), Dot(w, c));
    }
};