talkx = gml_Script_scr_charbox_x(argument0)
itemcomment = gml_Script_instance_create((talkx + xx), (yy + 460), obj_menuwriter)
itemcomment.msg = argument1
itemcomment.who = argument0
if (global.flag[32] == 1)
{
    var _temp_local_var_1 = itemcomment
    instance_destroy()
}
return;
