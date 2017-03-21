#version 330

in vec3 normal_mv;
in vec3 light_dir;
in vec3 view_dir;

out vec3 color;

uniform float alpha;
uniform sampler2D tex2D;

void main() {


    //>>>>>>>>>> TODO >>>>>>>>>>>
    // TODO 3.2: Artistic shading.
    // 1) compute the output color by doing a look-up in the texture using the
    //    texture sampler tex.
    //<<<<<<<<<< TODO <<<<<<<<<<<

    float dotNL = max(0, dot(normal_mv, light_dir));
    vec3 r = normalize(2*normal_mv*dot(normal_mv, light_dir) - light_dir);
    float dotRVa = pow(max(0, dot(r, view_dir)),alpha);

    color = texture(tex2D, vec2(dotNL, dotRVa)).rgb;

}
