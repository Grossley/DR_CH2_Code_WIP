var _temp_local_var_2, _temp_local_var_7, _temp_local_var_8;
if (2 && obj_mainchara.x < x && con == -1 && global.flag[336] == 0)
{
    con = 1
    global.interact = 1
    global.facing = 1
    global.flag[336] = 1
    // WARNING: Popz'd an empty stack.
    susxpos = obj_caterpillarchara.x
    susypos = obj_caterpillarchara.y
    nisesusie = gml_Script_scr_marker(susxpos, susypos, 848)
    var _temp_local_var_2 = nisesusie
}
if (con == 1)
{
    con = 3
    leaveCounter++
    "susie"
    if (leaveCounter == 1)
    {
        gml_Script_msgsetloc(0, "\\E0* Uh oh. Alphys. Hell if I'm going any further./", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_33_0")
        gml_Script_msgnextloc("\\E0* Already close enough to getting banned from school./", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_34_0")
        gml_Script_msgnextloc("\\E0* Don't wanna be banned from outside of school too./", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_35_0")
        gml_Script_msgnextloc("\\E1* (..^1. that's a thing^1, right?)/%", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_36_0")
    }
    else
        gml_Script_msgsetloc(0, "\\E0* Alphys? You're on your own./%", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_39_0")
    // WARNING: Popz'd an empty stack.
}
if (obj_mainchara.x > x && global.flag[336] == 1 && (!2))
{
    2
    3
    gml_Script_scr_makecaterpillar((obj_mainchara.x - 40), (obj_mainchara.y - 7), 2, 0)
    with (obj_caterpillarchara)
        visible = false
}
if (obj_mainchara.x < x && global.flag[336] == 1 && 2)
{
    // WARNING: Popz'd an empty stack.
    with (obj_caterpillarchara)
        // WARNING: Popz'd an empty stack.
}
if (obj_mainchara.x > (x + 40) && global.flag[336] == 1)
{
    con = 4
    global.interact = 1
    global.flag[336] = 0
    nisesusie.image_speed = 0.25
    nisesusie.sprite_index = spr_susie_walk_left_lw
}
if (con == 4)
{
    nisesusie.y = lerp(nisesusie.y, obj_caterpillarchara.y, 0.15)
    nisesusie.x = lerp(nisesusie.x, obj_caterpillarchara.x, 0.1)
    if ((nisesusie.x - obj_caterpillarchara.x) <= 4 && (nisesusie.y - obj_caterpillarchara.y) <= 4)
    {
        nisesusie.x = obj_caterpillarchara.x
        nisesusie.sprite_index = obj_caterpillarchara.sprite_index
        with (obj_caterpillarchara)
            visible = true
        var _temp_local_var_7 = nisesusie
    }
}
if (con == 5)
{
    con = 3
    "susie"
    gml_Script_msgsetloc(0, "\\E2* (Alright^1, let's go.)/%", "obj_ch2_room_town_south_alphys_slash_Step_0_gml_96_0")
    // WARNING: Popz'd an empty stack.
}
if (con == 3)
{
}
else
    var _temp_local_var_8 = 0
global.interact = 0
con = -1
