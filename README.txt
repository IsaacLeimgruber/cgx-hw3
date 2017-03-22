# Homework 3 - computer graphics
## 1 Phong Shading
### 1.1 Computing `normal_mv`, `light_dir` and `view_dir`

We compute `normal_mv` by multiplicating the inverse transpose of `MV` with the `vnormal` vector extended as a `vec4` (for the multiplication, since `MV` is 4x4). We then keep the first 3 coordinates and normalize.

`light_dir` is computed by subtracting the first 3 coordinates of `vpoint` to `light_pos`, then normalizing.

`view_dir` is computed by normalizing the first 3 coordinates of `vpoint` as a `vec3` and taking its opposite.

### 1.2 Computing the vertex color
First, we pass the calculated vectors to the fragment shader, to do this, we add 'out' fields in the vertex shader and 'in' fields in the fragment shader for each vector. 
We then compute the reflection coefficient `r` as : `r = normalize(2*normal_mv*dot(normal_mv, light_dir) - light_dir)`. Now we can calculate the ambiant, diffuse and specular terms and sum them. We clamped the dot products when they were negative since it would mean the pixel is hidden from light.

## 2 Toon Shading
### 2.1 Binding Texture
For this point all was already done, we just called the `BindTexture` function once with parameters `GL_TEXTURE_1D` and `texture_1d_id_`. We used the same vertex shader as in the Phong Shading.

### 2.2 Computing vertex color
The only difference here from the Phong Shading is that in the fragment shader, for the diffuse term and specular term, we replace the dot product by a call to the texture function on the dot product. This works since the dot product varies between 0 and 1, just as our texture mapping, giving directly a discrete mapping between the dot product and the colors since the texture is made so.

## 3 Artistic Shading
### 3.1
Same as 2.1, using a `GL_TEXTURE_2D`.

### 3.2
Here, we compute a point's color using the 2D texture, so we need to compute the mapping that gives the texture's coordinates for a point. The x coordinate is simply the dot product between the normal and the light direction vector (clamped to 0 when negative). The y coordinate is the (clamped) dot product between the reflection's direction and the view direction.

## 4 Flat shading
### 4.1
The light dir is the (normalized) vector from the light position to the `vpoint`. The view's direction is the opposite direction of the vpoint's.

### 4.2
Here, unlike previously, we use the triangle's normal vector instead of the suface's normal vector.
To compute it, it is enough to take the cross-product of the points coordinates's derivatives. Every point in the same triangle have the same associated (triangle's) normal vector.

## 5 Spoth Light Shading
This part relies heavily on the cosinus computated from the spotlight direction and the view direction.
We then used geometric formulas to compute the distance to the cone main axe and alter the points' phong shading accordingly.
