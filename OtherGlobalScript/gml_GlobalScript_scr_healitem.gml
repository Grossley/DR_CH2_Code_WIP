gml_Script_scr_heal(argument0, argument1)
healx = gml_Script_scr_charbox_x(argument0)
healtext = gml_Script_instance_create(((healx + 70) + xx), (yy + 430), obj_healwriter)
healtext.healamt = argument1
return;
