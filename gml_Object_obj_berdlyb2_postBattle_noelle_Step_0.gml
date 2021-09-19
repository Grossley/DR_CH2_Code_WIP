image_index = clamp(image_index, 0, 4)
if gml_Script_i_ex(865)
{
    if (obj_battleback.destroy == 1)
        instance_destroy()
}
if (!gml_Script_i_ex(865))
    instance_destroy()
