timer++
if (timer == 3)
{
    timer = 0
    gml_Script_instance_create(x, y, obj_musical_path_dot)
}
