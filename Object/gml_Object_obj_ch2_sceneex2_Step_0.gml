if (init == 0)
{
    trackx = 0
    init = 1
}
if (con == 1 && obj_mainchara.x <= start_xpos)
{
    if (!shortened)
    {
        gml_Script_snd_play_pitch(154, 0.4)
        gml_Script_snd_play_pitch(154, 0.6)
        gml_Script_snd_play_pitch(154, 0.8)
    }
    con = 2
    global.interact = 1
    global.facing = 3
    sneo = gml_Script_instance_create(obj_mainchara.x, -300, obj_spamton_neo_enemy)
    sneo.myself = 1
    sneo.facing = -1
    sneo.gravity = (shortened ? 0 : 4)
    sneo.shadow_amount = (shortened ? 0 : 1)
    sneo.partmode = 30
}
if (con == 2)
{
    if (!shortened)
    {
        if (sneo.y >= (obj_mainchara.y - 120))
        {
            with (obj_camera_area)
                instance_destroy()
            with (obj_camera_advanced)
            {
                ignoreFreeze = 1
                ignoreCutscene = 1
            }
            gml_Script_snd_play(170)
            gml_Script_snd_play(166)
            with (sneo)
            {
                gravity = 0
                vspeed = 0
            }
            with (obj_mainchara)
            {
                fun = true
                sprite_index = spr_kris_dw_landed
                image_speed = 0
                hspeed = 18
                friction = 0.8
            }
            con = 4
            alarm[0] = 30
        }
    }
    else
    {
        with (obj_camera_area)
            instance_destroy()
        with (obj_camera_advanced)
        {
            ignoreFreeze = 1
            ignoreCutscene = 1
        }
        con = 5
    }
}
if (con == 5)
{
    if gml_Script_i_ex(1155)
    {
        with (obj_camera_advanced)
            instance_destroy()
    }
    with (obj_mainchara)
        cutscene = true
    gml_Script_scr_getchar(2)
    gml_Script_scr_getchar(3)
    gml_Script_scr_makecaterpillar((obj_mainchara.x + 60), (gml_Script_cameray() - 300), 2, 0)
    gml_Script_scr_makecaterpillar((obj_mainchara.x + 100), (gml_Script_cameray() - 300), 3, 1)
    with (obj_caterpillarchara)
        visible = false
    coaster_empty1 = gml_Script_scr_dark_marker(-100, -100, 2052)
    with (coaster_empty1)
        depth = 98900
    coaster_empty2 = gml_Script_scr_dark_marker(-100, -100, 2052)
    with (coaster_empty2)
        depth = 98000
    coaster_empty3 = gml_Script_scr_dark_marker(-100, -100, 2052)
    with (coaster_empty3)
        depth = 98000
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    con = 5.1
}
if (con == 5.1 || gml_Script_scr_cutscene_loaded())
{
    con = 6
    alarm[0] = 30
    gml_Script_c_sel(su)
    gml_Script_c_setxy((gml_Script_camerax() - 200), 200)
    gml_Script_c_visible(0)
    gml_Script_c_sel(ra)
    gml_Script_c_setxy((gml_Script_camerax() - 200), 200)
    gml_Script_c_visible(0)
    if shortened
    {
        gml_Script_c_sel(su)
        gml_Script_c_facing("susieunhappy")
        gml_Script_c_setxy(300, 173)
        gml_Script_c_visible(1)
        gml_Script_c_walkdirect(680, 173, 35)
        gml_Script_c_sel(ra)
        gml_Script_c_facing("ralseiunhappy")
        gml_Script_c_setxy(300, 230)
        gml_Script_c_visible(1)
        gml_Script_c_walkdirect(640, 230, 35)
        gml_Script_c_wait(40)
    }
    else
    {
        gml_Script_c_pannable(1)
        gml_Script_c_panspeed_wait(-3, 0, 30)
        gml_Script_c_wait(30)
        gml_Script_c_sel(kr)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(540)
        gml_Script_c_imageindex(0)
        gml_Script_c_imagespeed(0)
        gml_Script_c_var_instance(sneo, "shake_head", 1)
        gml_Script_c_wait(30)
        gml_Script_c_var_instance(sneo, "shake_head", 1)
        gml_Script_c_wait(30)
        gml_Script_c_var_instance(sneo, "shake_head", 1)
        gml_Script_c_wait(30)
        gml_Script_c_fadeout(5)
        gml_Script_c_wait(30)
        gml_Script_c_var_instance(sneo, "y", 115)
        gml_Script_c_var_instance(sneo, "partmode", 31)
        gml_Script_c_wait(60)
        gml_Script_c_sel(kr)
        gml_Script_c_setxy(830, 216)
        gml_Script_c_msgside("bottom")
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* HOLY [[Cungadero]] DO I FEEL GOOD .../%", "obj_ch2_sceneex2_slash_Step_0_gml_98_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 33)
        gml_Script_c_wait(1)
        gml_Script_c_var_lerp_instance(sneo, "shadow_amount", 1, 0, 30)
        gml_Script_c_var_instance(sneo, "partmode", 1)
        gml_Script_c_fadein(5)
        gml_Script_c_wait(5)
        gml_Script_c_mus("free_all")
        gml_Script_c_mus2("initloop", "spamton_neo_meeting.ogg", 0)
        gml_Script_c_mus2("pitch", 1.3, 0)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* HERE I AM!^1! KRIS!!/%", "obj_ch2_sceneex2_slash_Step_0_gml_111_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 15)
        gml_Script_c_var_instance(sneo, "headforceframe", 2)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* BIG/%", "obj_ch2_sceneex2_slash_Step_0_gml_119_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 16)
        gml_Script_c_var_instance(sneo, "headforceframe", 1)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* BIG^1,/%", "obj_ch2_sceneex2_slash_Step_0_gml_127_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 17)
        gml_Script_c_var_instance(sneo, "headforceframe", 2)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* [[BIGGER AND BETTER THAN EVER]]/%", "obj_ch2_sceneex2_slash_Step_0_gml_135_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(kr)
        gml_Script_c_autowalk(1)
        gml_Script_c_facing("l")
        gml_Script_c_var_instance(sneo, "partmode", 1)
        gml_Script_c_var_instance(sneo, "headforceframe", 1)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* HA HA HA ..^1. THIS POWER IS/%", "obj_ch2_sceneex2_slash_Step_0_gml_148_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "headforceframe", 0)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* FREEDOM./%", "obj_ch2_sceneex2_slash_Step_0_gml_156_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "headforceframe", -1)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* I WON'T HAVE TO BE^1 &* JUST A PUPPET^1 &* ANY MORE!!!!/", "obj_ch2_sceneex2_slash_Step_0_gml_163_0")
        gml_Script_c_msgnextloc("* .../%", "obj_ch2_sceneex2_slash_Step_0_gml_166_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "headforceframe", 0)
        gml_Script_c_var_instance(sneo, "facing", 1)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* OR..^1. so..^1. I..^1. thought./%", "obj_ch2_sceneex2_slash_Step_0_gml_174_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 22)
        gml_Script_c_var_instance(sneo, "headforceframe", 2)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* WHAT ARE THESE STRINGS!^1? &* WHY AM I NOT [BIG] ENOUGH!^1? &* It's still DARK..^1. SO DARK!/%", "obj_ch2_sceneex2_slash_Step_0_gml_183_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 1)
        gml_Script_c_var_instance(sneo, "facing", -1)
        gml_Script_c_var_instance(sneo, "headforceframe", 1)
        gml_Script_c_var_lerp_instance(sneo, "x", sneo.x, (sneo.x + 200), 30, 2, "out")
        gml_Script_c_soundplay_x(154, 1, 0.5)
        gml_Script_c_wait(10)
        gml_Script_c_panspeed(8, 0, 24)
        gml_Script_c_sel(kr)
        gml_Script_c_autowalk(0)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walk_wait("r", 8, 25)
        gml_Script_c_imagespeed(0)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* KRIS./%", "obj_ch2_sceneex2_slash_Step_0_gml_209_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 21)
        gml_Script_c_var_lerp_instance(sneo, "x", (sneo.x + 200), (sneo.x + 430), 30, 2, "out")
        gml_Script_c_soundplay_x(154, 1, 0.5)
        gml_Script_c_wait(5)
        gml_Script_c_panspeed(10, 0, 24)
        gml_Script_c_autowalk(0)
        gml_Script_c_walk("r", 10, 25)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_wait(26)
        gml_Script_c_imagespeed(0)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* KRIS^1. &* KRIS^1. &* KRIS./", "obj_ch2_sceneex2_slash_Step_0_gml_228_0")
        gml_Script_c_msgnextloc("* THAT'S RIGHT^1. &* YOU^1. &* I NEED YOU./%", "obj_ch2_sceneex2_slash_Step_0_gml_229_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 23)
        gml_Script_c_var_lerp_instance(sneo, "x", (sneo.x + 430), (sneo.x + 630), 15, 2, "out")
        gml_Script_c_var_instance(sneo, "headforceframe", 1)
        gml_Script_c_soundplay_x(154, 1, 0.5)
        gml_Script_c_wait(3)
        gml_Script_c_panspeed(12, 0, 14)
        gml_Script_c_autowalk(0)
        gml_Script_c_walk("r", 12, 15)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_wait(16)
        gml_Script_c_imagespeed(0)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* TO BE BIG.^3 &* WITH ME./%", "obj_ch2_sceneex2_slash_Step_0_gml_248_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 24)
        gml_Script_c_var_instance(sneo, "headforceframe", 2)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* VERY   VERY    BIG/", "obj_ch2_sceneex2_slash_Step_0_gml_257_0")
        gml_Script_c_msgnextloc("* SO BIG WE'LL STAND UP TALL AND SEE PAST THE DARK/", "obj_ch2_sceneex2_slash_Step_0_gml_258_0")
        gml_Script_c_msgnextloc("* STAND UP WITH OUR HEADS IN THE CLOUDS AND LOOK INTO/%", "obj_ch2_sceneex2_slash_Step_0_gml_259_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 25)
        gml_Script_c_var_lerp_instance(sneo, "x", (sneo.x + 600), (sneo.x + 740), 5, 1, "out")
        gml_Script_c_var_instance(sneo, "headforceframe", 0)
        gml_Script_c_soundplay_x(154, 1, 0.5)
        gml_Script_c_wait(3)
        gml_Script_c_autowalk(0)
        gml_Script_c_var_lerp_instance(kr_actor, "x", 1430, 1590, 10, 2, "out")
        gml_Script_c_sprite(540)
        gml_Script_c_soundplay(170)
        gml_Script_c_imagespeed(0)
        gml_Script_c_imageindex(0)
        gml_Script_c_wait(30)
        gml_Script_c_imagespeed(0)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* H E A V E N/%", "obj_ch2_sceneex2_slash_Step_0_gml_279_0")
        gml_Script_c_talk_wait()
        gml_Script_c_panspeed(5, 0, 10)
        gml_Script_c_var_lerp_instance(sneo, "x", 1380, 1300, 10, 2, "out")
        gml_Script_c_wait(10)
        gml_Script_c_var_instance(sneo, "headforceframe", 0)
        gml_Script_c_var_instance(sneo, "partmode", 3)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* I^3 &* JUST NEED^3 &* THAT LITTLE,/%", "obj_ch2_sceneex2_slash_Step_0_gml_287_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 13)
        gml_Script_c_var_instance(sneo, "headforceframe", 1)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* [[SOUL]]^3 &* Y O U HAVE/%", "obj_ch2_sceneex2_slash_Step_0_gml_298_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_lerp_instance(sneo, "x", 1300, 1420, 120)
        gml_Script_c_var_lerp_instance(sneo, "y", 115, 140, 120)
        gml_Script_c_soundplay(248)
        var _n = 0
        repeat (10)
        {
            gml_Script_c_mus2("pitch", (1.3 + (_n / 15)), 0)
            gml_Script_c_wait(12)
            _n++
        }
        gml_Script_c_mus("free")
        gml_Script_c_soundplay_x(108, 0.8, 0.9)
        gml_Script_c_var_instance(sneo, "headforceframe", 2)
        gml_Script_c_var_instance(id, "rudebuster", 1)
        gml_Script_c_wait(15)
        gml_Script_c_var_instance(sneo, "partmode", 20)
        gml_Script_c_var_instance(id, "sneo_fly", 1)
        gml_Script_c_wait(45)
        gml_Script_c_sel(su)
        gml_Script_c_facing("susieunhappy")
        gml_Script_c_setxy(1000, 173)
        gml_Script_c_visible(1)
        gml_Script_c_walkdirect(1300, 173, 20)
        gml_Script_c_sel(ra)
        gml_Script_c_facing("ralseiunhappy")
        gml_Script_c_setxy(1000, 230)
        gml_Script_c_visible(1)
        gml_Script_c_walkdirect(1200, 230, 20)
        gml_Script_c_wait(45)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E4* Kris!/%", "obj_ch2_sceneex2_slash_Step_0_gml_411_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(su)
        gml_Script_c_facing("susieunhappy")
        gml_Script_c_walkdirect(1550, 173, 20)
        gml_Script_c_sel(ra)
        gml_Script_c_facing("ralseiunhappy")
        gml_Script_c_walkdirect(1506, 230, 20)
        gml_Script_c_pan(1258, 0, 20)
        gml_Script_c_wait(22)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E4* The hell was that weirdo!?/", "obj_ch2_sceneex2_slash_Step_0_gml_341_0")
        gml_Script_c_facenext("ralsei", "Q")
        gml_Script_c_msgnextloc("\\EQ* Kris^1, we were worried about you^1, so.../%", "obj_ch2_sceneex2_slash_Step_0_gml_343_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(su)
        gml_Script_c_emote("!", 30)
        gml_Script_c_sel(ra)
        gml_Script_c_emote("!", 30)
        gml_Script_c_shake()
        gml_Script_c_var_instance(id, "drawblack", 1)
        gml_Script_c_soundplay_x(235, 1, 0.8)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* KRIS!!^1! YOU HAVE [Friends]!?/", "obj_ch2_sceneex2_slash_Step_0_gml_442_0")
        gml_Script_c_msgnextloc("* WHY DON'T YOU TELL THEM ABOUT MY [3 for One Specil]!/", "obj_ch2_sceneex2_slash_Step_0_gml_443_0")
        gml_Script_c_msgnextloc("* TODAY^1, THE WHOLE FAMILY CAN TAKE A LITTLE [Ride Around Town].../%", "obj_ch2_sceneex2_slash_Step_0_gml_418_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(5)
        gml_Script_c_var_instance(coaster_empty1, "y", 210)
        gml_Script_c_var_instance(coaster_empty2, "y", 270)
        gml_Script_c_var_instance(coaster_empty3, "y", 330)
        gml_Script_c_var_lerp_instance(coaster_empty1, "x", 1100, 2000, 30, 2, "in")
        gml_Script_c_var_lerp_instance(coaster_empty2, "x", 1100, 2000, 30, 2, "in")
        gml_Script_c_var_lerp_instance(coaster_empty3, "x", 1100, 2000, 30, 2, "in")
        gml_Script_c_soundplay_x(153, 1, 0.8)
        gml_Script_c_soundplay_x(153, 1, 0.9)
        gml_Script_c_wait(10)
        gml_Script_c_sel(su)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(995)
        gml_Script_c_addxy(0, -15)
        gml_Script_c_var_lerp("x", 1550, 1580, 10, 2, "out")
        gml_Script_c_sel(ra)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(1518)
        gml_Script_c_var_lerp("x", 1496, 1600, 10, 2, "out")
        gml_Script_c_wait(11)
        gml_Script_c_pan(1640, 0, 15)
        gml_Script_c_sel(kr)
        gml_Script_c_sprite(544)
        gml_Script_c_imagespeed(0.5)
        gml_Script_c_jump(1720, 48, 40, 40)
        gml_Script_c_sel(su)
        gml_Script_c_sprite(542)
        gml_Script_c_imagespeed(0.5)
        gml_Script_c_jump(1720, 120, 40, 40)
        gml_Script_c_sel(ra)
        gml_Script_c_sprite(782)
        gml_Script_c_imagespeed(0.5)
        gml_Script_c_jump(1720, 244, 40, 40)
        gml_Script_c_soundplay(159)
        gml_Script_c_soundplay_x(159, 0.9, 0.8)
        gml_Script_c_wait(10)
        gml_Script_c_var_lerp_instance(id, "trackspeed", 0, -15, 30, 2, "out")
        gml_Script_c_var_lerp_instance(coaster_empty1, "x", 2000, 1700, 30, 2, "out")
        gml_Script_c_var_lerp_instance(coaster_empty2, "x", 2000, 1700, 30, 2, "out")
        gml_Script_c_var_lerp_instance(coaster_empty3, "x", 2000, 1700, 30, 2, "out")
        gml_Script_c_var_lerp_instance(coaster_empty1, "y", 210, 100, 30, 2, "out")
        gml_Script_c_var_lerp_instance(coaster_empty2, "y", 270, 180, 30, 2, "out")
        gml_Script_c_var_lerp_instance(coaster_empty3, "y", 330, 260, 30, 2, "out")
        gml_Script_c_var_lerp_instance(id, "tracky0", 180, 70, 30, 2, "out")
        gml_Script_c_var_lerp_instance(id, "tracky1", 240, 150, 30, 2, "out")
        gml_Script_c_var_lerp_instance(id, "tracky2", 300, 230, 30, 2, "out")
        gml_Script_c_wait(31)
        gml_Script_c_mus("free")
        gml_Script_c_mus2("initloop", "shinkansen.ogg", 0)
        gml_Script_c_mus2("pitch", 2, 0)
        gml_Script_c_soundplay_x(61, 0.8, 0.5)
        gml_Script_c_soundplay_x(61, 0.8, 1.1)
        gml_Script_c_soundplay_x(61, 0.8, 1.4)
        gml_Script_c_sel(kr)
        gml_Script_c_visible(0)
        gml_Script_c_sel(su)
        gml_Script_c_visible(0)
        gml_Script_c_sel(ra)
        gml_Script_c_visible(0)
        gml_Script_c_var_instance(coaster_kris, "x", 1721)
        gml_Script_c_var_instance(coaster_kris, "y", 60)
        gml_Script_c_var_instance(coaster_susie, "x", 1718)
        gml_Script_c_var_instance(coaster_susie, "y", 125)
        gml_Script_c_var_instance(coaster_ralsei, "x", 1727)
        gml_Script_c_var_instance(coaster_ralsei, "y", 215)
        gml_Script_c_var_instance(coaster_kris, "siner_add0", 0.1)
        gml_Script_c_var_instance(coaster_susie, "siner_add0", 0.08)
        gml_Script_c_var_instance(coaster_ralsei, "siner_add0", 0.09)
        gml_Script_c_var_instance(coaster_kris, "visible", 1)
        gml_Script_c_var_instance(coaster_kris, "character_sprite", 1412)
        gml_Script_c_var_instance(coaster_ralsei, "visible", 1)
        gml_Script_c_var_instance(coaster_ralsei, "character_sprite", 1518)
        gml_Script_c_var_instance(coaster_ralsei, "character_offset_x", -10)
        gml_Script_c_var_instance(coaster_susie, "visible", 1)
        gml_Script_c_var_instance(coaster_susie, "character_sprite", 996)
        gml_Script_c_var_instance(coaster_empty1, "visible", 0)
        gml_Script_c_var_instance(coaster_empty2, "visible", 0)
        gml_Script_c_var_instance(coaster_empty3, "visible", 0)
        gml_Script_c_wait(12)
        gml_Script_c_wait(4)
        gml_Script_c_soundplay(235)
        gml_Script_c_wait(30)
        gml_Script_c_msgside("bottom")
        gml_Script_c_msgsetloc(0, "* [Attention Customers! Clean up on Aisle 3!]/", "obj_ch2_sceneex2_slash_Step_0_gml_553_0")
        gml_Script_c_msgnextloc("* SOMEONE LEFT [There] SOULS^1, [Lyeing Around......]/%", "obj_ch2_sceneex2_slash_Step_0_gml_554_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(id, "special_scene", 1)
        gml_Script_c_mus("pause")
        gml_Script_c_waitcustom()
        gml_Script_c_mus("resume")
    }
    gml_Script_c_wait(30)
    if (!shortened)
    {
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* Kris!?!^1? WAS THAT A [BIG SHOT] JUST NOW!?/", "obj_ch2_sceneex2_slash_Step_0_gml_570_0")
        gml_Script_c_msgnextloc("* WOW!!^1!&* I'M SO [Proud] OF YOU^1, I COULD [Killed] YOU!/", "obj_ch2_sceneex2_slash_Step_0_gml_571_0")
        gml_Script_c_msgnextloc("* [Heaven]^1, are you WATCHING?/", "obj_ch2_sceneex2_slash_Step_0_gml_495_0")
        gml_Script_c_msgnextloc("* IT'S TIME TO MAKE A VERY [Specil] DEAL.../%", "obj_ch2_sceneex2_slash_Step_0_gml_496_0")
        gml_Script_c_talk_wait()
    }
    else
    {
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
        gml_Script_c_sel(su)
        gml_Script_c_sprite(996)
        gml_Script_c_shakeobj()
        gml_Script_c_sel(ra)
        gml_Script_c_sprite(1518)
        gml_Script_c_shakeobj()
    }
    gml_Script_c_mus("free")
    gml_Script_c_soundplay(248)
    if (!shortened)
        gml_Script_c_var_instance(sneo, "partmode", 41)
    gml_Script_c_wait(90)
    if shortened
    {
        gml_Script_c_fadeout(5)
        gml_Script_c_wait(15)
        gml_Script_c_pan(1640, 0, 15)
        gml_Script_c_var_lerp_instance(id, "trackspeed", 0, -15, 15, 2, "out")
        gml_Script_c_var_lerp_instance(id, "tracky0", 180, 70, 15, 2, "out")
        gml_Script_c_var_lerp_instance(id, "tracky1", 240, 150, 15, 2, "out")
        gml_Script_c_var_lerp_instance(id, "tracky2", 300, 230, 15, 2, "out")
        gml_Script_c_var_instance(coaster_kris, "x", 1721)
        gml_Script_c_var_instance(coaster_kris, "y", 60)
        gml_Script_c_var_instance(coaster_susie, "x", 1718)
        gml_Script_c_var_instance(coaster_susie, "y", 125)
        gml_Script_c_var_instance(coaster_ralsei, "x", 1727)
        gml_Script_c_var_instance(coaster_ralsei, "y", 215)
        gml_Script_c_var_instance(coaster_kris, "siner_add0", 0.1)
        gml_Script_c_var_instance(coaster_susie, "siner_add0", 0.08)
        gml_Script_c_var_instance(coaster_ralsei, "siner_add0", 0.09)
        gml_Script_c_var_instance(coaster_kris, "visible", 1)
        gml_Script_c_var_instance(coaster_kris, "character_sprite", 1412)
        gml_Script_c_var_instance(coaster_ralsei, "visible", 1)
        gml_Script_c_var_instance(coaster_ralsei, "character_sprite", 1518)
        gml_Script_c_var_instance(coaster_ralsei, "character_offset_x", -10)
        gml_Script_c_var_instance(coaster_susie, "visible", 1)
        gml_Script_c_var_instance(coaster_susie, "character_sprite", 996)
        gml_Script_c_actortokris()
        gml_Script_c_actortocaterpillar()
        gml_Script_c_wait(15)
        gml_Script_c_fadein(5)
    }
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_waitcustom()
}
if (con == 7 && customcon == 1 && special_scene == 0)
{
    con = 8
    alarm[0] = 120
    if (global.tempflag[32] == 0)
        global.tempflag[32] = 1
    with (obj_coaster)
        visible = false
    gml_Script_instance_create(x, y, o_coaster_controller_sneo)
    cityscape_active = 1
    global.flag[9] = 2
    global.batmusic[0] = gml_Script_snd_init("spamton_neo_mix_ex_wip.ogg")
    global.flag[54] = 571
    gml_Script_scr_battle(61, 1, sneo, 0, 0)
    if shortened
    {
        sneo.visible = false
        with (obj_encounterbasic)
        {
            counttimer = 14
            c[2].y -= 28
            fightcon = 2
        }
    }
    else
    {
        with (obj_encounterbasic)
        {
            counttimer = 9
            c[2].y -= 28
        }
        with (obj_doom)
            alarm[0] -= 9
    }
    with (obj_battleback)
        instance_destroy()
    global.flag[9] = 1
}
if (customcon == 1 && special_scene > 0)
{
    if (special_scene == 1)
    {
        gml_Script_instance_create(0, 0, obj_ch2_sceneex2_special)
        special_scene = 2
    }
    if (special_scene == 2 && (!gml_Script_i_ex(997)))
    {
        customcon = 0
        special_scene = 0
        gml_Script_c_waitcustom_end()
    }
}
if (con == 9 && gml_Script_i_ex(355))
{
    var battle_end = 0
    with (obj_battlecontroller)
    {
        if (intro == 2)
            battle_end = 1
    }
    if battle_end
    {
        con = 10
        with (o_coaster_hero_sneo)
            lerpstate = 2
        coaster_kris.character_sprite = 652
        coaster_susie.character_sprite = 824
        coaster_ralsei.character_sprite = 795
        alarm[0] = 5
    }
}
if (con == 11)
{
    con = 12
    alarm[0] = 10
    with (obj_bulletparent)
        instance_destroy()
    if gml_Script_i_ex(865)
        obj_battleback.destroy = 1
    if gml_Script_i_ex(355)
        instance_destroy(obj_battlecontroller)
    gml_Script_snd_free(global.batmusic[0])
    gml_Script_snd_volume(global.currentsong[1], 0, 0)
    gml_Script_snd_resume(global.currentsong[1])
    gml_Script_snd_volume(global.currentsong[1], 1, 20)
}
if ((con == 13 && (!gml_Script_i_ex(355))) || (con == 13 && forcend == 1))
{
    con = 49
    alarm[0] = 30
    coaster_kris.character_sprite = 652
    coaster_susie.character_sprite = 824
    coaster_ralsei.character_sprite = 795
    coaster_kris.visible = true
    coaster_susie.visible = true
    coaster_ralsei.visible = true
    with (obj_heroparent)
        instance_destroy()
    gml_Script_c_waitcustom_end()
    with (obj_dialoguer)
        side = 1
}
if (con == 50 && (!gml_Script_d_ex()))
{
    con = 59
    alarm[0] = 30
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 60 && (!gml_Script_i_ex(895)))
{
    con = -1
    global.interact = 0
    global.facing = 0
    with (obj_spamton_neo_enemy)
        instance_destroy()
    global.fighting = false
    room_goto(room_dw_mansion_b_east_a)
}
if rudebuster
{
    rudebuster = 0
    rudebusteranim = gml_Script_instance_create((gml_Script_camerax() - 60), 275, obj_rudebuster_bolt)
    rudebusteranim.target = sneo
}
if sneo_fly
{
    with (sneo)
        gravity = -2
    if (sneo.y <= (gml_Script_cameray() - 200))
    {
        sneo_fly = 0
        sneo.gravity = 0
        sneo.x = 840
        sneo.y = (gml_Script_cameray() - 200)
    }
}
if sneo_release
{
    if (sneo.gravity == 0)
    {
        sneo.gravity = 2
        sneo.facing = 1
        sneo.partmode = 1
    }
    if (sneo.y >= 80)
    {
        sneo_release = 0
        with (sneo)
        {
            gravity = 0
            vspeed = 0
        }
    }
}
