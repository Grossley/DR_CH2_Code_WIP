gml_Script_scr_healall_ch1(argument0)
for (i = 0; i < chartotal; i += 1)
{
    healx = gml_Script_scr_charbox_x_ch1(i)
    healtext = gml_Script_instance_create_ch1(((healx + 70) + xx), (yy + 430), 1491)
    healtext.healamt = argument0
}
return;
