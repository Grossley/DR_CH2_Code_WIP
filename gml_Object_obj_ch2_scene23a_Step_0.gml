var _temp_local_var_6;
if (obj_mainchara.x > 240 && con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
}
if (con == 2)
{
    con = 3
    if (kr_actor.y > 780 || ra_actor.y > 780)
    {
        ra
        gml_Script_c_walkdirect((kr_actor.x + 70), (kr_actor.y - 50), 20)
        gml_Script_c_delayfacing(21, "l")
        kr
        gml_Script_c_walkdirect_wait(kr_actor.x, (kr_actor.y - 40), 20)
        "r"
    }
    else
    {
        ra
        gml_Script_c_walkdirect_wait((kr_actor.x + 70), (kr_actor.y - 10), 20)
        "l"
        kr
        "r"
    }
    "top"
    1061
    // WARNING: Popz'd an empty stack.
}
if (con == 10)
{
    con = 11
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 0, 1, 60)
    gml_Script_c_mus2("volume", 0, 60)
    60
    "free_all"
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 11 && (!895))
{
    global.flag[331] = 0
    210
}
if (con == 20)
{
    con = 21
    "top"
    1063
    // WARNING: Popz'd an empty stack.
}
if (con == 30)
{
}
else
    var _temp_local_var_6 = 0
con = 31
alarm[0] = 30
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
// WARNING: Popz'd an empty stack.
global.flag[319] = 2
global.flag[331] = 1
if (con == 32 && (!895))
{
    con = 99
    gml_Script_instance_create(0, 0, obj_ch2_scene24e)
    // WARNING: Popz'd an empty stack.
}
