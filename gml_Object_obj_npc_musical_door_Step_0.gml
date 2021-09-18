var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5;
if (con == 1)
{
    con = 2
    global.interact = 1
    audio_sound_gain(global.currentsong[1], 0, 500)
    nise_kknpc = gml_Script_scr_dark_marker(355, 113, 1258)
    nise_kknpc.image_index = kknpc.image_index
    nise_kknpc.image_speed = kknpc.image_speed
    var _temp_local_var_1 = nise_kknpc
}
if (con == 2)
{
    fade_timer++
    if (fade_timer == 30)
    {
        "no_name"
        gml_Script_msgsetloc(0, "* (You were crushed under the weight of 400 bagels and defeated instantly...)/%", "obj_npc_musical_door_slash_Step_0_gml_30_0")
        // WARNING: Popz'd an empty stack.
        298
    }
    if (fade_timer >= 120)
    {
    }
    else
        var _temp_local_var_5 = 0
    con = 3
}
if (con == 3)
{
    con = 4
    alarm[0] = 90
}
if (con == 5)
{
    con = 6
    alarm[0] = 30
    gml_Script_instance_create(0, 0, obj_fadein)
    var _temp_local_var_2 = fadeout
}
if (con == 7)
{
}
else
    var _temp_local_var_4 = 0
con = 0
global.interact = 0
fade_timer = 0
var _temp_local_var_3 = nise_kknpc
