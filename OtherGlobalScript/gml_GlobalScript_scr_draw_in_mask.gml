if (!instance_exists(obj_growtangle))
    return;
gpu_set_blendenable(0)
gpu_set_colorwriteenable(0, 0, 0, 1)
draw_set_alpha(0)
if argument0
{
    draw_rectangle(gml_Script_camerax(), gml_Script_cameray(), (gml_Script_camerax() + 640), (gml_Script_cameray() + 480), false)
    draw_set_alpha(1)
}
return;
