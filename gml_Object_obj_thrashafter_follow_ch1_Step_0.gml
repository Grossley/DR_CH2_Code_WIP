var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_7, _temp_local_var_15, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_19, _temp_local_var_21, _temp_local_var_24, _temp_local_var_26, _temp_local_var_27, _temp_local_var_28, _temp_local_var_29, _temp_local_var_30, _temp_local_var_31, _temp_local_var_33, _temp_local_var_35, _temp_local_var_36, _temp_local_var_38, _temp_local_var_39, _temp_local_var_42, _temp_local_var_43, _temp_local_var_47, _temp_local_var_52, _temp_local_var_54, _temp_local_var_56, _temp_local_var_59, _temp_local_var_77;
if (followcon == 1)
{
    if (obj_mainchara_ch1.x >= (x + 100))
    {
        sprite_index = spr_lancer_rt_ch1
        xval = 4
        if (obj_mainchara_ch1.px > 4)
            xval = obj_mainchara_ch1.px
        x += xval
        followbuffer = 10
    }
    if (obj_mainchara_ch1.x <= (x - 100))
    {
        sprite_index = spr_lancer_lt_ch1
        xval = -4
        if (obj_mainchara_ch1.px < -4)
            xval = obj_mainchara_ch1.px
        x += xval
        followbuffer = 10
    }
    if (followbuffer <= 0)
        sprite_index = spr_lancer_dt_ch1
}
followbuffer -= 1
if (con == 1)
{
    x = obj_mainchara_ch1.x
    con = 2
}
if (con == 2)
{
    if (room == room_forest_afterthrash2_ch1)
    {
        if (obj_mainchara_ch1.x >= 500 && global.interact == 0 && global.flag[229] < 3)
        {
            global.interact = 1
            global.facing = 2
            with (obj_caterpillarchara_ch1)
            {
                fun = true
                sprite_index = usprite
                image_index = 0
            }
            global.fc = 5
            global.fe = 3
            global.typer = 32
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_54_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_55_0")
            gml_Script_scr_ralface_ch1(2, 8)
            global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_57_0")
            gml_Script_scr_lanface_ch1(4, 7)
            global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_59_0")
            global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_60_0")
            gml_Script_scr_susface_ch1(7, 0)
            global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_62_0")
            global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_63_0")
            gml_Script_scr_lanface_ch1(10, 1)
            global.msg[11] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_65_0")
            con = 4
            gml_Script_instance_create_ch1(0, 0, 1326)
            global.flag[229] = 3
        }
        if (obj_mainchara_ch1.x >= 1400 && global.interact == 0 && global.flag[229] < 4)
        {
            global.interact = 1
            global.fc = 1
            global.fe = 0
            global.typer = 30
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_77_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_78_0")
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_79_0")
            gml_Script_scr_ralface_ch1(3, 6)
            global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_81_0")
            gml_Script_scr_susface_ch1(5, 0)
            global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_83_0")
            gml_Script_scr_ralface_ch1(7, 1)
            global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_85_0")
            gml_Script_scr_susface_ch1(9, 7)
            global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_87_0")
            con = 6
            gml_Script_instance_create_ch1(0, 0, 1326)
            global.flag[229] = 4
        }
        if (obj_mainchara_ch1.x >= 99999 && global.interact == 0 && global.flag[229] < 5)
        {
            global.interact = 1
            global.fc = 2
            global.fe = 8
            global.typer = 32
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_102_0")
            gml_Script_scr_susface_ch1(1, 0)
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_104_0")
            gml_Script_scr_ralface_ch1(3, 1)
            global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_106_0")
            gml_Script_scr_susface_ch1(5, 7)
            global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_108_0")
            con = 6
            gml_Script_instance_create_ch1(0, 0, 1326)
            global.flag[229] = 5
        }
    }
    if (room == room_forest_afterthrash3_ch1)
    {
        if (obj_mainchara_ch1.x >= 360 && global.interact == 0 && global.flag[229] < 6)
        {
            global.interact = 1
            global.facing = 1
            followcon = 0
            sprite_index = spr_lancer_rt_ch1
            global.fc = 5
            global.fe = 2
            global.typer = 32
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_129_0")
            gml_Script_scr_susface_ch1(1, 2)
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_131_0")
            con = 20
            gml_Script_instance_create_ch1(0, 0, 1326)
            global.flag[229] = 6
        }
        if (obj_mainchara_ch1.x >= 1200 && global.interact == 0 && global.flag[229] < 7)
        {
            global.interact = 1
            global.facing = 2
            with (obj_caterpillarchara_ch1)
            {
                fun = true
                sprite_index = usprite
                image_index = 0
            }
            global.fc = 1
            global.fe = 0
            global.typer = 30
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_151_0")
            gml_Script_scr_lanface_ch1(1, 3)
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_153_0")
            gml_Script_scr_susface_ch1(3, 6)
            global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_155_0")
            gml_Script_scr_lanface_ch1(5, 1)
            global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_157_0")
            con = 6
            speclaugh = 1
            gml_Script_instance_create_ch1(0, 0, 1326)
            global.flag[229] = 7
        }
    }
    if (room == room_forest_afterthrash4_ch1)
    {
        if (obj_mainchara_ch1.x >= 360 && global.interact == 0 && global.flag[229] < 8)
        {
            global.interact = 1
            global.facing = 2
            with (obj_caterpillarchara_ch1)
            {
                fun = true
                sprite_index = usprite
                image_index = 0
            }
            sprite_index = spr_lancer_dt_ch1
            global.fc = 5
            global.fe = 3
            global.typer = 32
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_187_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_188_0")
            gml_Script_scr_ralface_ch1(2, 8)
            global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_190_0")
            global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_191_0")
            global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_192_0")
            gml_Script_scr_lanface_ch1(6, 6)
            global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_194_0")
            global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_195_0")
            gml_Script_scr_ralface_ch1(9, 1)
            global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_197_0")
            gml_Script_scr_lanface_ch1(11, 4)
            global.msg[12] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_199_0")
            con = 4
            gml_Script_instance_create_ch1(0, 0, 1326)
            global.flag[229] = 8
        }
        if (obj_mainchara_ch1.x >= 800 && global.interact == 0 && global.flag[229] < 9)
        {
            global.interact = 1
            sprite_index = spr_lancer_dt_ch1
            global.fc = 1
            global.fe = 0
            global.typer = 30
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_213_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_214_0")
            gml_Script_scr_lanface_ch1(2, 2)
            global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_216_0")
            gml_Script_scr_susface_ch1(4, 2)
            global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_218_0")
            global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_219_0")
            gml_Script_scr_ralface_ch1(7, 6)
            global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_221_0")
            gml_Script_scr_susface_ch1(9, 2)
            global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_223_0")
            con = 4
            gml_Script_instance_create_ch1(0, 0, 1326)
            global.flag[229] = 9
        }
        if (obj_mainchara_ch1.x >= 1200 && global.interact == 0 && global.flag[229] < 10)
        {
            global.interact = 1
            global.fc = 1
            global.fe = 12
            global.typer = 30
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_236_0")
            con = 4
            gml_Script_instance_create_ch1(0, 0, 1326)
            global.flag[229] = 10
        }
    }
    if (room == room_forest_castleview_ch1)
    {
        if (obj_mainchara_ch1.x >= 720 && global.interact == 0 && global.flag[229] < 11)
        {
            global.interact = 1
            global.facing = 2
            with (obj_caterpillarchara_ch1)
            {
                fun = true
                sprite_index = usprite
                image_index = 0
            }
            con = 12
            global.typer = 31
            global.fc = 2
            global.fe = 8
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_265_0")
            gml_Script_scr_lanface_ch1(1, 2)
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_267_0")
            global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_268_0")
            global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_269_0")
            gml_Script_scr_susface_ch1(5, 0)
            global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_271_0")
            gml_Script_scr_ralface_ch1(7, 0)
            global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_273_0")
            global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_274_0")
            gml_Script_scr_susface_ch1(10, 0)
            global.msg[11] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_276_0")
            global.msg[12] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_277_0")
            gml_Script_scr_lanface_ch1(13, 6)
            global.msg[14] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_279_0")
            gml_Script_instance_create_ch1(0, 0, 1326)
            global.flag[229] = 11
        }
        if (obj_mainchara_ch1.x >= 1600 && global.interact == 0 && global.flag[229] < 12)
        {
            global.interact = 1
            global.facing = 2
            with (obj_caterpillarchara_ch1)
            {
                fun = true
                sprite_index = usprite
                image_index = 0
            }
            con = 100
            followcon = 0
            sprite_index = spr_lancer_rt_unhappy_ch1
            global.typer = 32
            global.fc = 5
            global.fe = 6
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_303_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_304_0")
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_305_0")
            global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_306_0")
            gml_Script_scr_susface_ch1(4, 0)
            global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_308_0")
            global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_309_0")
            global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_310_0")
            global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_311_0")
            gml_Script_scr_lanface_ch1(9, "C")
            global.msg[10] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_313_0")
            gml_Script_instance_create_ch1(0, 0, 1326)
            global.flag[229] = 12
        }
    }
}
if (con == 4 && (!gml_Script_d_ex_ch1()))
{
    global.facing = 1
    global.interact = 0
    con = 2
    followcon = 1
    with (obj_caterpillarchara_ch1)
    {
        fun = false
        sprite_index = rsprite
        image_index = 0
    }
}
if (con == 6 && (!gml_Script_d_ex_ch1()))
{
    with (obj_caterpillarchara_ch1)
    {
        if (dsprite == spr_susied_dark_ch1)
        {
            fun = true
            sprite_index = spr_susier_dark_laugh_ch1
            image_speed = 0.25
        }
    }
    followcon = 0
    sprite_index = spr_lancer_lt_laugh_ch1
    image_speed = 0.25
    ll = gml_Script_snd_play_ch1(454)
    sl = gml_Script_snd_play_ch1(382)
    gml_Script_snd_volume_ch1(ll, 0.8, 0)
    gml_Script_snd_volume_ch1(sl, 0.8, 0)
    con = 7
    alarm[4] = 50
}
if (con == 8)
{
    with (obj_caterpillarchara_ch1)
    {
        fun = false
        image_speed = 0
        sprite_index = rsprite
    }
    sprite_index = spr_lancer_dt_ch1
    followcon = 1
    image_speed = 0
    global.interact = 0
    con = 2
    if (speclaugh == 1)
    {
        con = 9
        global.interact = 1
        with (obj_caterpillarchara_ch1)
        {
            fun = false
            image_speed = 0
            sprite_index = usprite
        }
    }
}
if (con == 9)
{
    con = 4
    global.fe = 2
    global.fc = 1
    global.typer = 30
    global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_393_0")
    global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_394_0")
    gml_Script_scr_lanface_ch1(2, 2)
    global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_396_0")
    global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_397_0")
    gml_Script_scr_susface_ch1(5, 6)
    global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_399_0")
    global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_400_0")
    gml_Script_instance_create_ch1(0, 0, 1326)
}
if (con == 12)
{
    followcon = 0
    if (x <= (obj_mainchara_ch1.x + 100))
        x += 10
    else
        con = 4
    sprite_index = spr_lancer_ut_ch1
}
if (con >= 20 && con < 80)
{
    if (con == 20 && (!gml_Script_d_ex_ch1()))
    {
        depth = 800000
        pointx = (tree.x + 5)
        pointy = (tree.y + 100)
        gml_Script_scr_markify_caterpillar_ch1()
        s.pointx = pointx
        s.pointy = pointy
        susx = s.x
        susy = s.y
        hspeed = 10
        treecon = 1
        sprite_index = spr_lancer_rt_ch1
        var _temp_local_var_15 = s
        sprite_index = spr_susier_dark_ch1
        gml_Script_scr_move_to_point_over_time_ch1(pointx, (pointy - 10), 60)
        image_speed = 0.25
    }
    if (con == 21)
    {
        var _temp_local_var_16 = s
        gml_Script_scr_depth_ch1()
    }
    if (treecon == 1)
    {
        if (x >= (tree.x + 160))
        {
            hspeed = 0
            vspeed = 10
            sprite_index = spr_lancer_dt_ch1
            treecon = 2
        }
    }
    if (treecon == 2)
    {
        if (y >= pointy)
        {
            depth = 100000
            vspeed = 0
            hspeed = -10
            sprite_index = spr_lancer_lt_ch1
            treecon = 3
        }
    }
    if (treecon == 3)
    {
        if (x <= (pointx + 65))
        {
            x = (pointx + 55)
            gml_Script_scr_halt_ch1()
        }
    }
    if (con == 22)
    {
        sprite_index = spr_lancer_lt_ch1
        var _temp_local_var_17 = s
        gml_Script_scr_halt_ch1()
        sprite_index = spr_susieu_dark_jump_ch1
    }
    if (con == 24)
    {
        con = 25
        var _temp_local_var_18 = s
        y -= 3
        vspeed = -6
        gravity = 1
    }
    if (con == 25)
    {
        if (s.y >= (jsy - 6))
        {
            if (jumps < 2)
            {
                s.y = jsy
                vspeed = 0
                gravity = 0
                con = 24
                jumps += 1
            }
            else
            {
                con = 26
                alarm[4] = 20
                var _temp_local_var_77 = s
                gravity = 0
                vspeed = 0
            }
        }
    }
    if (con == 27)
    {
        var _temp_local_var_19 = s
        sprite_index = spr_susier_dark_ch1
    }
    if (con == 28 && (!gml_Script_d_ex_ch1()))
    {
        blender = 0
        gml_Script_snd_play_ch1(414)
        con = 29
        flash = gml_Script_scr_oflash_ch1()
        flash.flashspeed = 0
        fmax = 0
    }
    if (con == 29)
    {
        fmax += 0.2
        if instance_exists(flash)
            flash.siner = fmax
        if (fmax >= 5)
            con = 30
    }
    if (con == 30)
    {
        gml_Script_snd_play_ch1(455)
        wh = gml_Script_instance_create_ch1(0, 0, 1460)
        wh.image_blend = c_white
        con = 31
        alarm[4] = 30
    }
    if (con == 32)
    {
        sprite_index = spr_lancer_lt_stool_ch1
        var _temp_local_var_21 = wh
        instance_destroy()
    }
    if (con == 34)
    {
        global.fe = 3
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_608_0")
        gml_Script_scr_ralface_ch1(1, 1)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_610_0")
        gml_Script_scr_susface_ch1(3, 2)
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_612_0")
        con = 35
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 35 && (!gml_Script_d_ex_ch1()))
    {
        iy = (s.y - 40)
        var _temp_local_var_24 = s
        image_index = 1
        hspeed = 6
        y -= 6
        vspeed = -9
        gravity = 1
    }
    if (con == 36)
    {
        if (s.y >= iy && s.vspeed >= 0)
        {
            var _temp_local_var_26 = s
            vspeed = 0
            gravity = 0
            hspeed = 0
            image_index = 0
        }
    }
    if (con == 38)
    {
        iy = s.y
        var _temp_local_var_27 = s
        sprite_index = spr_susieu_dark_jump_ch1
        y -= 5
        vspeed = -11
        gravity = 1
    }
    if (con == 39)
    {
        if (s.vspeed >= 0)
        {
            var _temp_local_var_28 = tree
            image_index = 1
        }
        if (s.y >= (iy - 4))
        {
            var _temp_local_var_29 = s
            vspeed = 0
            gravity = 0
        }
    }
    if (con == 40.1)
    {
        var _temp_local_var_30 = s
        sprite_index = spr_susiel_dark_ch1
        image_index = 1
        hspeed = -4
        y -= 6
        vspeed = -6
        gravity = 1
    }
    if (con == 41)
    {
        if (s.y >= (jsy - 8))
        {
            s.y = jsy
            sprite_index = spr_lancer_lt_ch1
            var _temp_local_var_31 = s
            image_index = 0
            hspeed = 0
            gravity = 0
            vspeed = 0
        }
    }
    if (con == 42)
    {
        con = 43
        alarm[4] = 15
    }
    if (con == 44)
    {
        global.fc = 1
        global.fe = 2
        global.typer = 30
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_723_0")
        gml_Script_scr_lanface_ch1(1, 3)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_725_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 45
    }
    if (con == 45 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_33 = s
        sprite_index = spr_susier_dark_unhappy_ch1
    }
    if (con == 47)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_742_0")
        gml_Script_scr_lanface_ch1(1, 6)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_744_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_745_0")
        gml_Script_scr_susface_ch1(4, 0)
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_747_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 48
    }
    if (con == 48 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_35 = s
        hspeed = 4
    }
    if (con == 50)
    {
        var _temp_local_var_36 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 52)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_771_0")
        gml_Script_scr_lanface_ch1(1, 3)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_773_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_774_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 53
    }
    if (con == 53 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_38 = s
        hspeed = -4
        image_speed = 0.25
        sprite_index = spr_susiel_dark_unhappy_ch1
    }
    if (con == 55)
    {
        var _temp_local_var_39 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 57)
    {
        global.typer = 30
        global.fc = 1
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_803_0")
        gml_Script_scr_lanface_ch1(1, 1)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_805_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 58
    }
    if (con == 59 && (!gml_Script_d_ex_ch1()))
    {
        candysong[0] = gml_Script_snd_init_ch1("fanfare.ogg")
        candysong[1] = gml_Script_mus_play_ch1(candysong[0])
        global.fc = 0
        global.typer = 52
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_817_0")
        d = gml_Script_instance_create_ch1(0, 0, 1326)
        d.skippable = false
        con = 60
        alarm[4] = 30
    }
    if (con == 58)
    {
        gml_Script_snd_pause_ch1(global.currentsong[1])
        con = 59
    }
    if (con == 61)
    {
        gml_Script_snd_free_ch1(candysong[0])
        gml_Script_snd_resume_ch1(global.currentsong[1])
        with (obj_dialoguer_ch1)
            instance_destroy()
        with (obj_writer_ch1)
            instance_destroy()
        global.typer = 30
        global.fe = 7
        global.fc = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_839_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 65
    }
    if (con == 65 && (!gml_Script_d_ex_ch1()))
    {
        s.susx = susx
        s.susy = susy
        var _temp_local_var_42 = s
        sprite_index = spr_susiel_dark_ch1
        gml_Script_scr_move_to_point_over_time_ch1(susx, susy, 40)
        image_speed = 0.25
    }
    if (con == 67)
    {
        global.facing = 1
        var _temp_local_var_43 = s
        instance_destroy()
    }
    if (treecon == 10)
    {
        sprite_index = spr_lancer_rt_ch1
        hspeed = 8
        treecon = 11
    }
    if (treecon == 11)
    {
        if (x >= (tree.x + 160))
        {
            sprite_index = spr_lancer_dt_ch1
            hspeed = 0
            vspeed = -8
            treecon = 12
        }
    }
    if (treecon == 12)
    {
        if (y <= (ystart + 10))
        {
            depth = (tree.depth + 1000)
            vspeed = 0
            y = ystart
            treecon = 13
        }
    }
}
if (con >= 100 && con <= 150)
{
    if (con == 100 && (!gml_Script_d_ex_ch1()))
    {
        global.facing = 1
        gml_Script_scr_caterpillar_facing_ch1(global.facing)
        gml_Script_scr_markify_caterpillar_ch1()
        var _temp_local_var_47 = s
        sprite_index = spr_susier_dark_ch1
    }
    if (con == 101 && x >= (obj_mainchara_ch1.x + 40))
    {
        hspeed = 0
        global.typer = 32
        global.fc = 5
        global.fe = 6
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_932_0")
        gml_Script_scr_susface_ch1(1, 2)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_934_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_935_0")
        gml_Script_scr_lanface_ch1(4, "C")
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_937_0")
        gml_Script_scr_susface_ch1(6, 0)
        global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_939_0")
        gml_Script_scr_lanface_ch1(8, 5)
        global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_941_0")
        con = 102
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 102 && (!gml_Script_d_ex_ch1()))
    {
        hspeed = 4
        con = 103
        alarm[4] = 10
    }
    if (con == 104)
    {
        gml_Script_scr_halt_ch1()
        con = 105
        alarm[4] = 30
    }
    if (con == 106)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_962_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_963_0")
        gml_Script_scr_susface_ch1(2, 0)
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_965_0")
        con = 107
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 107 && (!gml_Script_d_ex_ch1()))
    {
        hspeed = 4
        con = 108
        alarm[4] = 10
    }
    if (con == 109)
    {
        hspeed = 0
        con = 110
        alarm[4] = 60
    }
    if (con == 111)
    {
        var _temp_local_var_52 = s
        sprite_index = spr_susier_dark_unhappy_ch1
    }
    if (con == 112 && (!gml_Script_d_ex_ch1()))
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("creepychase.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ch1(global.currentsong[0])
        hspeed = 18
        con = 113
        alarm[4] = 30
        exc = gml_Script_instance_create_ch1((s.x + 20), (s.y - 20), 1486)
    }
    if (con == 114)
    {
        var _temp_local_var_54 = exc
        instance_destroy()
    }
    if (con == 115 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_56 = s
        gml_Script_scr_depth_ch1()
        hspeed = 12
        image_speed = 0.25
    }
    if (con == 117 && (!gml_Script_d_ex_ch1()))
    {
        global.typer = 31
        global.fc = 2
        global.fe = 3
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_thrashafter_follow_slash_Step_0_gml_1038_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 118
    }
    if (con == 118 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_59 = r
        gml_Script_scr_depth_ch1()
        hspeed = 12
        image_speed = 0.25
    }
    if (con == 120)
    {
        global.interact = 0
        gml_Script_scr_losechar_ch1()
        global.facing = 0
        con = 121
        with (obj_mainchara_ch1)
            cutscene = true
        block = gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) - 40), 200, 1656)
        block.image_yscale = 20
    }
}
