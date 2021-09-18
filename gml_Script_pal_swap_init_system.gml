global.Pal_HTML5 = 0
if (!global.Pal_HTML5)
{
    global.Pal_Shader = argument[0]
    global.Pal_Texel_Size[0] = shader_get_uniform(global.Pal_Shader, "u_pixelSize")
    global.Pal_UVs[0] = shader_get_uniform(global.Pal_Shader, "u_Uvs")
    global.Pal_Index[0] = shader_get_uniform(global.Pal_Shader, "u_paletteId")
    global.Pal_Texture[0] = shader_get_sampler_index(global.Pal_Shader, "u_palTexture")
    global.Pal_Shader_Is_Set = 0
}
else
{
    if (argument_count < 3)
    {
        "Must provide pal_swap_init_system() with 2 additional arguments for HTML5 Compatible Sprite and Surface Shaders"
        // WARNING: Popz'd an empty stack.
    }
    global.Pal_HTML5 = 1
    global.Pal_HTML5_Sprite = argument[1]
    global.Pal_HTML5_Surface = argument[2]
    global.Pal_Texel_Size[1] = shader_get_uniform(global.Pal_HTML5_Sprite, "u_pixelSize")
    global.Pal_UVs[1] = shader_get_uniform(global.Pal_HTML5_Sprite, "u_Uvs")
    global.Pal_Index[1] = shader_get_uniform(global.Pal_HTML5_Sprite, "u_paletteId")
    global.Pal_Texture[1] = shader_get_sampler_index(global.Pal_HTML5_Sprite, "u_palTexture")
    global.Pal_Texel_Size[2] = shader_get_uniform(global.Pal_HTML5_Surface, "u_pixelSize")
    global.Pal_UVs[2] = shader_get_uniform(global.Pal_HTML5_Surface, "u_Uvs")
    global.Pal_Index[2] = shader_get_uniform(global.Pal_HTML5_Surface, "u_paletteId")
    global.Pal_Texture[2] = shader_get_sampler_index(global.Pal_HTML5_Surface, "u_palTexture")
}
global.Pal_Layer_Priority = 
global.Pal_Layer_Temp_Priority = 
global.Pal_Layer_Map = 
return;
