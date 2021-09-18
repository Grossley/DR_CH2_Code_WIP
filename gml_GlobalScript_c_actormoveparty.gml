__mcactor = "kris"
if (__mcactor >= 0)
{
    __mcactor
    gml_Script_c_walkdirect(obj_mainchara.x, obj_mainchara.y, argument0)
}
for (__jj = 0; __jj < 2; __jj++)
{
    if global.cinstance[__jj]
    {
        __mcactor = global.cinstance[__jj].name
        if (__mcactor >= 0)
        {
            __mcactor
            gml_Script_c_cmd("walkdirect", global.cinstance[__jj].x, global.cinstance[__jj].y, argument0, 0)
        }
    }
}
return;
