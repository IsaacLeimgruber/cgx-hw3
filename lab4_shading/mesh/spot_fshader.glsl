#version 330
in vec3 normal_mv;
in vec3 light_dir;
in vec3 view_dir;
uniform float alpha;
uniform vec3 La, Ld, Ls;
uniform vec3 ka, kd, ks;
uniform vec3 spot_dir;

out vec3 color;


const float spot_cos_cutoff = 0.985; // cos 10 degrees
const float spot_exp = 150;

void main() {

    //>>>>>>>>>> TODO >>>>>>>>>>>
    // TODO 5: Spot light.
    // Complete the shader to obtain spot light effect
    //<<<<<<<<<< TODO <<<<<<<<<<<
    float cos_angle = dot(normalize(spot_dir), normalize(light_dir));
    float spot_eff = pow(cos_angle, spot_exp);
    float cosNL = dot(normal_mv, light_dir);
    vec3 reflexion_dir = normalize(2 * normal_mv * cosNL - light_dir);
    vec3 phong = (kd * max(0, cosNL) * Ld) +
                 (ks * pow(max(0, dot(reflexion_dir, view_dir)), alpha) * Ls);

    /* Since we want some ambient lighting even outside the cone,
     * we took the ambiant component outside the phong shading so
     * it is added only once, even if the point is inside the area
     * lighted by the spot.
     */
    color = (ka * La);

    //filter light rays that get reflected through the surface
    if((cos_angle > spot_cos_cutoff) && (cosNL > 0)){
        color += phong * spot_eff;
}
