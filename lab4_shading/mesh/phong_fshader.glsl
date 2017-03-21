#version 330
in vec3 normal_mv;
in vec3 light_dir;
in vec3 view_dir;
uniform float alpha;
uniform vec3 La, Ld, Ls;
uniform vec3 ka, kd, ks;

out vec3 color;


void main() {

    //>>>>>>>>>> TODO >>>>>>>>>>>
    // TODO 1.2: Phong shading.
    // 1) compute ambient term.
    // 2) compute diffuse term.
    // 3) compute specular term.
    // To avoid GPU bug, remove
    // the code above after
    // implementing Phong shading.
    //<<<<<<<<<< TODO <<<<<<<<<<<
    vec3 r = normalize(2*normal_mv*dot(normal_mv, light_dir) - light_dir);
    color = (ka*La) + (kd*max(0, dot(normal_mv, light_dir))*Ld) +
            (ks*pow(max(0, dot(r, view_dir)),alpha)*Ls);
}
