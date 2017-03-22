#version 330

in vec3 vpoint;
in vec3 vnormal;

uniform vec3 La, Ld, Ls;
uniform vec3 ka, kd, ks;
uniform float alpha;
uniform mat4 projection;
uniform mat4 model;
uniform mat4 view;
uniform vec3 light_pos;

out vec3 vcolor;

void main() {
    mat4 MV = view * model;
    vec4 vpoint_mv = MV * vec4(vpoint, 1.0);
    gl_Position = projection * vpoint_mv;
    //>>>>>>>>>> TODO >>>>>>>>>>>
    // TODO 0.1: Gouraud shading.
    // 1) compute the normal using the model_view matrix.
    vec3 normal_mv = normalize((inverse(transpose(MV)) * vec4(vnormal, 1.f)).xyz);

    // 2) compute the light direction light_dir.
    vec3 light_dir = normalize(light_pos - vpoint_mv.xyz);

    // 3) compute the view direction view_dir.
    vec3 view_dir = -normalize(vpoint_mv.xyz);

    // 4) compute per vertex color
    float cosNL = dot(normal_mv, light_dir);
    vec3 reflexion_dir = normalize(2 * normal_mv * cosNL - light_dir);
    vcolor = (ka * La);

    //filter light rays that get reflected through the surface
    if(cosNL > 0){
        vcolor += (kd * cosNL * Ld) + (ks * pow(max(0, dot(reflexion_dir, view_dir)), alpha) * Ls);
    }

    //<<<<<<<<<< TODO <<<<<<<<<<<
}
