#pragma once

#include "scene.h"

struct Integrator {
    Integrator(Scene& scene);

    long long render();

    Scene scene;
    Texture outputImage;

    int spp;

    int sampling_method;
};