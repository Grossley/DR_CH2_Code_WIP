image_index = clamp(image_index, 0, 4)
if gml_Script_i_ex(obj_battleback)
{
    if (obj_battleback.destroy == 1)
        instance_destroy()
}
if (!gml_Script_i_ex(obj_battleback))
    instance_destroy()
