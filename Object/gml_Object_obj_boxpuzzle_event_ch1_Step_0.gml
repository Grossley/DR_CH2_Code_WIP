var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_5, _temp_local_var_8, _temp_local_var_9, _temp_local_var_10, _temp_local_var_12, _temp_local_var_18, _temp_local_var_19, _temp_local_var_23, _temp_local_var_24, _temp_local_var_26, _temp_local_var_27, _temp_local_var_30;
if (con == 1)
{
    global.interact = 1
    sus = gml_Script_scr_dark_marker_ch1((obj_mainchara_ch1.x - 100), global.cinstance[1].y, 3544)
    ral = gml_Script_scr_dark_marker_ch1((obj_mainchara_ch1.x - 50), global.cinstance[0].y, 3570)
    k = gml_Script_scr_dark_marker_ch1(obj_mainchara_ch1.x, obj_mainchara_ch1.y, 4197)
    with (obj_caterpillarchara_ch1)
        instance_destroy()
    with (obj_mainchara_ch1)
        visible = false
    with (obj_marker_ch1)
    {
        hspeed = 4
        image_speed = 0.2
    }
    con = 2
    alarm[4] = 40
}
if (con == 2)
    global.interact = 1
if (con == 3)
{
    con = 4
    with (obj_marker_ch1)
        gml_Script_scr_halt_ch1()
    obj_mainchara_ch1.x = k.x
    obj_mainchara_ch1.visible = true
    var _temp_local_var_1 = k
    instance_destroy()
}
if (con == 5)
{
    global.typer = 31
    global.fc = 2
    global.fe = 8
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_39_0")
    gml_Script_scr_susface_ch1(1, 0)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_41_0")
    gml_Script_scr_ralface_ch1(3, 8)
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_43_0")
    con = 6
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 6 && gml_Script_d_ex_ch1() == 0)
{
    var _temp_local_var_3 = sus
    sprite_index = spr_susieu_dark_ch1
}
if (con == 12)
{
    global.facing = 2
    if (ral.y <= obj_npc_rudy)
    {
        var _temp_local_var_5 = ral
        gml_Script_scr_halt_ch1()
    }
}
if (con == 14)
{
    global.fc = 2
    global.fe = 3
    global.typer = 31
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_82_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_83_0")
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_84_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_85_0")
    gml_Script_scr_susface_ch1(4, 2)
    global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_87_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
    con = 5.5
}
if (con == 5.5 && gml_Script_d_ex_ch1() == 0)
{
    global.facing = 1
    var _temp_local_var_8 = sus
    sprite_index = spr_susier_dark_ch1
    hspeed = 12
    image_speed = 0.334
}
if (con == 6.5)
{
    if (sus.x >= obj_werewire_spare2)
    {
        sus.vspeed = -12
        sus.hspeed = 0
        sus.sprite_index = spr_susieu_dark_ch1
        con = 7.5
    }
}
if (con == 7.5)
{
    if (sus.y <= obj_npc_rudy)
    {
        var _temp_local_var_9 = sus
        gml_Script_scr_halt_ch1()
    }
}
if (con == 9.5)
{
    var _temp_local_var_10 = sus
    sprite_index = spr_susied_dark_ch1
}
if (con == 15 && gml_Script_d_ex_ch1() == 0)
{
    global.flag[212] = 1
    with (obj_pushableblock_ch1)
        event = 0
    sus2 = gml_Script_instance_create_ch1(sus.x, sus.y, 1407)
    ral2 = gml_Script_instance_create_ch1(ral.x, ral.y, 1407)
    var _temp_local_var_12 = sus
    instance_destroy()
}
if (leavecon == 1 && global.interact == 0)
{
    if (obj_mainchara_ch1.x < obj_unusedclassevent)
    {
        obj_mainchara_ch1.x = obj_unusedclassevent
        global.facing = 1
        global.interact = 1
        leavecon = 2
        global.typer = 30
        global.fc = 1
        global.fe = 7
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_170_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
}
if (leavecon == 2)
{
    if (gml_Script_d_ex_ch1() == 0)
    {
        leavecon = 1
        global.interact = 0
    }
}
if (con == 20)
{
    boxcount = 0
    tilecount = 0
    with (obj_pushableblock_ch1)
    {
        if (sprite_index == spr_npc_block_solved_ch1)
        {
            with (obj_boxpuzzle_event_ch1)
                boxcount += 1
        }
    }
    with (obj_blocktile_ch1)
    {
        if (sprite_index == spr_glowtile_on_ch1)
        {
            with (obj_boxpuzzle_event_ch1)
                tilecount += 1
        }
    }
    if (boxcount == 0 && global.interact == 0 && boxon == 2)
    {
        global.fc = 2
        global.fe = 1
        global.typer = 31
        global.interact = 1
        boxon = 3
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_207_0")
        gml_Script_scr_susface_ch1(1, 2)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_209_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (boxcount == 1 && global.interact == 0 && boxon == 0)
    {
        global.fc = 2
        global.fe = 6
        global.typer = 31
        global.interact = 1
        boxon = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_220_0")
        gml_Script_scr_susface_ch1(1, 2)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_222_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_223_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (boxcount >= 2 && global.interact == 0)
    {
        image_index = 1
        var _temp_local_var_18 = groundblock
        instance_destroy()
    }
    else if (tilecount == 2 && boxcount == 1 && global.interact == 0 && boxcon == 1)
    {
        global.interact = 1
        boxcon = 2
        global.fc = 2
        global.fe = 6
        global.typer = 31
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_248_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_249_0")
        gml_Script_scr_susface_ch1(2, 1)
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_251_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_252_0")
        gml_Script_scr_ralface_ch1(5, 1)
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_254_0")
        gml_Script_scr_susface_ch1(7, 2)
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_256_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
}
if (boxcon == 2)
{
    if (gml_Script_d_ex_ch1() == 0)
    {
        boxcon = 3
        global.interact = 0
    }
}
if (boxon == 1)
{
    if (gml_Script_d_ex_ch1() == 0)
    {
        boxon = 2
        global.interact = 0
    }
}
if (boxon == 3)
{
    if (gml_Script_d_ex_ch1() == 0)
    {
        boxon = 4
        global.interact = 0
    }
}
if (con == 26)
{
    global.typer = 31
    global.fc = 2
    global.fe = 0
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_295_0")
    gml_Script_scr_susface_ch1(1, 0)
    global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_297_0")
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_298_0")
    con = 27
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 27)
{
    if (gml_Script_d_ex_ch1() == 0)
    {
        global.facing = 2
        ral3 = gml_Script_scr_dark_marker_ch1(ral2.x, ral2.y, 3570)
        sus3 = gml_Script_scr_dark_marker_ch1(sus2.x, sus2.y, 3541)
        var _temp_local_var_19 = ral2
        instance_destroy()
    }
}
if (con == 28)
{
    global.interact = 1
    if ( <= ((sus3.x.room_width / 2) - 20) && gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_23 = sus3
        image_speed = 0.334
        vspeed = -8
        hspeed = 0
        sprite_index = spr_susieu_dark_ch1
    }
}
if (con == 30)
{
    var _temp_local_var_24 = ral3
    sprite_index = spr_ralseid_ch1
}
if (con == 31)
{
    if (gml_Script_d_ex_ch1() == 0)
    {
        var _temp_local_var_26 = ral3
        gml_Script_scr_depth_ch1()
        sprite_index = spr_ralseir_ch1
        hspeed = 6
        image_speed = 0.25
    }
}
if (con == 32)
{
    if (ral3 >= ((ral3.x.room_width / 2) - 20))
    {
        _temp_local_var_26 = ral3
        vspeed = -6
        hspeed = 0
        sprite_index = spr_ralseiu_ch1
    }
}
if (con == 34)
{
    with (obj_pushableblock_ch1)
        event = 1
    con = 35
    if (global.plot < 50)
        global.plot = 50
    global.facing = 0
    global.interact = 0
    leavecon = 0
    gml_Script_scr_tempsave_ch1()
}
if (con == 50)
{
    if (gml_Script_d_ex_ch1() == 0)
    {
        con = 51
        global.interact = 1
        fade = gml_Script_instance_create_ch1(0, 0, 1460)
        alarm[4] = 30
    }
}
if (con == 52)
{
    gml_Script_instance_create_ch1(290, 200, 1408)
    gml_Script_instance_create_ch1(460, 370, 1408)
    ral3 = gml_Script_scr_dark_marker_ch1(ral2.x, ral2.y, 3570)
    var _temp_local_var_27 = ral3
    gml_Script_scr_depth_ch1()
}
if (con == 54)
{
    image_index = 2
    var _temp_local_var_30 = groundblock
    instance_destroy()
}
if (con == 56)
{
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_boxpuzzle_event_slash_Step_0_gml_437_0")
    dl = gml_Script_instance_create_ch1(0, 0, 1326)
    dl.side = 1
    global.interact = 1
    con = 28
}