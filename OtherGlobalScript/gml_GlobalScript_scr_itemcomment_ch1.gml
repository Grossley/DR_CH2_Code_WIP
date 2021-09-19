var _temp_local_var_1;
talkx = gml_Script_scr_charbox_x_ch1(argument0)
itemcomment = gml_Script_instance_create_ch1((talkx + xx), (yy + 460), 1492)
itemcomment.msg = argument1
itemcomment.who = argument0
if (global.flag[32] == 1)
{
    var _temp_local_var_1 = itemcomment
    instance_destroy()
}
return;
