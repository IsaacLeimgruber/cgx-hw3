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
    float cos_angle = dot(normalize(spot_dir), normalize(view_dir));
    float spot_eff = pow(dot(normalize(light_dir), normalize(spot_dir)), spot_exp);
    vec3 r = normalize(2*normal_mv*dot(normal_mv, light_dir) - light_dir);
    vec3 phong = (ka*La) + (kd*max(0, dot(normal_mv, light_dir))*Ld) +
            (ks*pow(max(0, dot(r, view_dir)),alpha)*Ls);
    if(cos_angle > spot_cos_cutoff){
        color = phong * spot_eff;
    }else{
        color = vec3(0.f);
    }

}
