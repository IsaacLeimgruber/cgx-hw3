#version 330

in vec4 vpoint_mv;
in vec3 light_dir, view_dir;
uniform float alpha;
uniform vec3 La, Ld, Ls;
uniform vec3 ka, kd, ks;
out vec3 color;


void main() {

    ///>>>>>>>>>> TODO >>>>>>>>>>>
    /// TODO 4.2: Flat shading.
    /// 1) compute triangle normal using dFdx and dFdy
    /// 1) compute ambient term.
    /// 2) compute diffuse term.
    /// 3) compute specular term.
    ///<<<<<<<<<< TODO <<<<<<<<<<<
    vec3 triangle_normal = normalize(cross(dFdx(vpoint_mv.xyz), dFdy(vpoint_mv.xyz)));
    float cosNL = dot(triangle_normal, light_dir);
    vec3 r = normalize(2 * triangle_normal * cosNL - light_dir);
    color = (ka * La);


    if(cosNL > 0){
        color +=
            //diffuse
            (kd * cosNL * Ld) +
            //specular
            (ks * pow(max(0, dot(r, view_dir)), alpha) * Ls);
    }
}
