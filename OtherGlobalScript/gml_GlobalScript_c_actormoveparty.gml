__mcactor = gml_Script_scr_findactor("kris")
if (__mcactor >= 0)
{
    gml_Script_c_sel(__mcactor)
    gml_Script_c_walkdirect(obj_mainchara.x, obj_mainchara.y, argument0)
}
for (__jj = 0; __jj < 2; __jj++)
{
    if gml_Script_i_ex(global.cinstance[__jj])
    {
        __mcactor = gml_Script_scr_findactor(global.cinstance[__jj].name)
        if (__mcactor >= 0)
        {
            gml_Script_c_sel(__mcactor)
            gml_Script_c_cmd("walkdirect", global.cinstance[__jj].x, global.cinstance[__jj].y, argument0, 0)
        }
    }
}
return;
