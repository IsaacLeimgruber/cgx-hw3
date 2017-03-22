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

    //calcul the reflexion ratio which is proportional to the cos between
    //the normal and the light direction
    float cosNL = dot(normal_mv, light_dir);
    color = (ka * La);

    //filter light rays that get reflected through the surface
    if(cosNL > 0){
        vec3 reflexion_dir = normalize(2 * normal_mv * cosNL - light_dir);

    //Sum ambient, diffuse and specular terms
        color +=
                //diffuse
                (kd * cosNL * Ld) +
                //specular
                (ks * pow(max(0, dot(reflexion_dir, view_dir)), alpha) * Ls);
    }
}
