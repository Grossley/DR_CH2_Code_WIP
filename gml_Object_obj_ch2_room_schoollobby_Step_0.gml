var _temp_local_var_2;
if (con == 1)
{
    if (obj_mainchara.y >= 345 || obj_mainchara.x < 360 || obj_mainchara.x > 600)
    {
        con = 2
        global.interact = 1
        "no_name"
        gml_Script_msgsetloc(0, "* (That doesn't seem like the way to the old classroom.)/%", "obj_ch2_room_schoollobby_slash_Step_0_gml_9_0")
        // WARNING: Popz'd an empty stack.
    }
}
if (con == 2)
{
}
else
    var _temp_local_var_2 = 0
con = 1
if (obj_mainchara.y >= 345)
    obj_mainchara.y -= 6
if (obj_mainchara.x < 360)
    obj_mainchara.x += 6
if (obj_mainchara.x > 600)
    obj_mainchara.x -= 6
global.facing = 2
global.interact = 0
