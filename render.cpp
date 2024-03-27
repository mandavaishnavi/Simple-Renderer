#include "render.h"

Integrator::Integrator(Scene &scene)
{
    this->scene = scene;
    this->outputImage.allocate(TextureType::UNSIGNED_INTEGER_ALPHA, this->scene.imageResolution);
}

// Function to sample a point on the hemisphere with uniform distribution
Vector3f SampleHemisphereUniform(float u1, float u2)
{
    float z = u1;
    float r = std::sqrt(1.0f - z * z);
    float phi = 2 * M_PI * u2;

    float x = r * std::cos(phi);
    float y = r * std::sin(phi);

    return Normalize(Vector3f(x, y, z));
}

Vector3f Coseine(float u1, float u2)
{
    // Convert uniform random variables to spherical coordinates
    float phi = 2.0f * M_PI * u1;
    float cosTheta = 1.0f - u2;
    float sinTheta = sqrt(1.0f - cosTheta * cosTheta);

    // Convert spherical coordinates to Cartesian coordinates
    float x = cos(phi) * sinTheta;
    float y = sin(phi) * sinTheta;
    float z = cosTheta;

    return Vector3f(x, y, z);
}

long long Integrator::render()
{
    auto startTime = std::chrono::high_resolution_clock::now();

    for (int x = 0; x < this->scene.imageResolution.x; x++)
    {
        for (int y = 0; y < this->scene.imageResolution.y; y++)
        {
            if (this->sampling_method == 0)
            {
                Vector3f result_main(0, 0, 0);

                for (int i = 0; i < this->spp; i++)
                {
                    Ray cameraRay = this->scene.camera.generateRay_spp(x, y);
                    Interaction si = this->scene.rayIntersect(cameraRay);
                    Vector3f result(0, 0, 0);

                    if (si.didIntersect)
                    {
                        Vector3f radiance;
                        for (Light &light : this->scene.lights)
                        {
                            float u1 = next_float();
                            float u2 = next_float();

                            Vector3f wo_local = SampleHemisphereUniform(u1, u2);
                            Vector3f wo_world = si.toWorld(wo_local);

                            Ray shadowRay(si.p + 1e-3f * si.n, wo_world);
                            Interaction siShadow = this->scene.rayIntersect(shadowRay);

                            Interaction light_int = this->scene.rayEmitterIntersect(shadowRay);

                            radiance = light_int.emissiveColor;
                            // printf("%d ", light_int.didIntersect);

                            if ((!siShadow.didIntersect || siShadow.t > light_int.t) && light_int.didIntersect)
                            {
                                result += si.bsdf->eval(&si, wo_local) * radiance * std::abs(Dot(si.n, wo_world));
                                // std::cout << result.x << " " << result.y << " "<< result.z << "\n ";
                            }
                        }
                    }
                    result_main += result;
                }
                result_main *= 2 * M_PI;
                result_main /= spp;
                result_main /= scene.lights.size();

                Ray cameraRay = this->scene.camera.generateRay(x, y);


                Interaction light = this->scene.rayEmitterIntersect(cameraRay);

                result_main += light.emissiveColor;
                this->outputImage.writePixelColor((result_main), x, y);
            }

            if (this->sampling_method == 1)
            {
                Vector3f result_main(0, 0, 0);

                for (int i = 0; i < this->spp; i++)
                {
                    Ray cameraRay = this->scene.camera.generateRay_spp(x, y);
                    Interaction si = this->scene.rayIntersect(cameraRay);
                    Vector3f result(0, 0, 0);

                    if (si.didIntersect)
                    {
                        Vector3f radiance;
                        for (Light &light : this->scene.lights)
                        {
                            float u1 = next_float();
                            float u2 = next_float();

                            Vector3f wo_local = Coseine(u1, u2);
                            Vector3f wo_world = si.toWorld(wo_local);

                            Ray shadowRay(si.p + 1e-3f * si.n, wo_world);
                            Interaction siShadow = this->scene.rayIntersect(shadowRay);

                            Interaction light_int = this->scene.rayEmitterIntersect(shadowRay);

                            radiance = light_int.emissiveColor;
                            // printf("%d ", light_int.didIntersect);

                            if ((!siShadow.didIntersect || siShadow.t > light_int.t) && light_int.didIntersect)
                            {
                                result += si.bsdf->eval(&si, wo_local) * radiance * std::abs(Dot(si.n, wo_world));
                                // std::cout << result.x << " " << result.y << " "<< result.z << "\n ";
                            }
                        }
                    }
                    result_main += result;
                }
                result_main *=  M_PI;
                result_main /= spp;

                Ray cameraRay = this->scene.camera.generateRay(x, y);

        
                Interaction light = this->scene.rayEmitterIntersect(cameraRay);

                result_main += light.emissiveColor;
                this->outputImage.writePixelColor((result_main), x, y);
            }


            if (this->sampling_method == 2) // Assuming sample_method = 2 for light sampling
            {


                // Initialize the result color to black
                Vector3f result(0, 0, 0);
                for (int i = 0; i < this->spp; i++)
                {
                Ray cameraRay = this->scene.camera.generateRay_spp(x, y);

                // Intersect the ray with the scene
                Interaction si = this->scene.rayIntersect(cameraRay);
                    // If the ray hit something in the scene
                    if (si.didIntersect)
                    {
                        int lightIndex = rand() % this->scene.lights.size();
                        Light &light = this->scene.lights[lightIndex];
                        
                        // Sample the light at the intersection point
                        Vector3f radiance;
                        LightSample ls;
                        std::tie(radiance, ls) = light.sample(&si);

                        // Generate a shadow ray from the intersection point to the sampled point on the light
                        Ray shadowRay(si.p + 1e-3f * si.n, ls.wo);

                        // Intersect the shadow ray with the scene
                        Interaction siShadow = this->scene.rayIntersect(shadowRay);

                        Interaction light_int = this->scene.rayEmitterIntersect(shadowRay);

                        // radiance += light_int.emissiveColor;

                        if ((!siShadow.didIntersect || siShadow.t > light_int.t) && light_int.didIntersect)
                        {
                            Vector3f wi = si.toLocal(ls.wo);
                            float cosTheta = std::abs(Dot(si.n, ls.wo));
                            float cosTheta_l = std::abs(Dot(light.normal, -ls.wo));
                            float r = ls.d;
                            float p_A = 1.f / light.area();

                            

                            // Add the contribution of the light to the result color
                            result += si.bsdf->eval(&si, wi) * radiance * cosTheta * cosTheta_l / (p_A * r * r);
                        }
                    }
                }

                result /= spp;
                result *=  M_PI;

                // Generate a final gather ray from the camera through the current pixel
                Ray cameraRay_f = this->scene.camera.generateRay(x, y);

                // Intersect the final gather ray with the scene
                Interaction si_f = this->scene.rayEmitterIntersect(cameraRay_f);

                // Add the emissive color of the hit object (if any) to the result color
                result += si_f.emissiveColor;

                // Write the result color to the output image
                this->outputImage.writePixelColor(result, x, y);
            }
        }
    }
    auto finishTime = std::chrono::high_resolution_clock::now();

    return std::chrono::duration_cast<std::chrono::microseconds>(finishTime - startTime).count();
}

int main(int argc, char **argv)
{
    if (argc != 5)
    {
        std::cerr << "Usage: ./render <scene_config> <out_path> <num_samples> <sampling_strategy>\n";
        return 1;
    }
    Scene scene(argv[1]);

    Integrator rayTracer(scene);
    int spp = atoi(argv[3]);
    rayTracer.spp = spp;
    rayTracer.sampling_method = atoi(argv[4]);
    // printf("%d \n", rayTracer.spp);
    auto renderTime = rayTracer.render();
    std::cout << "Render Time: " << std::to_string(renderTime / 1000.f) << " ms" << std::endl;
    rayTracer.outputImage.save(argv[2]);

    return 0;
}
