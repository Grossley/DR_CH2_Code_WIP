if (argument0 == 0)
{
    gml_Script_c_sel(argument0)
    gml_Script_c_walkdirect(obj_mainchara.x, obj_mainchara.y, argument1)
}
else if gml_Script_i_ex(global.cinstance[(argument0 - 1)])
{
    gml_Script_c_sel(argument0)
    gml_Script_c_walkdirect(global.cinstance[(argument0 - 1)].x, global.cinstance[(argument0 - 1)].y, argument1)
}
return;
