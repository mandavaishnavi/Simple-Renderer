# Report

## Why can’t we render point and directional lights with uniform hemisphere sampling or cosine weighted sampling?

Rendering point and directional lights with uniform hemisphere sampling or cosine weighted sampling is challenging due to the nature of these light sources. Point and directional lights are considered as infinitesimally small or infinitely far away, respectively. 

 - ### Directional Lights

    -  Uniform Hemisphere Sampling: This method distributes samples evenly over a hemisphere, but directional lights emit light uniformly in one direction, not in all directions from a single point. Therefore, this approach would spread samples inaccurately, resulting in incorrect lighting calculations.

    -  Cosine-weighted Sampling: While this technique accurately represents the natural distribution of light for point or area lights, it doesn't mimic the behavior of directional lights well. Directional lights emit parallel light rays, so the angle between the light direction and the surface normal is constant across the scene. Using cosine-weighted sampling here would introduce unnecessary variations in sampled directions, leading to incorrect shading.

 - ### Point Lights


    - Rendering point lights with uniform hemisphere sampling or cosine-weighted sampling is not suitable because these methods distribute samples evenly across the hemisphere, making it challenging to sample their illumination accurately using such methods, leading to an inaccurate representation of light distribution. Point lights emit light in all directions uniformly, but these sampling methods favor certain directions, resulting in biased lighting. The probability of a randomly sampled ray from a surface point intersecting the point light source is virtually zero. 

</br>
</br>
</br>

## Increase in Noise with Decreasing Area Light Size

Both uniform hemisphere sampling and cosine-weighted sampling exhibit an increase in noise when the size of the area light decreases, even when the number of samples remains constant.

1. **Uniform Hemisphere Sampling**:
   - As the area light size decreases, fewer samples are effectively distributed across the light source. This leads to larger sampling intervals, resulting in a sparser representation of the light's intensity across the scene. Consequently, noise increases because fewer samples fail to adequately capture the light variations.

2. **Cosine Weighted Sampling**:
   - Similarly, cosine-weighted sampling distributes samples based on the cosine of the angle between the surface normal and the light direction. When the area light size decreases, the distribution of samples becomes less uniform, leading to uneven coverage of the light source. This non-uniformity in sampling contributes to an increase in noise, as certain areas receive fewer samples, resulting in inconsistent lighting calculations.

