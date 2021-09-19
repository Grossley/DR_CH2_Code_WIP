gml_Script_scr_healall(argument0)
for (i = 0; i < chartotal; i += 1)
{
    healx = gml_Script_scr_charbox_x(i)
    healtext = gml_Script_instance_create(((healx + 70) + xx), (yy + 430), obj_healwriter)
    healtext.healamt = argument0
}
return;
