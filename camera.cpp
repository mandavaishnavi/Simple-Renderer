#include "camera.h"

Camera::Camera(Vector3f from, Vector3f to, Vector3f up, float fieldOfView, Vector2i imageResolution)
    : from(from),
      to(to),
      up(up),
      fieldOfView(fieldOfView),
      imageResolution(imageResolution)
{
    this->aspect = imageResolution.x / float(imageResolution.y);

    // Determine viewport dimensions in 3D
    float fovRadians = fieldOfView * M_PI / 180.f;
    float h = std::tan(fovRadians / 2.f);
    float viewportHeight = 2.f * h * this->focusDistance;
    float viewportWidth = viewportHeight * this->aspect;

    // Calculate basis vectors of the camera for the given transform
    this->w = Normalize(this->from - this->to);
    this->u = Normalize(Cross(up, this->w));
    this->v = Normalize(Cross(this->w, this->u));

    // Pixel delta vectors
    Vector3f viewportU = viewportWidth * this->u;
    Vector3f viewportV = viewportHeight * (-this->v);

    this->pixelDeltaU = viewportU / float(imageResolution.x);
    this->pixelDeltaV = viewportV / float(imageResolution.y);

    // Upper left
    this->upperLeft = from - this->w * this->focusDistance - viewportU / 2.f - viewportV / 2.f;
}

Ray Camera::generateRay_spp(int x, int y)
{
   
    float random_offset_u = next_float();
    float random_offset_v = next_float();

    Vector3f pixelCenter = this->upperLeft + random_offset_u * this->pixelDeltaU + random_offset_v * this->pixelDeltaV;

    pixelCenter = pixelCenter + (x * this->pixelDeltaU + y * this->pixelDeltaV);

    // Compute direction from camera origin to the sampled point
    Vector3f direction = Normalize(pixelCenter - this->from);

   

    return Ray(this->from, direction);
}

Ray Camera::generateRay(int x, int y)
{
    Vector3f pixelCenter = this->upperLeft + 0.5f * (this->pixelDeltaU + this->pixelDeltaV);
    pixelCenter = pixelCenter + x * this->pixelDeltaU + y * this->pixelDeltaV;

    Vector3f direction = Normalize(pixelCenter - this->from);

    return Ray(this->from, direction);
}
