gml_Script_scr_heal_ch1(argument0, argument1)
healx = gml_Script_scr_charbox_x_ch1(argument0)
healtext = gml_Script_instance_create_ch1(((healx + 70) + xx), (yy + 430), 1491)
healtext.healamt = argument1
return;
