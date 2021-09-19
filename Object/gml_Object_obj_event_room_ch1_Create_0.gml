var _temp_local_var_1, _temp_local_var_3, _temp_local_var_5, _temp_local_var_12, _temp_local_var_14, _temp_local_var_15, _temp_local_var_19, _temp_local_var_31, _temp_local_var_33;
con = 0
timer = 0
entrance = global.entrance
rem_facing = -1
facing_timer = 0
if (room == room_field2_ch1 && global.plot >= 34)
    instance_destroy()
if (room == room_field2A_ch1 || room == room_field_puzzle1_ch1)
{
    if (room == room_field2A_ch1)
        candyflag = 101
    if (room == room_field_puzzle1_ch1)
        candyflag = 102
    siner = 0
    if (global.flag[candyflag] >= 2)
        instance_destroy()
    else
    {
        candytree = gml_Script_scr_dark_marker_ch1(obj_npc_room_ch1.x, obj_npc_room_ch1.y, 4069)
        var _temp_local_var_33 = candytree
        siner = 0
        gml_Script_scr_depth_ch1()
        depth -= 5
    }
}
if (room == room_torhouse_ch1)
{
    if (global.entrance == 0 ? (obj_mainchara_ch1.x.room_width / 2) : 0)
        instance_destroy()
    if (global.entrance == 1)
        instance_destroy()
    if (global.entrance == 2)
        instance_destroy()
    if (global.entrance == 24)
    {
        global.facing = 3
        rem_facing = 3
    }
    if (global.entrance == 4)
    {
        global.facing = 0
        rem_facing = 0
    }
    if (global.plot < 250)
        instance_destroy()
    else
    {
        if (global.flag[262] == 3)
            global.flag[262] = 4
        pie = gml_Script_scr_marker_ch1(274, 96, 3444)
        var _temp_local_var_31 = pie
        depth = 100000
    }
}
if (room == room_town_krisyard_ch1)
{
    if (global.plot < 250)
        instance_destroy()
    else if (global.entrance == 24)
    {
        global.facing = 0
        rem_facing = 0
    }
}
if (room == room_krishallway_ch1)
{
    global.facing = 0
    rem_facing = 0
}
if (room == room_cc_prison_prejoker_ch1)
{
    global.flag[31] = 0
    songplayed = 0
    m = 0
    maxm = 0
    if ((!gml_Script_snd_is_playing_ch1(global.currentsong[1])) && global.flag[241] < 6)
    {
        songplayed = 1
        global.currentsong[0] = gml_Script_snd_init_ch1("prejoker.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 0.85)
        gml_Script_mus_volume_ch1(global.currentsong[1], 0, 0)
    }
    doorimg = gml_Script_scr_dark_marker_ch1((x - 48), (y - 170), 3702)
    var _temp_local_var_5 = doorimg
    depth = 500000
}
if (null.room == room_cc_throneroom_ch1)
{
    if (global.plot >= 240)
    {
        block = gml_Script_instance_create_ch1(260, 740, 1656)
        block.image_xscale = 8
        with (obj_readable_room1_ch1)
            instance_destroy()
        th = gml_Script_scr_dark_marker_ch1(obj_npc_sign_ch1.x, obj_npc_sign_ch1.y, 3716)
        var _temp_local_var_12 = th
        gml_Script_scr_depth_ch1()
    }
}
if (null.room == room_forest_savepoint3_ch1)
{
    if (global.tempflag[9] == 1)
    {
        if (global.hp[1] < 1)
            global.hp[1] = 10
        if (global.hp[3] < 1)
            global.hp[3] = 10
        global.fighting = false
        global.interact = 1
        blackmarker = gml_Script_scr_dark_marker_ch1(-100, -100, 4277)
        var _temp_local_var_14 = blackmarker
        image_blend = c_black
        image_xscale = 600
        image_yscale = 600
        depth = 1000
    }
    else
        instance_destroy()
}
if (blackmarker.room == room_field_secret1_ch1)
{
    pcon = 0
    ptimer = 0
    puzzle = gml_Script_instance_create_ch1(1000, 100, 1542)
    var _temp_local_var_15 = puzzle
    max_suit = 4
    drawclue = 0
    sol[0] = 2
    sol[1] = 4
    sol[2] = 3
    sol[3] = 1
}
if (null.room == room_forest_beforeclover_ch1)
{
    pcon = 0
    ptimer = 0
    hinta = gml_Script_scr_dark_marker_ch1(320, 680, 3594)
    hintb = gml_Script_scr_dark_marker_ch1(840, 680, 3594)
    hintc = gml_Script_scr_dark_marker_ch1(1400, 680, 3594)
    var _temp_local_var_19 = hinta
    depth = 800000
}
if (null.room == room_forest_savepoint_relax_ch1)
{
    if (global.plot >= 85)
        instance_destroy()
    else
        con = 1
}
if (null.room == room_forest_maze_susie_ch1)
{
    global.flag[291] = 5
    if (global.plot >= 100)
        instance_destroy()
    else
    {
        image_speed = 0
        visible = true
        gml_Script_scr_depth_ch1()
        con = 1
        sprite_index = spr_susied_dark_unhappy_ch1
    }
}
talked = 0
timer = 0
