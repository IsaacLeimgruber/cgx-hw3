# Homework 3 - computer graphics
## 1 Phong Shading
### 1.1 Computing normal_mv, light_dir and view_dir
We compute normal_mv by multiplicating the inverse transpose of MV with the vnormal 
vector extended as a vec4 (for the multiplication, since MV is 4x4). We then keep the first 3 coordinates and normalize.

light_dir is computed by subtracting the first 3 coordinates of vpoint to light_pos, then normalizing.

view_dir is computed by normalizing the first 3 coordinates of vpoint as a vec3 and taking its opposite.

### 1.2 Computing the vertex color
First, we pass the calculated vectors to the fragment shader, to do this, we add 'out' fields in the vertex shader and 'in' fields
in the fragment shader for each vector. 
We then compute the reflection coefficient r as : r = normalize(2*normal_mv*dot(normal_mv, light_dir) - light_dir)
Now we can calculate the ambiant, diffuse and specular terms and sum them. We clamped the dot products when they were negative
since it would mean the pixel is hidden from light.

## Toon Shading
### 2.1 Binding Texture
For this point all was already done, we just called the BindTexture function once with parameters GL_TEXTURE_1D and texture_1d_id_
We used the same vertex shader as in the Phong Shading.

### 2.2 Computing vertex color
The only difference here from the Phong Shading is that in the fragment shader, for the diffuse term and specular term,
we replace the dot product by a call to the texture function on the dot product. This works since the dot product varies between 0 and 1,
just as our texture mapping, giving directly a discrete mapping between the dot product and the colors since the texture is made so.
