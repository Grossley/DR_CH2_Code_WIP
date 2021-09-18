var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3;
if (con == 1)
{
}
else
    var _temp_local_var_3 = 0
global.interact = 1
102
con++
if (con == 2)
{
}
else
    var _temp_local_var_2 = 0
gml_Script_scr_lerpvar_instance(id, "image_alpha", 1, 0, 30)
con++
if (con == 3)
{
    fade_timer++
    if (fade_timer >= 30)
        con = 4
}
if (con == 4)
{
}
else
    var _temp_local_var_1 = 0
con = 99
global.interact = 0
// WARNING: Popz'd an empty stack.
if (myinteract == 3)
{
    if (mydialoguer == 0)
    {
        global.interact = 0
        myinteract = 0
        with (obj_mainchara)
            onebuffer = 5
    }
}
