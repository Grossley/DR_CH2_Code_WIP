var _temp_local_var_2, _temp_local_var_3;
if (con > 0 && con < 50)
{
    if (con == 1)
    {
        global.interact = 1
        con = 1.1
        alarm[4] = 30
    }
    if (con == 1.1)
        global.interact = 1
    if (con == 2.1)
    {
        global.facing = 2
        k = gml_Script_scr_marker_ch1(obj_mainchara_ch1.x, obj_mainchara_ch1.y, 4207)
        var _temp_local_var_2 = k
        vspeed = -1
        image_speed = 0.1
    }
    if (con == 2.2)
    {
        obj_mainchara_ch1.y = k.y
        obj_mainchara_ch1.visible = true
        var _temp_local_var_3 = k
        instance_destroy()
    }
    if (con == 3)
    {
        global.fc = 0
        global.typer = 18
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_44_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_45_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_46_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_47_0")
        con = 4
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 4 && (!gml_Script_d_ex_ch1()))
    {
        image_speed = 0.25
        con = 5
        alarm[4] = 30
    }
    if (con == 6)
    {
        image_speed = 0.05
        image_index = 0
        con = 7
        alarm[4] = 10
    }
    if (con == 8)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_69_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 9
    }
    if (con == 9 && gml_Script_d_ex_ch1() == 0)
    {
        con = 10
        alarm[4] = 20
    }
    if (con == 11)
    {
        gml_Script_scr_halt_ch1()
        sprite_index = spr_asgorer_ch1
        con = 11.1
        alarm[4] = 20
    }
    if (con == 12.1)
    {
        sprite_index = spr_asgored_ch1
        con = 13
        alarm[4] = 20
    }
    if (con == 14)
    {
        global.fc = 10
        global.fe = 1
        global.msc = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_100_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 15
    }
    if (con == 15 && (!gml_Script_d_ex_ch1()))
    {
        exc = gml_Script_instance_create_ch1((x + 25), (y - 2), 1486)
        gml_Script_snd_play_ch1(431)
        con = 16
        alarm[4] = 30
    }
    if (con == 17)
    {
        global.fe = 4
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_116_0")
        con = 18
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 18 && gml_Script_d_ex_ch1() == 0)
    {
        sprite_index = spr_asgored_ch1
        image_speed = 0.334
        vspeed = 4
        con = 19
    }
    if (con == 19)
    {
        if (y >= (obj_mainchara_ch1.y - 26))
        {
            vspeed = 0
            y = (obj_mainchara_ch1.y - 26)
            obj_mainchara_ch1.visible = false
            image_index = 0
            image_speed = 0.25
            sprite_index = spr_asgore_hug_ch1
            con = 20
            alarm[4] = 68
        }
    }
    if (con == 21)
    {
        obj_mainchara_ch1.visible = true
        sprite_index = spr_asgored_ch1
        vspeed = -2
        image_speed = 0.2
        image_index = 0
        con = 21.1
        alarm[4] = 10
    }
    if (con == 22.1)
    {
        vspeed = 0
        image_index = 0
        image_speed = 0
        con = 22
        alarm[4] = 20
    }
    if (con == 23)
    {
        vspeed = 0
        image_index = 0
        image_speed = 0
        global.fe = 2
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_171_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_172_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 24
    }
    if (con == 24 && (!gml_Script_d_ex_ch1()))
    {
        sprite_index = spr_asgorer_ch1
        con = 25
        alarm[4] = 15
    }
    if (con == 26)
    {
        sprite_index = spr_asgoreu_ch1
        image_speed = 0.25
        vspeed = -3
        con = 27
    }
    if (con == 27)
    {
        if (y <= 27)
        {
            y = 27
            vspeed = 0
            image_speed = 0
            image_index = 0
            con = 28
            alarm[4] = 15
        }
    }
    if (con == 29)
    {
        sprite_index = spr_asgorer_ch1
        con = 30
        alarm[4] = 15
    }
    if (con == 31)
    {
        sprite_index = spr_asgored_ch1
        global.fe = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_216_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_217_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 32
    }
    if (con == 32 && (!gml_Script_d_ex_ch1()))
    {
        global.interact = 0
        visible = false
        asg = gml_Script_instance_create_ch1(x, (y + sprite_height), 1407)
        con = 50
        global.flag[262] = 1
    }
}
if (con >= 50)
{
    if (con == 50)
    {
        if (obj_mainchara_ch1.y >= 180 && global.interact == 0)
        {
            with (obj_npc_facing_ch1)
                instance_destroy()
            sprite_index = spr_asgored_ch1
            visible = true
            global.interact = 1
            obj_mainchara_ch1.y = 180
            con = 50.1
            alarm[4] = 30
            exc = gml_Script_instance_create_ch1((x + 25), (y - 2), 1486)
            gml_Script_snd_play_ch1(431)
        }
    }
    if (con == 51.1)
    {
        global.facing = 2
        global.typer = 18
        global.fc = 10
        global.fe = 2
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_260_0")
        con = 52
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 52 && (!gml_Script_d_ex_ch1()))
    {
        con = 53
        alarm[4] = 10
    }
    if (con == 54)
    {
        sprite_index = spr_asgored_ch1
        image_speed = 0.2
        vspeed = 2
        con = 55
    }
    if (con == 55)
    {
        if (y >= (obj_mainchara_ch1.y - 34))
        {
            vspeed = 0
            y = (obj_mainchara_ch1.y - 34)
            image_index = 0
            image_speed = 0
            con = 57
            alarm[4] = 20
        }
    }
    if (con == 58)
    {
        global.fe = 6
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_297_0")
        gml_Script_scr_noface_ch1(1)
        global.writersnd[0] = snd_item_ch1
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_300_0")
        global.flag[262] = 2
        gml_Script_scr_litemget_ch1(4)
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 59
    }
    if (con == 59 && (!gml_Script_d_ex_ch1()))
    {
        vspeed = -3
        image_speed = 0.25
        con = 60
    }
    if (con == 60 && y <= ystart)
    {
        y = ystart
        gml_Script_scr_halt_ch1()
        con = 61
        alarm[4] = 10
    }
    if (con == 62)
    {
        global.typer = 18
        global.fc = 10
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_flowershop_event_slash_Step_0_gml_327_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 63
    }
    if (con == 63 && (!gml_Script_d_ex_ch1()))
    {
        asg = gml_Script_instance_create_ch1(x, (y + sprite_height), 1407)
        global.interact = 0
        visible = false
        con = 70
    }
}
if instance_exists(obj_mainchara_ch1)
    global.flag[264] = obj_mainchara_ch1.x