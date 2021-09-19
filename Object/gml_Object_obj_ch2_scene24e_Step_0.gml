if (con == -1 && (!instance_exists(obj_ch2_scene23a)))
{
    con = 1
    global.interact = 1
    if (global.flag[331] == 0)
    {
        blackall = gml_Script_scr_dark_marker(-10, -10, 2529)
        blackall.image_xscale = 999
        blackall.image_yscale = 999
        blackall.depth = 100
        blackall.image_blend = c_black
    }
}
if (con == 1)
{
    con = 2
    if (global.flag[331] == 0)
    {
        gml_Script_snd_free_all()
        if (!gml_Script_snd_is_playing(global.currentsong[1]))
        {
            global.currentsong[0] = gml_Script_snd_init("wind_highplace.ogg")
            global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
        }
        with (obj_mainchara)
        {
            x = 245
            y = 750
            visible = false
        }
        gml_Script_scr_losechar()
        gml_Script_scr_getchar(2)
        gml_Script_scr_makecaterpillar((obj_mainchara.x + 50), (obj_mainchara.y - 6), 2, 0)
        gml_Script_scr_getchar(3)
        gml_Script_scr_makecaterpillar((obj_mainchara.x + 120), (obj_mainchara.y - 6), 3, 1)
        with (obj_caterpillarchara)
            visible = false
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
        gml_Script_c_sel(ra)
        gml_Script_c_setxy(315, 743)
        gml_Script_c_facing("l")
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
    }
    else
    {
        gml_Script_scr_getchar(2)
        gml_Script_scr_makecaterpillar((gml_Script_camerax() - 100), (obj_mainchara.y - 6), 2, 1)
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
    }
    gml_Script_c_sel(su)
    gml_Script_c_sprite(534)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_setxy(290, (gml_Script_cameray() - 100))
}
if (con == 2)
{
    global.facing = 0
    gml_Script_c_msgside("top")
    con = 10
    if (global.flag[331] == 0)
    {
        gml_Script_c_var_lerp_instance(blackall, "image_alpha", 1, 0, 30)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EI* So that's why.../", "obj_ch2_scene24e_slash_Step_0_gml_75_0")
        gml_Script_c_facenext("susie", "H")
        gml_Script_c_msgnextloc("\\EH* Geronimo!!/%", "obj_ch2_scene24e_slash_Step_0_gml_77_0")
        gml_Script_c_talk_wait()
    }
    else
    {
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EH* Geronimo!!/%", "obj_ch2_scene24e_slash_Step_0_gml_82_0")
        gml_Script_c_talk_wait()
    }
    gml_Script_c_soundplay(158)
    gml_Script_c_sel(su)
    gml_Script_c_autodepth(0)
    gml_Script_c_depth(0)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect_wait(290, (ra_actor.y - 2), 15)
    gml_Script_c_sprite(548)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sel(ra)
    gml_Script_c_autodepth(0)
    gml_Script_c_sprite(52)
    gml_Script_c_setxy(282, (ra_actor.y + 52))
    gml_Script_c_soundplay(40)
    gml_Script_c_sel(su)
    gml_Script_c_wait(10)
    gml_Script_c_sprite(60)
    gml_Script_c_imagespeed(0)
    gml_Script_c_wait(30)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(1)
    gml_Script_c_walk_wait("l", 3, 5)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(818)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(0)
    gml_Script_c_flip("x")
    gml_Script_c_msgside("top")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Heh^1, miss me?/%", "obj_ch2_scene24e_slash_Step_0_gml_127_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_sprite(228)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EN* Of course not!!/%", "obj_ch2_scene24e_slash_Step_0_gml_135_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(229)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EH* (Just kidding^1! That was sarcasm^1! I missed you!!)/%", "obj_ch2_scene24e_slash_Step_0_gml_142_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(1)
    gml_Script_c_flip("x")
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EK* Man^1, we gotta work on your delivery./%", "obj_ch2_scene24e_slash_Step_0_gml_152_0")
    gml_Script_c_talk_wait()
    gml_Script_c_soundplay(159)
    if (kr_actor.y > 770)
        gml_Script_c_jump_sprite(325, (kr_actor.y - 55), 12, 17, 534, 548)
    else
        gml_Script_c_jump_sprite(235, (kr_actor.y + 25), 12, 17, 534, 548)
    gml_Script_c_autodepth(1)
    gml_Script_c_wait(25)
    if (kr_actor.y > 770)
        gml_Script_c_walkdirect_wait(176, (kr_actor.y - 55), 30)
    gml_Script_c_walkdirect(176, (kr_actor.y - 15), 17)
    gml_Script_c_delayfacing(18, "r")
    gml_Script_c_sel(kr)
    gml_Script_c_facing("d")
    gml_Script_c_wait(5)
    gml_Script_c_facing("l")
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(1)
    gml_Script_c_autodepth(1)
    gml_Script_c_facing("l")
    gml_Script_c_setxy(314, (kr_actor.y + 5))
    if (kr_actor.y > 770)
    {
        gml_Script_c_walk_wait("u", 6, 6)
        gml_Script_c_walk_wait("l", 6, 33)
        gml_Script_c_walkdirect_wait(120, (kr_actor.y - 7), 8)
        gml_Script_c_facing("r")
    }
    else
    {
        gml_Script_c_walk_wait("d", 6, 4)
        gml_Script_c_walk_wait("l", 6, 33)
        gml_Script_c_walkdirect_wait(120, (kr_actor.y - 7), 8)
        gml_Script_c_facing("r")
    }
    gml_Script_c_wait(10)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Anyway^1, let's go!/%", "obj_ch2_scene24e_slash_Step_0_gml_185_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("l")
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
}
if (con == 10 && (!gml_Script_d_ex()))
{
    con = 11
    alarm[0] = 30
    gml_Script_scr_losechar()
    if gml_Script_i_ex(274)
    {
        with (obj_caterpillarchara)
            instance_destroy()
    }
    gml_Script_scr_getchar(2)
    gml_Script_scr_getchar(3)
    if (su_actor != noone)
        gml_Script_scr_makecaterpillar(su_actor.x, (su_actor.y - 6), 2, 0)
    if (ra_actor != noone)
        gml_Script_scr_makecaterpillar(ra_actor.x, (ra_actor.y - 6), 3, 1)
    if gml_Script_i_ex(274)
    {
        with (obj_caterpillarchara)
            visible = false
    }
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 12 && (!gml_Script_i_ex(895)))
{
    global.interact = 0
    global.facing = 0
    global.plot = 160
    con = 99
    gml_Script_scr_tempsave()
    var savepoint = gml_Script_instance_create(460, 720, obj_savepoint)
    var _temp_local_var_4 = savepoint
    gml_Script_scr_depth()
}
