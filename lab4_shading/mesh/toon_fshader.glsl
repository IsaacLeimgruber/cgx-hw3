#version 330
in vec3 normal_mv;
in vec3 light_dir;
in vec3 view_dir;

uniform float alpha;
uniform vec3 La, Ld, Ls;
uniform vec3 ka, kd, ks;
out vec3 color;

uniform sampler1D tex1D;
void main() {

    ///>>>>>>>>>> TODO >>>>>>>>>>>
    /// TODO 2.2: Toon shading.
    /// 1) compute ambient term.
    /// 2) compute diffuse term using the texture sampler tex.
    /// 3) compute specular term using the texture sampler tex.
    ///<<<<<<<<<< TODO <<<<<<<<<<<
    vec3 r = normalize(2*normal_mv*dot(normal_mv, light_dir) - light_dir);
    color = (ka*La) + (kd*texture(tex1D, max(0, dot(normal_mv, light_dir))).x*Ld) +
            (ks*texture(tex1D, pow(max(0, dot(r, view_dir)),alpha)).x*Ls);
}
