var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_5, _temp_local_var_9, _temp_local_var_10, _temp_local_var_12, _temp_local_var_13, _temp_local_var_15, _temp_local_var_17, _temp_local_var_26, _temp_local_var_28, _temp_local_var_30, _temp_local_var_31, _temp_local_var_33, _temp_local_var_35;
if (room == room_cc_rurus1_ch1)
{
    if (con == 0 && global.interact == 0)
    {
        cinstancecheck = 0
        if (instance_exists(global.cinstance[0]) && instance_exists(global.cinstance[1]))
        {
            if (global.cinstance[0].x >= 125 && global.cinstance[1].x >= 125)
                cinstancecheck = 1
        }
        if (obj_mainchara_ch1.x >= 125 && cinstancecheck == 1)
        {
            var _temp_local_var_5 = flashobj
            instance_destroy()
        }
    }
    if (con == 2)
    {
        darkfade = gml_Script_scr_marker_ch1(-10, -10, 4277)
        darkfade.image_xscale = 700
        darkfade.image_yscale = 400
        darkfade.image_alpha = 0
        darkfade.depth = 800000
        darkfade.image_blend = c_black
        fade = 0
        con = 3
    }
    if (con == 3)
    {
        fade += 0.01
        darkfade.image_alpha = fade
        if (fade >= 0.6)
        {
            con = 4
            alarm[4] = 20
        }
    }
    if (con == 5)
    {
        global.facing = 2
        with (obj_caterpillarchara_ch1)
        {
            fun = true
            sprite_index = usprite
        }
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_58_0")
        global.typer = 42
        gml_Script_instance_create_ch1(120, 50, 1327)
        con = 6
    }
    if (con == 6 && (!instance_exists(obj_writer_ch1)))
    {
        global.fc = 2
        global.fe = 3
        global.typer = 31
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_71_0")
        con = 7
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 7 && (!gml_Script_d_ex_ch1()))
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_78_0")
        global.typer = 42
        gml_Script_instance_create_ch1(200, 50, 1327)
        con = 8
    }
    if (con == 8 && (!instance_exists(obj_writer_ch1)))
    {
        gml_Script_snd_play_ch1(360)
        appear = gml_Script_instance_create_ch1(x, y, 1370)
        visible = false
        con = 14
        alarm[4] = 60
    }
    if (con == 15)
    {
        visible = true
        var _temp_local_var_9 = appear
        instance_destroy()
    }
    if (con == 16)
    {
        var _temp_local_var_10 = darkfade
        image_alpha -= 0.03
        if (image_alpha <= 0)
            image_alpha = 0
    }
    if (con == 17)
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("ruruskaado.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ch1(global.currentsong[0])
        global.fc = 18
        global.fe = 0
        global.typer = 6
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_121_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_122_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_123_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_124_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 1
        con = 18
    }
    if (con == 18 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(430)
        fade = 0
        con = 19
        var _temp_local_var_12 = darkfade
        image_blend = c_white
        depth = -200
    }
    if (con == 19)
    {
        fade += 0.1
        darkfade.image_alpha = fade
        if (darkfade.image_alpha >= 1)
        {
            con = 20
            block = gml_Script_instance_create_ch1(320, 240, 1544)
            block.event = 0
            tile = gml_Script_instance_create_ch1(280, 240, 1546)
        }
    }
    if (con == 20)
    {
        fade -= 0.1
        darkfade.image_alpha = fade
        if (fade <= 0)
        {
            var _temp_local_var_13 = darkfade
            instance_destroy()
        }
    }
    if (con == 21 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_15 = floorwall
        instance_destroy()
    }
    if (con == 25)
    {
        if (block.sprite_index == spr_npc_block_solved_ch1 && global.interact == 0)
        {
            gml_Script_snd_free_all_ch1()
            global.interact = 1
            gml_Script_snd_play_ch1(374)
            var _temp_local_var_17 = spikewall1
            instance_destroy()
        }
    }
    if (con == 27)
    {
        global.fc = 18
        global.fe = 1
        global.typer = 42
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_208_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_209_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_210_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 1
        con = 28
    }
    if (con == 28 && (!gml_Script_d_ex_ch1()))
    {
        vspeed = -8
        con = 29
    }
    if (con == 29 && (!gml_Script_d_ex_ch1()))
    {
        global.interact = 0
        global.facing = 0
        global.flag[217] = 1
        gml_Script_scr_tempsave_ch1()
        con = 30
    }
}
if (null.room == room_cc_rurus2_ch1)
{
    if (con == 0 && global.interact == 0)
    {
        cinstancecheck = 0
        if (instance_exists(global.cinstance[0]) && instance_exists(global.cinstance[1]))
        {
            if (global.cinstance[0].x >= 125 && global.cinstance[1].x >= 125)
                cinstancecheck = 1
        }
        if (obj_mainchara_ch1.x >= 125 && cinstancecheck == 1)
        {
            var _temp_local_var_26 = flashobj
            instance_destroy()
        }
    }
    if (con == 8 && (!instance_exists(obj_writer_ch1)))
    {
        gml_Script_snd_play_ch1(360)
        appear = gml_Script_instance_create_ch1(x, y, 1370)
        visible = false
        con = 14
        alarm[4] = 60
    }
    if (con == 15)
    {
        visible = true
        var _temp_local_var_28 = appear
        instance_destroy()
    }
    if (con == 17)
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("ruruskaado.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ch1(global.currentsong[0])
        gml_Script_snd_pitch_ch1(global.currentsong[1], 1.1)
        global.fc = 18
        global.fe = 0
        global.typer = 6
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_295_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_296_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_297_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_298_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 1
        con = 18
    }
    if (con == 18 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(430)
        fade = 0
        con = 19
        darkfade = gml_Script_scr_marker_ch1(-10, -10, 4277)
        darkfade.image_xscale = 700
        darkfade.image_yscale = 400
        var _temp_local_var_30 = darkfade
        image_blend = c_white
        depth = -200
    }
    if (con == 19)
    {
        fade += 0.1
        darkfade.image_alpha = fade
        if (darkfade.image_alpha >= 1)
        {
            con = 20
            block = gml_Script_instance_create_ch1(340, 240, 1544)
            block.event = 0
            tile = gml_Script_instance_create_ch1(260, 240, 1546)
        }
    }
    if (con == 20)
    {
        fade -= 0.1
        darkfade.image_alpha = fade
        if (fade <= 0)
        {
            var _temp_local_var_31 = darkfade
            instance_destroy()
        }
    }
    if (con == 21 && (!gml_Script_d_ex_ch1()))
    {
        interactable = gml_Script_instance_create_ch1(280, 160, 1405)
        interactable.image_xscale = 4
        interactable.image_yscale = 2
        var _temp_local_var_33 = floorwall
        instance_destroy()
    }
    if (con == 25)
    {
        if (block.sprite_index == spr_npc_block_solved_ch1 && global.interact == 0)
        {
            gml_Script_snd_free_all_ch1()
            global.interact = 1
            gml_Script_snd_play_ch1(374)
            var _temp_local_var_35 = interactable
            instance_destroy()
        }
    }
    if (con == 27)
    {
        global.fc = 18
        global.fe = 1
        global.typer = 6
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_385_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_386_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_387_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_388_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_389_0")
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_390_0")
        gml_Script_scr_ralface_ch1(6, 1)
        global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_392_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 1
        con = 28
    }
    if (con == 28 && (!gml_Script_d_ex_ch1()))
    {
        global.fc = 18
        global.fe = 1
        global.typer = 6
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_rurus_event_slash_Step_0_gml_404_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.side = 1
        hspeed = 12
        con = 29
    }
    if (con == 29 && (!gml_Script_d_ex_ch1()))
    {
        global.interact = 0
        global.facing = 0
        global.flag[218] = 1
        gml_Script_scr_tempsave_ch1()
        con = 30
    }
}
