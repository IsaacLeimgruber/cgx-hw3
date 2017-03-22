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

    float cosNL = max(0, dot(normal_mv, light_dir));
    vec3 reflexion_dir = normalize(2*normal_mv*cosNL - light_dir);
    float cosRVa = pow(max(0, dot(reflexion_dir, view_dir)), alpha);
    color = vec3(0.f);

    //filter light rays that get reflected through the surface
    if(cosNL > 0){
        color = texture(tex2D, vec2(cosNL, cosRVa)).rgb;
    }
}
