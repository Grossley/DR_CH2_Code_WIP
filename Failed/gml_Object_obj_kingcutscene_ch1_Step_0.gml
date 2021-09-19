var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_10, _temp_local_var_11, _temp_local_var_12, _temp_local_var_13, _temp_local_var_14, _temp_local_var_15, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_19, _temp_local_var_20, _temp_local_var_21, _temp_local_var_22, _temp_local_var_23, _temp_local_var_24, _temp_local_var_25, _temp_local_var_26, _temp_local_var_27, _temp_local_var_28, _temp_local_var_29, _temp_local_var_30, _temp_local_var_31, _temp_local_var_32, _temp_local_var_33, _temp_local_var_34, _temp_local_var_35, _temp_local_var_36, _temp_local_var_37, _temp_local_var_38, _temp_local_var_39, _temp_local_var_40, _temp_local_var_44, _temp_local_var_45, _temp_local_var_48, _temp_local_var_51, _temp_local_var_52, _temp_local_var_54, _temp_local_var_55, _temp_local_var_56, _temp_local_var_57, _temp_local_var_59, _temp_local_var_60, _temp_local_var_61, _temp_local_var_63, _temp_local_var_64, _temp_local_var_65, _temp_local_var_66, _temp_local_var_67, _temp_local_var_68, _temp_local_var_69, _temp_local_var_71, _temp_local_var_77, _temp_local_var_81, _temp_local_var_82, _temp_local_var_84, _temp_local_var_85, _temp_local_var_86, _temp_local_var_87, _temp_local_var_90, _temp_local_var_99, _temp_local_var_100, _temp_local_var_104, _temp_local_var_108, _temp_local_var_110, _temp_local_var_111, _temp_local_var_114, _temp_local_var_115, _temp_local_var_117, _temp_local_var_118, _temp_local_var_121, _temp_local_var_125, _temp_local_var_127, _temp_local_var_128, _temp_local_var_129, _temp_local_var_130, _temp_local_var_132, _temp_local_var_135, _temp_local_var_137, _temp_local_var_139, _temp_local_var_140, _temp_local_var_142, _temp_local_var_143, _temp_local_var_145, _temp_local_var_146, _temp_local_var_147, _temp_local_var_148, _temp_local_var_149, _temp_local_var_151, _temp_local_var_152, _temp_local_var_155, _temp_local_var_157, _temp_local_var_159, _temp_local_var_162, _temp_local_var_164, _temp_local_var_165, _temp_local_var_166, _temp_local_var_167, _temp_local_var_168, _temp_local_var_170, _temp_local_var_172, _temp_local_var_173, _temp_local_var_174, _temp_local_var_175, _temp_local_var_176, _temp_local_var_177, _temp_local_var_178, _temp_local_var_179, _temp_local_var_181, _temp_local_var_182, _temp_local_var_183, _temp_local_var_184, _temp_local_var_185, _temp_local_var_186, _temp_local_var_188, _temp_local_var_190, _temp_local_var_192, _temp_local_var_193, _temp_local_var_194, _temp_local_var_195, _temp_local_var_196, _temp_local_var_197, _temp_local_var_199, _temp_local_var_200, _temp_local_var_201, _temp_local_var_202, _temp_local_var_203, _temp_local_var_204, _temp_local_var_206, _temp_local_var_207, _temp_local_var_208, _temp_local_var_209, _temp_local_var_212, _temp_local_var_213, _temp_local_var_214, _temp_local_var_215, _temp_local_var_216, _temp_local_var_217, _temp_local_var_218, _temp_local_var_221, _temp_local_var_223, _temp_local_var_225, _temp_local_var_227, _temp_local_var_230, _temp_local_var_233, _temp_local_var_235, _temp_local_var_237, _temp_local_var_238, _temp_local_var_242, _temp_local_var_244, _temp_local_var_246, _temp_local_var_248, _temp_local_var_250, _temp_local_var_253, _temp_local_var_255, _temp_local_var_259, _temp_local_var_264, _temp_local_var_266, _temp_local_var_268, _temp_local_var_269, _temp_local_var_272, _temp_local_var_278, _temp_local_var_281, _temp_local_var_284, _temp_local_var_285, _temp_local_var_288, _temp_local_var_289, _temp_local_var_290, _temp_local_var_292, _temp_local_var_293, _temp_local_var_294, _temp_local_var_297, _temp_local_var_303, _temp_local_var_305, _temp_local_var_310, _temp_local_var_312, _temp_local_var_314, _temp_local_var_317, _temp_local_var_321, _temp_local_var_325, _temp_local_var_327, _temp_local_var_328, _temp_local_var_330, _temp_local_var_333, _temp_local_var_336, _temp_local_var_339, _temp_local_var_341, _temp_local_var_346, _temp_local_var_348, _temp_local_var_352, _temp_local_var_354, _temp_local_var_357, _temp_local_var_359, _temp_local_var_361, _temp_local_var_363, _temp_local_var_365, _temp_local_var_367, _temp_local_var_370, _temp_local_var_371, _temp_local_var_373, _temp_local_var_377, _temp_local_var_381, _temp_local_var_384, _temp_local_var_386, _temp_local_var_388, _temp_local_var_392, _temp_local_var_393, _temp_local_var_446;
if (con < 76)
{
    if (con == 0)
    {
        with (obj_npc_facing_ch1)
            instance_destroy()
        with (obj_npc_room_ch1)
            instance_destroy()
        gml_Script_snd_free_all_ch1()
        global.currentsong[0] = gml_Script_snd_init_ch1("wind.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.5, 0.7)
        part = 1
        with (obj_mainchara_ch1)
        {
            visible = false
            cutscene = true
        }
        with (obj_caterpillarchara_ch1)
            visible = false
        con = 1
        k = gml_Script_scr_dark_marker_ch1(-20, 200, 4197)
        s = gml_Script_scr_dark_marker_ch1(-75, 180, 3544)
        r = gml_Script_scr_dark_marker_ch1(-130, 190, 3570)
        with (obj_marker_ch1)
        {
            hspeed = 4
            image_speed = 0.25
        }
        alarm[4] = 50
        if (global.tempflag[8] == 1)
        {
            with (obj_marker_ch1)
            {
                hspeed = 8
                image_speed = 0.25
            }
            alarm[4] = 25
        }
        l = gml_Script_scr_dark_marker_ch1(512, 194, 3578)
    }
    if (con == 1)
        global.interact = 1
    if (con == 2)
    {
        with (obj_marker_ch1)
            gml_Script_scr_halt_ch1()
        con = 3
        alarm[4] = 15
        if (global.tempflag[8] == 1)
            alarm[4] = 2
    }
    if (con == 4)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 2
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_72_0")
        if (global.tempflag[8] == 0)
            gml_Script_instance_create_ch1(0, 0, 1326)
        con = 5
    }
    if (con == 5 && (!gml_Script_d_ex_ch1()))
    {
        king = gml_Script_scr_dark_marker_ch1((820 + global.xoff), 120, 4131)
        var _temp_local_var_2 = l
        hspeed = 5
    }
    if (con == 6.1)
    {
        var _temp_local_var_4 = l
        hspeed = 0
    }
    if (con == 7)
    {
        var _temp_local_var_5 = l
        hspeed = 0
    }
    if (con == 8 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_7 = king
        sprite_index = spr_kingl_shadow_ch1
        gml_Script_snd_play_ch1(378)
        gml_Script_instance_create_ch1(0, 0, 1464)
        gml_Script_scr_shakeobj_ch1()
    }
    if (con == 9 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_9 = king
        sprite_index = spr_kingl_shadow_ch1
    }
    if (con == 11)
    {
        global.typer = 30
        global.fc = 1
        global.fe = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_175_0")
        gml_Script_scr_ralface_ch1(1, 0)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_177_0")
        if (global.tempflag[8] == 0)
            gml_Script_instance_create_ch1(0, 0, 1326)
        con = 12
    }
    if (con == 12 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_15 = l
        sprite_index = spr_lancer_rt_ch1
    }
    if (con == 13 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_17 = king
        hspeed = -2
        image_speed = 0.1
    }
    if (con == 15)
    {
        var _temp_local_var_18 = l
        visible = false
    }
    if (con == 17)
    {
        var _temp_local_var_20 = s
        sprite_index = spr_susier_dark_unhappy_ch1
    }
    if (con == 17.1 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_23 = king
        image_index = 3
        image_speed = 0.1
    }
    if ((con >= 17.3 && con < 19) || (con == 19 && gml_Script_d_ex_ch1()))
    {
        if (king.image_index > 4.9)
        {
            king.image_speed = 0
            king.image_index = 5
        }
    }
    if (con == 18.3 && (!gml_Script_d_ex_ch1()))
    {
        global.typer = 36
        global.fc = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_251_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_252_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_253_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_254_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_255_0")
        gml_Script_scr_lanface_ch1(5, "A")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_257_0")
        con = 19
        if (global.tempflag[8] == 0)
            gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 19 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_free_all_ch1()
        gml_Script_snd_play_ch1(377)
        var _temp_local_var_28 = s
        sprite_index = spr_susie_shock_r_ch1
    }
    if (con == 20)
    {
        var _temp_local_var_31 = king
        if (image_index > 5)
            image_index = 6
    }
    if (con == 21)
    {
        var _temp_local_var_32 = king
        if (image_index > 6)
        {
            image_speed = 0
            image_index = 7
        }
    }
    if (con == 23)
    {
        var _temp_local_var_33 = king
        image_speed = 0
        image_index = 7
    }
    if (con == 24 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(407)
        var _temp_local_var_35 = r
        sprite_index = spr_ralseir_ch1
    }
    if (con == 26)
    {
        var _temp_local_var_37 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 28)
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("GALLERY.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.8, 1)
        global.fc = 1
        global.fe = 0
        global.typer = 30
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_316_0")
        gml_Script_scr_noface_ch1(1)
        gml_Script_scr_kingface_ch1(2, 0)
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_319_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_320_0")
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_321_0")
        if (global.tempflag[8] == 0)
            gml_Script_instance_create_ch1(0, 0, 1326)
        con = 30
    }
    if (con == 30 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(381)
        var _temp_local_var_39 = king
        image_speed = 0.25
    }
    if (con == 32)
    {
        var _temp_local_var_40 = king
        image_index = 9
        image_speed = 0
    }
    if (con == 34)
    {
        global.fc = 0
        global.typer = 36
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_348_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_349_0")
        global.msg[2] = "%"
        con = 34.1
        if (global.tempflag[8] == 0)
            gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 34.1 && (!gml_Script_d_ex_ch1()))
    {
        alarm[4] = 10
        con = 34.2
    }
    if (con == 35.2)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_363_0")
        global.msg[2] = "%"
        con = 35.3
        if (global.tempflag[8] == 0)
            gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 35.3 && (!gml_Script_d_ex_ch1()))
    {
        con = 36
        alarm[4] = 30
        if (global.tempflag[8] == 1)
            alarm[4] = 2
    }
    if (con == 37 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_44 = s
        sprite_index = spr_susier_dark_unhappy_ch1
        image_speed = 0.2
        hspeed = -2
    }
    if (con == 39)
    {
        var _temp_local_var_45 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 40.1)
    {
        global.fe = 12
        global.fc = 5
        global.typer = 32
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_396_0")
        global.msg[1] = "%"
        con = 41
        if (global.tempflag[8] == 0)
            gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 41 && (!gml_Script_d_ex_ch1()))
    {
        con = 40.2
        alarm[4] = 30
        if (global.tempflag[8] == 1)
            alarm[4] = 2
    }
    if (con == 41.2 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_48 = r
        sprite_index = spr_ralseir_kneel_ch1
    }
    if (con == 43)
    {
        var _temp_local_var_51 = king
        hspeed = -1
    }
    if (con == 45)
    {
        var _temp_local_var_52 = king
        hspeed = 0
    }
    if (con == 47)
    {
        global.typer = 36
        global.fc = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_437_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            gml_Script_instance_create_ch1(0, 0, 1326)
        con = 48
    }
    if (con == 48 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(363)
        c[0] = k
        c[1] = s
        c[2] = r
        for (i = 0; i < 3; i += 1)
        {
            spadechunk[i] = gml_Script_scr_marker_ch1((c[i].x + 100), (c[i].y + 50), 4142)
            spadechunk[i].image_angle = 180
            spadechunk[i].image_alpha = 0
            spadechunk[i].hspeed = 2
            spadechunk[i].friction = 0.1
        }
        con = 49
    }
    if (con == 49)
    {
        for (i = 0; i < 3; i += 1)
        {
            _temp_local_var_52.image_alpha = (spadechunk[i].image_alpha + 0.1)
            var _temp_local_var_54 = king
            var _temp_local_var_55 = 
            var _temp_local_var_56 = -9
            var _temp_local_var_57 = spadechunk[i]
            if (spadechunk[i].image_alpha >= 3)
                con = 50
        }
    }
    if (con == 50)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_471_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            gml_Script_instance_create_ch1(0, 0, 1326)
        con = 51
    }
    if (con == 51 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(362)
        var _temp_local_var_59 = king
        image_speed = 0.25
        image_index = 10
    }
    if (con == 53)
    {
        var _temp_local_var_60 = king
        image_speed = 0
        image_index = 13
    }
    if (con == 54)
    {
        if (lspade.x <= (king.x + 70))
        {
            gml_Script_snd_play_ch1(434)
            gml_Script_snd_play_ch1(402)
            var _temp_local_var_61 = lspade
            instance_destroy()
        }
    }
    if (con == 55)
    {
        i = 0
        while (i < 3)
        {
            _temp_local_var_63.image_alpha = (spadechunk[i].image_alpha - 0.18)
            i += 1
            var _temp_local_var_64 = 
            var _temp_local_var_65 = lspade
            var _temp_local_var_66 = -9
            var _temp_local_var_67 = spadechunk[i]
        }
    }
    if (con == 56)
    {
        i = 0
        while (i < 3)
        {
            var _temp_local_var_68 = spadechunk[i]
            instance_destroy()
        }
        var _temp_local_var_69 = l
        speed = 0
    }
    if (con == 57 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_71 = l
        hspeed = -16
        gml_Script_scr_depth_ch1()
    }
    if (con == 59 && (!gml_Script_d_ex_ch1()))
    {
        global.fc = 1
        global.typer = 30
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_554_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            gml_Script_instance_create_ch1(0, 0, 1326)
        con = 60
    }
    if (con == 60 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(442)
        var _temp_local_var_77 = k
        gml_Script_scr_anim_ch1(3814, 0.25)
    }
    if (con == 62)
    {
        global.fe = 3
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_573_0")
        global.msg[1] = "%"
        if (global.tempflag[8] == 0)
            gml_Script_instance_create_ch1(0, 0, 1326)
        con = 64
    }
    if (con == 64 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_81 = king
        image_index = 1
        hspeed = 3
        friction = 0.1
    }
    if (con == 66)
    {
        var _temp_local_var_82 = king
        hspeed = 0
        gml_Script_scr_shakeobj_ch1()
    }
    if (con == 67 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_84 = king
        sprite_index = spr_king_pullweapon_ch1
        image_index = 0
        image_speed = 0.5
    }
    if (con == 67.1)
    {
        var _temp_local_var_85 = king
        image_index = 6
        image_speed = 0
    }
    if (con == 68.2)
    {
        var _temp_local_var_86 = shadowking
        image_alpha -= 0.03
    }
    if (con == 69.2)
    {
        global.plot = 235
        var _temp_local_var_87 = shadowking
        instance_destroy()
    }
    if (con == 68.1 && (!gml_Script_d_ex_ch1()))
    {
        king.sprite_index = spr_king_laugh_ch1
        king.image_speed = 0.334
        con = 69
        gml_Script_snd_play_ch1(403)
        alarm[4] = 70
    }
    if (con == 70 && (!gml_Script_d_ex_ch1()))
    {
        global.tempflag[8] = 1
        obj_mainchara_ch1.x = k.x
        obj_mainchara_ch1.y = k.y
        global.cinstance[0].x = s.x
        global.cinstance[0].y = s.y
        global.cinstance[1].x = r.x
        global.cinstance[1].y = r.y
        var _temp_local_var_90 = global.cinstance[0]
        gml_Script_scr_caterpillar_interpolate_ch1()
    }
    if (con == 72)
    {
        var _temp_local_var_99 = king
        visible = false
    }
    if (con == 74)
    {
        if (!instance_exists(obj_battlecontroller_ch1))
        {
            var _temp_local_var_100 = king
            visible = true
        }
    }
}
if (con >= 76 && con < 150)
{
    if (con == 76 && (!gml_Script_d_ex_ch1()))
    {
        if (part == 0)
        {
            gml_Script___view_set(0, 0, (360 + global.xoff))
            k = gml_Script_scr_dark_marker_ch1(0, 0, 3823)
            s = gml_Script_scr_dark_marker_ch1(0, 0, 3836)
            r = gml_Script_scr_dark_marker_ch1(0, 0, 3847)
            king = gml_Script_scr_dark_marker_ch1((784 + global.xoff), 120, 4118)
            var _temp_local_var_104 = k
            x = (440 + global.xoff)
            y = 50
            gml_Script_scr_depth_ch1()
        }
        else
        {
            _temp_local_var_104 = k
            visible = true
        }
        con = 78
        alarm[4] = 20
    }
    if (con == 79)
    {
        global.fc = 20
        global.typer = 33
        global.fe = 3
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_762_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_763_0")
        if (global.flag[247] == 1)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_766_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_767_0")
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_768_0")
        }
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 81
    }
    if (con == 81 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(424)
        var _temp_local_var_108 = king
        gml_Script_scr_anim_ch1(4118, 0.1)
    }
    if (con == 83)
    {
        gml_Script_snd_play_ch1(392)
        king.sprite_index = spr_king_kneel_ch1
        king.image_index = 0
        king.image_speed = 0
        cape = gml_Script_scr_dark_marker_ch1(king.x, king.y, 4123)
        cape.image_speed = 0.25
        cape.hspeed = 6
        cape.vspeed = -1
        cape.friction = 0.2
        cape.gravity = -0.3
        cape.depth = (king.depth + 1)
        con = 84
        alarm[4] = 50
    }
    if (con == 85)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_802_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_803_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_804_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_805_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_806_0")
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_807_0")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_808_0")
        global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_809_0")
        global.msg[8] = "%"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 86
    }
    if (con == 86 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_110 = king
        gml_Script_scr_shakeobj_ch1()
        image_index = 2
    }
    if (con == 88)
    {
        var _temp_local_var_111 = king
        image_index = 2
    }
    if (con == 88.1 && (!gml_Script_d_ex_ch1()))
    {
        con = 88.2
        alarm[4] = 30
    }
    if (con == 89.2 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(423)
        var _temp_local_var_114 = r
        sprite_index = spr_ralseir_ch1
    }
    if (con == 91)
    {
        gml_Script_snd_play_ch1(423)
        var _temp_local_var_115 = k
        sprite_index = spr_krisr_dark_ch1
    }
    if (con == 93)
    {
        global.fc = 1
        global.fe = 0
        global.typer = 30
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_861_0")
        gml_Script_scr_ralface_ch1(1, 8)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_863_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 94
    }
    if (con == 94 && (!gml_Script_d_ex_ch1()))
    {
        con = 95
        alarm[4] = 30
    }
    if (con == 96)
    {
        gml_Script_snd_play_ch1(423)
        var _temp_local_var_117 = s
        sprite_index = spr_susier_dark_unhappy_ch1
    }
    if (con == 98)
    {
        var _temp_local_var_118 = s
        hspeed = 3
        image_speed = 0.2
    }
    if (con == 100)
    {
        var _temp_local_var_121 = k
        gml_Script_scr_halt_ch1()
    }
    if (con == 102)
    {
        global.fc = 2
        global.fe = 8
        global.typer = 31
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_919_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_920_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_921_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_922_0")
        gml_Script_scr_kingface_ch1(4, 2)
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_924_0")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_925_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 103
    }
    if (con == 103 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(432)
        var _temp_local_var_125 = king
        gml_Script_scr_shakeobj_ch1()
        image_index = 2
    }
    if (con == 105)
    {
        global.fe = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_941_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_942_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_943_0")
        gml_Script_scr_ralface_ch1(3, 6)
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_945_0")
        global.msg[5] = "%"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 106
    }
    if (con == 106 && (!gml_Script_d_ex_ch1()))
    {
        disto = (point_distance(r.x, r.y, (king.x - 90), (king.y + 50)) / 2)
        r.king = king
        var _temp_local_var_127 = r
        image_speed = 0.25
        move_towards_point((king.x - 90), (king.y + 50), 2)
    }
    if (con == 108)
    {
        var _temp_local_var_128 = r
        gml_Script_scr_halt_ch1()
    }
    if (con == 110)
    {
        var _temp_local_var_129 = r
        gml_Script_scr_anim_ch1(3862, 0.25)
        x -= 10
        y -= 10
    }
    if (con == 112)
    {
        gml_Script_snd_play_ch1(430)
        healanim = gml_Script_instance_create_ch1(king.x, king.y, 1618)
        healanim.target = king
        con = 115
        alarm[4] = 60
    }
    if (con == 116)
    {
        var _temp_local_var_130 = r
        sprite_index = spr_ralseir_ch1
        x += 10
        y += 10
    }
    if (con == 125 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(428)
        gml_Script_snd_play_ch1(362)
        var _temp_local_var_132 = king
        image_index = 4
    }
    if (con == 126)
    {
        if (deathwave[0][0].y <= (s.y + 20) && deathhit0 == 0)
        {
            var _temp_local_var_135 = s
            sprite_index = spr_susie_fell_ch1
            vspeed = 4
            hspeed = -1
            friction = 0.2
            gml_Script_scr_shakeobj_ch1()
        }
        if (deathwave[0][0].y <= (k.y + 20) && deathhit1 == 0)
        {
            var _temp_local_var_137 = k
            sprite_index = spr_kris_fell_ch1
            hspeed = 2
            vspeed = 4
            friction = 0.2
            gml_Script_scr_shakeobj_ch1()
        }
        if (deathwave[0][1].y <= (r.y + 20) && deathhit2 == 0)
        {
            var _temp_local_var_139 = r
            sprite_index = spr_ralsei_fell_ch1
            gml_Script_scr_shakeobj_ch1()
            hspeed = 2
            vspeed = -6
            friction = 0.2
        }
    }
    if (con == 127)
    {
        gml_Script_snd_play_ch1(423)
        var _temp_local_var_140 = king
        sprite_index = spr_kingl_ch1
    }
    if (con == 129)
    {
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1067_0")
        global.msg[1] = "%"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 130
    }
    if (con == 130 && (!gml_Script_d_ex_ch1()))
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("GALLERY.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.8, 1)
        gml_Script_snd_play_ch1(432)
        var _temp_local_var_142 = s
        sprite_index = spr_susier_kneel_ch1
        gml_Script_scr_shakeobj_ch1()
    }
    if (con == 132)
    {
        global.fe = 9
        global.fc = 1
        global.typer = 30
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1090_0")
        global.msg[1] = "%"
        con = 133
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 133 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(363)
        con = 134
        spadechunk2 = gml_Script_scr_marker_ch1((s.x + 200), (s.y + 50), 4142)
        spadechunk2.image_angle = 180
        spadechunk2.image_alpha = 0
        spadechunk2.hspeed = 2
        spadechunk2.friction = 0.1
        for (i = 0; i < 15; i += 1)
        {
            j = 0
            while (j < 2)
            {
                var _temp_local_var_145 = deathwave[i][j]
                instance_destroy()
            }
        }
    }
    if (con == 134)
    {
        _temp_local_var_143.image_alpha = (spadechunk2.image_alpha + 0.1)
        var _temp_local_var_146 = s
        var _temp_local_var_147 = king
        var _temp_local_var_148 = -9
        var _temp_local_var_149 = spadechunk2
        if (spadechunk2.image_alpha >= 2)
            con = 135
    }
    if (con == 135)
    {
        global.typer = 33
        global.fc = 20
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1137_0")
        global.msg[1] = "%"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 136
    }
    if (con == 136 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(362)
        hdisto = (((s.x + 90) - spadechunk2.x) / 10)
        spadechunk2.hspeed = (hdisto + 7)
        spadechunk2.friction = -1
        disto = (point_distance(k.x, k.y, (s.x + 60), (s.y + 10)) / 10)
        k.s = s
        k.disto = disto
        var _temp_local_var_151 = k
        gml_Script_scr_anim_ch1(3824, 0.5)
        move_towards_point((s.x + 60), (s.y + 10), disto)
    }
    if (con == 138)
    {
        gml_Script_snd_play_ch1(357)
        var _temp_local_var_152 = k
        gml_Script_scr_halt_ch1()
        gml_Script_scr_shakeobj_ch1()
    }
    if (con == 140)
    {
        global.fe = 9
        global.fc = 1
        global.typer = 30
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1176_0")
        global.msg[1] = "%"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 141
    }
    if (con == 141 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(428)
        gml_Script_snd_play_ch1(362)
        deathhit0 = 0
        deathhit1 = 0
        i = 0
        while (i < 15)
        {
            deathwave[i][0] = gml_Script_scr_marker_ch1(k.x, (-30 - (i * 30)), 4142)
            var _temp_local_var_155 = deathwave[i][0]
            vspeed = 40
            image_angle = 270
        }
        con = 142
        alarm[4] = 40
    }
    if (con == 142)
    {
        if (deathwave[0][0].y >= (s.y + 20) && deathhit0 == 0)
        {
            gml_Script_snd_play_ch1(434)
            var _temp_local_var_157 = s
            sprite_index = spr_susie_fell_ch1
            vspeed = 4
            hspeed = 2
            friction = 0.2
            gml_Script_scr_shakeobj_ch1()
        }
        if (deathwave[0][0].y >= (k.y + 20) && deathhit1 == 0)
        {
            gml_Script_instance_create_ch1(0, 0, 1464)
            gml_Script_snd_play_ch1(434)
            gml_Script_snd_play_ch1(438)
            var _temp_local_var_159 = k
            sprite_index = spr_krisr_kneel_ch1
            hspeed = 1
            vspeed = 2
            friction = 0.2
            gml_Script_scr_shakeobj_ch1()
        }
    }
    if (con == 143)
    {
        global.fe = 0
        global.typer = 33
        global.fc = 20
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1227_0")
        global.msg[1] = "%"
        con = 143.1
        gml_Script_instance_create_ch1(0, 0, 1326)
    }
    if (con == 143.1 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(362)
        spadechunk3 = gml_Script_scr_marker_ch1((k.x + 30), -30, 4142)
        spadechunk3.vspeed = 30
        spadechunk3.image_angle = 270
        deathhit1 = 0
        con = 144
    }
    if (con == 144)
    {
        if (spadechunk3.y >= (k.y + 20) && deathhit1 == 0)
        {
            gml_Script_snd_play_ch1(438)
            var _temp_local_var_162 = k
            sprite_index = spr_kris_fell_ch1
            hspeed = -16
            vspeed = 0
            friction = 0.2
            gml_Script_scr_shakeobj_ch1()
        }
    }
    if (con == 145)
    {
        if (gml_Script___view_get(0, 0) > 0)
        {
            gml_Script___view_set(0, 0, (gml_Script___view_get(0, 0) + (k.hspeed * 2)))
            if (gml_Script___view_get(0, 0) <= 0)
                gml_Script___view_set(0, 0, 0)
        }
        if (abs(k.hspeed) < 0.2)
            con = 150
    }
}
if (con >= 150 && con < 250)
{
    if (con == 150)
    {
        if (part == 0)
        {
            k = gml_Script_scr_dark_marker_ch1(266, 180, 4133)
            part = 1
        }
        else
        {
            var _temp_local_var_446 = king
            instance_destroy()
        }
        con = 151
        alarm[4] = 1
    }
    if (con == 152)
    {
        king = gml_Script_scr_dark_marker_ch1(640, (k.y - 80), 4124)
        siner = 0
        con = 153
    }
    if (con == 153)
    {
        siner += 1
        sinup = abs((sin((siner / 8)) * 3))
        if (sinup >= 1)
            king.image_index = 1
        else
            king.image_index = 0
        _temp_local_var_162.x = (king.x - sinup)
        var _temp_local_var_164 = k
        var _temp_local_var_165 = s
        var _temp_local_var_166 = -9
        var _temp_local_var_167 = king
        if (king.x <= (k.x + 47))
        {
            king.x = (k.x + 46)
            var _temp_local_var_168 = king
            gml_Script_scr_halt_ch1()
        }
    }
    if (con == 155)
    {
        global.fe = 5
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1324_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1325_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1326_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1327_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1328_0")
        global.msg[5] = "%"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 156
    }
    if (con == 156 && (!gml_Script_d_ex_ch1()))
    {
        k.visible = false
        var _temp_local_var_170 = king
        sprite_index = spr_king_liftkris_ch1
        image_index = 1
    }
    if (con == 158)
    {
        global.fe = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1345_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1346_0")
        global.msg[2] = "%"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 159
        grabsounded = false
    }
    if (con == 159 && (!gml_Script_d_ex_ch1()))
    {
        if (grabsounded == false)
        {
            gml_Script_snd_play_ch1(377)
            grabsounded = true
        }
        _temp_local_var_170.image_index = (king.image_index + 0.25)
        var _temp_local_var_172 = king
        var _temp_local_var_173 = k
        var _temp_local_var_174 = -9
        var _temp_local_var_175 = king
        if (king.image_index >= 4)
        {
            gml_Script_snd_play_ch1(363)
            spadechunk4 = gml_Script_scr_marker_ch1((k.x + 20), 100, 4142)
            spadechunk4.image_alpha = 0
            spadechunk4.vspeed = -2
            spadechunk4.friction = 0.1
            spadechunk4.image_angle = 270
            con = 160
            alarm[4] = 30
        }
    }
    if (con == 160)
    {
        _temp_local_var_172.image_alpha = (spadechunk4.image_alpha + 0.1)
        var _temp_local_var_176 = k
        var _temp_local_var_177 = -9
        var _temp_local_var_178 = -9
        var _temp_local_var_179 = spadechunk4
    }
    if (con == 161)
    {
        global.fe = 4
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1379_0")
        global.msg[1] = "%"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 162
    }
    if (con == 162 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_free_all_ch1()
        gml_Script_snd_play_ch1(378)
        gml_Script_snd_play_ch1(434)
        gml_Script_instance_create_ch1(0, 0, 1464)
        hitanim = gml_Script_instance_create_ch1((king.x + 52), (king.y + 80), 1402)
        hitanim.depth = -100
        hitanim.sprite_index = spr_attack_mash2_ch1
        hitanim.image_xscale = 2
        hitanim.image_yscale = 2
        hitanim.image_speed = 0.5
        spadechunk4.image_alpha = 1
        k2 = gml_Script_scr_dark_marker_ch1((king.x - 30), (king.y + 34), 4132)
        k2.gravity = 1
        k2.hspeed = -2
        var _temp_local_var_181 = king
        gml_Script_scr_shakeobj_ch1()
        image_index = 5
    }
    if (con == 163)
    {
        _temp_local_var_181.image_alpha = (spadechunk4.image_alpha - 0.2)
        var _temp_local_var_182 = k
        var _temp_local_var_183 = -9
        var _temp_local_var_184 = -9
        var _temp_local_var_185 = spadechunk4
        if (k2.y >= (king.y + 80))
        {
            k.x = k2.x
            var _temp_local_var_186 = k2
            instance_destroy()
        }
    }
    if (con == 165)
    {
        s = gml_Script_scr_dark_marker_ch1(640, (king.y + 76), 4143)
        gml_Script_scr_pan_ch1(4, 0, 50)
        con = 166
        alarm[4] = 50
    }
    if (con == 167)
    {
        con = 168
        alarm[4] = 10
    }
    if (con == 169)
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("wind.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.5, 0.7)
        global.flag[29] = 1
        global.fc = 1
        global.typer = 30
        global.fe = 2
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1442_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1443_0")
        global.msg[2] = "%"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 170
    }
    if (con == 170 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_play_ch1(423)
        var _temp_local_var_188 = king
        sprite_index = spr_kingr_ch1
        hspeed = 4
        friction = 0.5
        image_index = 0
    }
    if (con == 172)
    {
        global.fc = 20
        global.typer = 33
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1470_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1471_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1472_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1473_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1474_0")
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1475_0")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1476_0")
        global.msg[7] = "%"
        if (type == 1)
        {
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1480_0")
            global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1481_0")
            global.msg[3] = "%"
        }
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 173
    }
    if (con == 173 && (!gml_Script_d_ex_ch1()))
    {
        con = 174
        alarm[4] = 7
    }
    if (con == 175)
    {
        var _temp_local_var_190 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 177)
    {
        global.fc = 1
        global.typer = 30
        global.fe = 2
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1513_0")
        global.msg[1] = "%"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 178
        siner = 0
        kingxnow = king.x
    }
    if (con == 178 && (!gml_Script_d_ex_ch1()))
    {
        siner += 1
        sinup = abs((sin((siner / 8)) * 3))
        _temp_local_var_190.x = (king.x + sinup)
        var _temp_local_var_192 = king
        var _temp_local_var_193 = k2
        var _temp_local_var_194 = -9
        var _temp_local_var_195 = king
        if (sinup >= 1.5)
            king.image_index = 1
        else
            king.image_index = 0
        if (king.x >= (s.x - 240))
        {
            king.x = (s.x - 240)
            var _temp_local_var_196 = king
            gml_Script_scr_halt_ch1()
        }
    }
    if (con == 180)
    {
        var _temp_local_var_197 = king
        image_index = 0
    }
    if (con == 182)
    {
        global.typer = 33
        global.fe = 5
        global.fc = 20
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1550_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1551_0")
        global.msg[2] = "%"
        if (type == 1)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1555_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1556_0")
            global.msg[2] = "%"
        }
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 183
        siner = 0
        kx = king.x
    }
    if (con == 183 && (!gml_Script_d_ex_ch1()))
    {
        siner += 1
        sinup = abs((sin((siner / 8)) * 2))
        _temp_local_var_197.x = (king.x + sinup)
        var _temp_local_var_199 = king
        var _temp_local_var_200 = king
        var _temp_local_var_201 = -9
        var _temp_local_var_202 = king
        if (sinup >= 1)
            king.image_index = 1
        else
            king.image_index = 0
        if (king.x >= (kx + 80))
            con = 187
    }
    if (con == 187)
    {
        var _temp_local_var_203 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 189)
    {
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1590_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1591_0")
        if (type == 1)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1594_0")
            global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1595_0")
            global.msg[2] = "%"
        }
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 190
    }
    if (con == 190 && (!gml_Script_d_ex_ch1()))
    {
        global.fe = 4
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1605_0")
        gml_Script_scr_susface_ch1(1, 4)
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1607_0")
        gml_Script_scr_kingface_ch1(3, 5)
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1609_0")
        global.msg[5] = "%"
        if (type == 1)
        {
            global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1613_0")
            global.msg[1] = "%"
        }
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 191
        gml_Script_snd_play_ch1(363)
        spadechunkf[0] = gml_Script_scr_marker_ch1((k.x + 30), (k.y - 100), 4142)
        spadechunkf[1] = gml_Script_scr_marker_ch1((s.x + 70), (s.y - 100), 4142)
        for (i = 0; i < 2; i += 1)
        {
            spadechunkf[i].image_angle = 270
            spadechunkf[i].image_alpha = 0
            spadechunkf[i].vspeed = -4
            spadechunkf[i].friction = 0.5
        }
    }
    if (con == 191)
    {
        for (i = 0; i < 2; i += 1)
        {
            _temp_local_var_204.image_alpha = (spadechunkf[i].image_alpha + 0.1)
            var _temp_local_var_206 = s
            var _temp_local_var_207 = king
            var _temp_local_var_208 = -9
            var _temp_local_var_209 = spadechunkf[i]
            if (spadechunkf[i].image_alpha >= 3)
                con = 192
        }
        if (con == 192 && type == 1)
            con = 240
    }
    if (con == 192 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_free_all_ch1()
        var _temp_local_var_212 = king
        sprite_index = spr_kingr_fallasleep_ch1
    }
    if (con == 193)
    {
        spadetimer += 1
        i = 0
        while (i < 2)
        {
            _temp_local_var_213.image_alpha = (spadechunkf[i].image_alpha - 0.1)
            i += 1
            var _temp_local_var_214 = king
            var _temp_local_var_215 = 
            var _temp_local_var_216 = -9
            var _temp_local_var_217 = spadechunkf[i]
        }
        if (spadetimer >= 60)
        {
            var _temp_local_var_218 = spadechunkf[0]
            instance_destroy()
        }
    }
    if (con == 194)
    {
        global.fe = 6
        global.typer = 33
        global.fc = 20
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1678_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1679_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1680_0")
        global.msg[3] = "%"
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 195
    }
    if (con == 195 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_221 = king
        image_index = 1
        gml_Script_scr_shakeobj_ch1()
        hspeed = -4
        friction = 0.5
    }
    if (con == 196 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_223 = king
        image_index = 2
    }
    if (con == 197 && (!gml_Script_d_ex_ch1()))
    {
        con = 201
        var _temp_local_var_225 = king
        sprite_index = spr_kingr_asleep_ch1
        image_speed = 0.1
    }
    if (con == 200)
    {
        king = gml_Script_scr_dark_marker_ch1(480, 100, 4129)
        var _temp_local_var_227 = king
        gml_Script_scr_depth_ch1()
    }
    if (con == 201)
    {
        var _temp_local_var_230 = s
        hspeed = -13
        image_speed = 0.25
        gml_Script_scr_depth_ch1()
    }
    if (con == 202)
    {
        blend += 0.02
        king.image_blend = merge_color(c_white, c_black, blend)
    }
    if (con == 203)
    {
        var _temp_local_var_233 = r
        instance_destroy()
    }
    if (con == 205)
    {
        var _temp_local_var_235 = k
        sprite_index = spr_krisr_kneel_ch1
    }
    if (con == 206 && (!gml_Script_d_ex_ch1()))
    {
        r = gml_Script_scr_dark_marker_ch1((gml_Script___view_get(0, 0) + 640), (s.y + 10), 3568)
        var _temp_local_var_237 = r
        hspeed = -6
        image_speed = 0.2
    }
    if (con == 208)
    {
        var _temp_local_var_238 = r
        gml_Script_scr_halt_ch1()
    }
    if (con == 209 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_242 = r
        sprite_index = spr_ralseir_ch1
    }
    if (con == 211)
    {
        global.fc = 2
        global.fe = 4
        global.typer = 31
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1806_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1807_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1808_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1809_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1810_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 212
    }
    if (con == 212 && (!gml_Script_d_ex_ch1()))
        var _temp_local_var_244 = s
    if (con == 214)
    {
        var _temp_local_var_246 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 215 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_248 = s
        sprite_index = spr_susiel_eye_dark_ch1
    }
    if (con == 216 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_250 = k
        sprite_index = spr_krisl_dark_ch1
    }
    if (con == 218)
    {
        var _temp_local_var_253 = l
        gml_Script_scr_halt_ch1()
    }
    if (con == 219 && (!gml_Script_d_ex_ch1()))
    {
        screen_noise = gml_Script_snd_loop_ch1(460)
        var _temp_local_var_255 = l
        sprite_index = spr_lancer_l_unhappy_ch1
    }
    if (con == 221)
    {
        var _temp_local_var_259 = shake
        permashake = false
    }
    if (con == 222 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_264 = l
        sprite_index = spr_lancer_l_unhappy_ch1
    }
    if (con == 223 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_266 = l
        sprite_index = spr_lancer_r_unhappy_ch1
    }
    if (con == 223.1)
    {
        var _temp_local_var_268 = r
        sprite_index = spr_ralseil_ch1
        vspeed = 0
        hspeed = -6
    }
    if (con == 223.2)
    {
        var _temp_local_var_269 = r
        sprite_index = spr_ralseiu_ch1
        vspeed = -3
        hspeed = 0
    }
    if (con == 225)
    {
        var _temp_local_var_272 = k
        gml_Script_scr_halt_ch1()
    }
    if (con == 227)
    {
        global.fc = 2
        global.typer = 31
        global.fe = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1957_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1958_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 268
    }
    if (con == 240 && (!gml_Script_d_ex_ch1()))
    {
        global.typer = 30
        global.fc = 1
        global.fe = 4
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1973_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_1974_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 241
    }
    if (con == 241 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_free_all_ch1()
        var _temp_local_var_278 = s
        x += 60
        y -= 10
        sprite_index = spr_susiel_eye_dark_ch1
    }
    if (con == 242)
    {
        var _temp_local_var_281 = spadechunkf[0]
        image_alpha -= 0.1
    }
    if (con == 243)
        con = 250
}
if (con >= 250 && con <= 265)
{
    if (con == 250)
    {
        if (part == 0)
        {
            k = gml_Script_scr_dark_marker_ch1(266, 180, 4133)
            var _temp_local_var_284 = k
            depth = 800000
        }
        var _temp_local_var_285 = k
        depth = 800000
    }
    if (crowdshift == 1)
    {
        for (i = 0; i < xmake; i += 1)
        {
            j = 0
            while (j < ymake)
            {
                var _temp_local_var_288 = cwp[i][j]
                siner += 1
                image_xscale = (2 + (sin((siner / 12)) * 0.05))
                image_yscale = (2 + (sin((siner / 6)) * 0.1))
            }
        }
        var _temp_local_var_289 = l
        siner += 1
        y += sin((siner / 6))
    }
    if (liftking == 1)
    {
        var _temp_local_var_290 = king
        siner += 1
        y += sin((siner / 6))
    }
    if (con == 251)
    {
        lifttimer += 1
        if (lifttimer == 18 || lifttimer == 35)
            gml_Script_snd_play_ch1(368)
        if (lifttimer >= 18)
        {
            var _temp_local_var_292 = k
            sprite_index = spr_krisr_kneel_ch1
            x += 12
        }
        if (lifttimer >= 35)
        {
            var _temp_local_var_293 = king
            vspeed = -8
            friction = 1
            sprite_index = spr_king_fall_ch1
            image_speed = 0.2
        }
    }
    if (con == 252)
    {
        global.currentsong[0] = gml_Script_snd_init_ch1("lancer.ogg")
        global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 0.8, 1)
        with (obj_shake_ch1)
            permashake = false
        gml_Script_snd_stop_ch1(460)
        var _temp_local_var_294 = l
        gml_Script_scr_halt_ch1()
    }
    if (con == 254)
    {
        global.typer = 33
        global.fc = 20
        global.fe = 6
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2116_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2117_0")
        gml_Script_scr_lanface_ch1(2, 2)
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2119_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2120_0")
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2121_0")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2122_0")
        global.msg[7] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2123_0")
        global.msg[8] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2124_0")
        global.msg[9] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2125_0")
        gml_Script_scr_kingface_ch1(10, 6)
        global.msg[11] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2127_0")
        global.msg[12] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2128_0")
        gml_Script_scr_lanface_ch1(13, 2)
        global.msg[14] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2130_0")
        global.msg[15] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2131_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 255
    }
    if (con == 255 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_mus_volume_ch1(global.currentsong[1], 0, 60)
        var _temp_local_var_297 = king
        hspeed = -12
        friction = 0
    }
    if (con == 257 && (!gml_Script_d_ex_ch1()))
    {
        gml_Script_snd_free_all_ch1()
        con = 350
    }
}
if (con >= 265 && con < 320)
{
    if (con == 268 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_303 = s
        sprite_index = spr_susier_eye_dark_lookup_ch1
    }
    if (con == 270)
    {
        global.fe = 0
        global.typer = 30
        global.fc = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2182_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 275
    }
    if (con == 275 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_305 = s
        sprite_index = spr_susiel_eye_dark_ch1
    }
    if (con == 277 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_310 = l
        gml_Script_scr_halt_ch1()
    }
    if (con == 280 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_312 = s
        sprite_index = spr_susiel_dark_laugh_ch1
        image_speed = 0.334
    }
    if (con == 282)
    {
        var _temp_local_var_314 = s
        gml_Script_scr_halt_ch1()
        sprite_index = spr_susiel_dark_eyes_ch1
    }
    if (con == 283 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_317 = l
        hspeed = -8
    }
    if (con == 285)
    {
        var _temp_local_var_321 = r
        gml_Script_scr_halt_ch1()
    }
    if (con == 286 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_325 = r
        sprite_index = spr_ralsei_pullhat_ch1
        image_speed = 0.1
    }
    if (con == 287 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_327 = r
        sprite_index = spr_ralsei_reveal_ch1
        image_index = 0
        image_speed = 0
    }
    if (con == 288)
    {
        rtimer += 0.1
        var _temp_local_var_328 = r
        image_index += 0.1
    }
    if (con == 290)
    {
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2294_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2295_0")
        gml_Script_scr_susface_ch1(2, 4)
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2297_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2298_0")
        global.msg[5] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2299_0")
        global.msg[6] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2300_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 291
        hatsounded = false
    }
    if (con == 291 && (!gml_Script_d_ex_ch1()))
    {
        if (hatsounded == false)
        {
            gml_Script_snd_play_ch1(368)
            hatsounded = true
        }
        var _temp_local_var_330 = r
        image_index += 0.1
    }
    if (con == 293)
    {
        global.flag[30] = 2
        global.fc = 2
        global.typer = 31
        global.fe = 1
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2320_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 294
    }
    if (con == 294 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_333 = r
        image_index += 0.1
    }
    if (con == 296)
    {
        global.fe = 0
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2335_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2336_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 297
    }
    if (con == 297 && (!gml_Script_d_ex_ch1()))
    {
        global.typer = 30
        global.fc = 1
        global.fe = 6
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2347_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2348_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 298
    }
    if (con == 298 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_336 = k
        sprite_index = spr_krisr_dark_ch1
    }
    if (con == 300)
    {
        var _temp_local_var_339 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 302)
    {
        global.fe = 2
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2372_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 303
    }
    if (con == 303 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_341 = s
        image_speed = 0.2
        hspeed = 4
    }
    if (con == 305)
    {
        gml_Script_scr_losechar_ch1()
        gml_Script_scr_getchar_ch1(2)
        global.interact = 3
        global.entrance = 1
        if (global.plot < 240)
        {
            global.plot = 240
            global.flag[248] = 1
        }
        gml_Script_instance_create_ch1(0, 0, 1462)
        room_goto_next()
    }
}
if (con >= 350 && con < 700)
{
    if (con == 350 && (!gml_Script_d_ex_ch1()))
    {
        if (part == 0)
        {
            gml_Script___view_set(0, 0, 200)
            k = gml_Script_scr_dark_marker_ch1(598, 180, 4134)
            s = gml_Script_scr_dark_marker_ch1(700, 166, 4149)
            var _temp_local_var_346 = k
            depth = 800000
        }
        var _temp_local_var_348 = k
        gml_Script_scr_depth_ch1()
    }
    if (con == 352)
    {
        var _temp_local_var_352 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 353 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_354 = k
        sprite_index = spr_krisr_dark_ch1
    }
    if (con == 355)
    {
        var _temp_local_var_357 = r
        gml_Script_scr_halt_ch1()
    }
    if (con == 357)
    {
        global.fc = 2
        global.fe = 3
        global.typer = 31
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2463_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2464_0")
        gml_Script_scr_susface_ch1(2, 2)
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2466_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 358
    }
    if (con == 358 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_359 = r
        sprite_index = spr_ralseir_ch1
    }
    if (con == 360)
    {
        global.fe = 4
        global.typer = 31
        global.fc = 2
        global.msg[0] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2484_0")
        global.msg[1] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2485_0")
        global.msg[2] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2486_0")
        global.msg[3] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2487_0")
        global.msg[4] = gml_Script_scr_84_get_lang_string_ch1("obj_kingcutscene_slash_Step_0_gml_2488_0")
        gml_Script_instance_create_ch1(0, 0, 1326)
        con = 361
    }
    if (con == 361 && (!gml_Script_d_ex_ch1()))
        var _temp_local_var_361 = s
    if (con == 363)
    {
        var _temp_local_var_363 = s
        gml_Script_scr_halt_ch1()
    }
    if (con == 364 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_365 = s
        sprite_index = spr_susier_eye_dark_lookup_ch1
    }
    if (con == 365 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_367 = s
        sprite_index = spr_susier_eye_dark_unhappy_ch1
    }
    if (con == 366 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_370 = r
        sprite_index = spr_ralseid_ch1
    }
    if (con == 368)
    {
        var _temp_local_var_371 = r
        sprite_index = spr_ralseil_ch1
    }
    if (con == 369 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_373 = r
        vspeed = -1
        image_speed = 0.2
        sprite_index = spr_ralseid_ch1
    }
    if (con == 371)
    {
        var _temp_local_var_377 = r
        gml_Script_scr_halt_ch1()
    }
    if (con == 373)
    {
        var _temp_local_var_381 = s
        sprite_index = spr_susiel_eye_dark_unhappy_ch1
    }
    if (con == 374 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_384 = k
        sprite_index = spr_krisr_dark_ch1
        image_speed = 0.2
        hspeed = 6
    }
    if (con == 376)
    {
        fade = gml_Script_instance_create_ch1(0, 0, 1460)
        var _temp_local_var_386 = fade
        fadespeed = 0.02
    }
    if (con == 378)
    {
        gml_Script_scr_losechar_ch1()
        gml_Script_scr_getchar_ch1(2)
        global.plot = 240
        global.entrance = 1
        global.interact = 3
        gml_Script_instance_create_ch1(0, 0, 1462)
        room_goto_next()
    }
}
if (con >= 700)
{
    if (con == 700 && global.plot >= 243 && global.interact == 0 && obj_mainchara_ch1.x >= 1900)
    {
        global.interact = 1
        con = 701
        with (obj_caterpillarchara_ch1)
            visible = false
        with (obj_mainchara_ch1)
            visible = false
        with (obj_npc_facing_ch1)
            visible = false
        s = gml_Script_scr_dark_marker_ch1(obj_caterpillarchara_ch1.x, obj_caterpillarchara_ch1.y, 3560)
        var _temp_local_var_388 = s
        gml_Script_scr_depth_ch1()
    }
    if (con == 701 && (!gml_Script_d_ex_ch1()))
    {
        var _temp_local_var_392 = r
        sprite_index = spr_ralseid_ch1
        image_speed = 0.1
        vspeed = 1
    }
    if (con == 703)
    {
        var _temp_local_var_393 = r
        gml_Script_scr_halt_ch1()
    }
    if (con == 705)
    {
        global.plot = 244
        gml_Script_snd_free_all_ch1()
        con = 286
    }
}
