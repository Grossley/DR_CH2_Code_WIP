if (con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    gml_Script_c_sel(kr)
    gml_Script_c_visible(0)
    su = (actor_count + 1)
    su_actor = gml_Script_instance_create(280, 220, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_back_arm
    no = (actor_count + 2)
    no_actor = gml_Script_instance_create(230, 220, obj_actor)
    gml_Script_scr_actor_setup(no, no_actor, "noelle")
    no_actor.sprite_index = spr_noelle_walk_right_dw
    be = (actor_count + 3)
    be_actor = gml_Script_instance_create(380, (gml_Script_cameray() - 200), obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_left_dw
    save_object[0] = cutscene_master
    var _temp_local_var_1 = id
}
if (con == 1)
{
    con = 49
    alarm[0] = 30
    gml_Script_c_msgside("bottom")
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 1, 0, 30)
    gml_Script_c_wait(30)
    gml_Script_c_msgside("top")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EL* Well^1, that wasn't too bad./", "obj_ch2_scene23d_slash_Step_0_gml_52_0")
    gml_Script_c_facenext("noelle", "4")
    gml_Script_c_msgnextloc("\\E4* Y..^1. yeah./%", "obj_ch2_scene23d_slash_Step_0_gml_54_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(215)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(1)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E9* ..^1. sigh./%", "obj_ch2_scene23d_slash_Step_0_gml_64_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* ...?/", "obj_ch2_scene23d_slash_Step_0_gml_71_0")
    gml_Script_c_facenext("noelle", 6)
    gml_Script_c_msgnextloc("\\E6* If only I could dream like this every day.../%", "obj_ch2_scene23d_slash_Step_0_gml_73_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* Maybe.../", "obj_ch2_scene23d_slash_Step_0_gml_83_0")
    gml_Script_c_msgnextloc("\\EK* It..^1. doesn't have to be a dream. Y'know?/%", "obj_ch2_scene23d_slash_Step_0_gml_84_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E2* Susie...?/", "obj_ch2_scene23d_slash_Step_0_gml_92_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* Maybe..^1. maybe someday we could.../%", "obj_ch2_scene23d_slash_Step_0_gml_94_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "release_berdly", 1)
    gml_Script_c_wait(30)
    gml_Script_c_mus("free_all")
    gml_Script_c_mus2("initplay", "berdly_descend.ogg", 0)
    gml_Script_c_mus2("pitch", 0.7, 0)
    gml_Script_c_wait(30)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(716)
    gml_Script_c_sel(su)
    gml_Script_c_sprite(996)
    gml_Script_c_wait(160)
    gml_Script_c_wait(30)
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_sel(no)
    gml_Script_c_facing("r")
    gml_Script_c_mus("free")
    gml_Script_c_mus2("initloop", "berdly_theme.ogg", 0)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E6* Noelle^1! My lady!^1! The Cavalry has arrived to rescue you!!/%", "obj_ch2_scene23d_slash_Step_0_gml_129_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EH* (Oh^1, the good part of the dream is over.)/%", "obj_ch2_scene23d_slash_Step_0_gml_136_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_sel(no)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E5* It's fine!!^1! Berdly's gonna help!^1! We're allies!!/%", "obj_ch2_scene23d_slash_Step_0_gml_147_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_var_instance(id, "hide_berdly", 1)
    gml_Script_c_sel(be)
    gml_Script_c_setxy(380, 230)
    gml_Script_c_autowalk(1)
    gml_Script_c_walk("l", 6, 8)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EJ* Yes!^1! Don't worry^1, Noelle!^1! I'm stupid now!!/", "obj_ch2_scene23d_slash_Step_0_gml_159_0")
    gml_Script_c_facenext("noelle", "2")
    gml_Script_c_msgnextloc("\\E2* .../%", "obj_ch2_scene23d_slash_Step_0_gml_161_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E5* (He's good!!!)/%", "obj_ch2_scene23d_slash_Step_0_gml_170_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect_wait(280, 246, 10)
    gml_Script_c_wait(15)
    gml_Script_c_facing("u")
    gml_Script_c_sel(no)
    gml_Script_c_facing("d")
    gml_Script_c_sel(be)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Look^1, I gotta go save the day now^1, alright?/", "obj_ch2_scene23d_slash_Step_0_gml_189_0")
    gml_Script_c_facenext("noelle", 23)
    gml_Script_c_msgnextloc("\\EN* H..^1. huh!? Umm..^1. good luck^1, Susie!!/%", "obj_ch2_scene23d_slash_Step_0_gml_191_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EL* Alright^1, nugget boy. it's up to you now./", "obj_ch2_scene23d_slash_Step_0_gml_199_0")
    gml_Script_c_facenext("berdly", "E")
    gml_Script_c_msgnextloc("\\EE* Leave it to me^1, my dear Susan./", "obj_ch2_scene23d_slash_Step_0_gml_201_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* Yeah^1, whatever. May the smarts be with you./%", "obj_ch2_scene23d_slash_Step_0_gml_203_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(10)
    gml_Script_c_soundplay(159)
    gml_Script_c_jump_sprite(278, ((gml_Script_cameray() + view_hport[0]) + 200), 20, 30, 534, 548)
    gml_Script_c_wait(30)
    gml_Script_c_sel(no)
    gml_Script_c_walkdirect(263, 244, 15)
    gml_Script_c_sel(be)
    gml_Script_c_walkdirect(326, 256, 15)
    gml_Script_c_wait(15)
    gml_Script_c_sel(no)
    gml_Script_c_facing("d")
    gml_Script_c_sel(be)
    gml_Script_c_facing("berdlyunhappy")
    gml_Script_c_facing("d")
    gml_Script_c_wait(30)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E0* Ah..^1. she left before I could.../", "obj_ch2_scene23d_slash_Step_0_gml_233_0")
    gml_Script_c_msgnextloc("\\E9* ..../%", "obj_ch2_scene23d_slash_Step_0_gml_234_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E9* Noelle. It's hard to say this./", "obj_ch2_scene23d_slash_Step_0_gml_242_0")
    gml_Script_c_msgnextloc("\\E5* You've done so much for me^1, and I.../", "obj_ch2_scene23d_slash_Step_0_gml_243_0")
    gml_Script_c_msgnextloc("\\E8* Noelle..^1. I'm sorry./%", "obj_ch2_scene23d_slash_Step_0_gml_244_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EF* Berdly...? You're..^1. actually apologizing?/%", "obj_ch2_scene23d_slash_Step_0_gml_252_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("d")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E9* ..^1. Thank you. I..^1. I understand^1, you know?/", "obj_ch2_scene23d_slash_Step_0_gml_259_0")
    gml_Script_c_msgnextloc("\\E2* You've always..^1. been nice to me when it's just the two of us./%", "obj_ch2_scene23d_slash_Step_0_gml_260_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("r")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E4* You just wanted to make a happy world for me./%", "obj_ch2_scene23d_slash_Step_0_gml_267_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("l")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EH* I'm..^1. glad you realized^1, um..^1. it sucked./%", "obj_ch2_scene23d_slash_Step_0_gml_274_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E3* Oh./%", "obj_ch2_scene23d_slash_Step_0_gml_282_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E2* Huh?/%", "obj_ch2_scene23d_slash_Step_0_gml_290_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_facing("berdlydark")
    gml_Script_c_facing("l")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EI* I mean^1, YES^1, I WAS^1, in a WAY^1,/", "obj_ch2_scene23d_slash_Step_0_gml_299_0")
    gml_Script_c_msgnextloc("\\E4* Apologizing for THAT^1, but./%", "obj_ch2_scene23d_slash_Step_0_gml_300_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("d")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E5* I also wanted to apologize./%", "obj_ch2_scene23d_slash_Step_0_gml_307_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(681)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EG* For leading you on./", "obj_ch2_scene23d_slash_Step_0_gml_314_0")
    gml_Script_c_facenext("noelle", 16)
    gml_Script_c_msgnextloc("\\EG /", "obj_ch2_scene23d_slash_Step_0_gml_316_0")
    gml_Script_c_facenext("berdly", 8)
    gml_Script_c_msgnextloc("\\E8* I know you only always helped me out because^1, well.../%", "obj_ch2_scene23d_slash_Step_0_gml_318_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autofacing(0)
    gml_Script_c_sprite(674)
    gml_Script_c_walk_wait("r", 5, 10)
    gml_Script_c_wait(15)
    gml_Script_c_sprite(681)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EH* You had a crush on me^1, so.../%", "obj_ch2_scene23d_slash_Step_0_gml_327_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(716)
    gml_Script_c_shakeobj()
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EI* WHAT?/%", "obj_ch2_scene23d_slash_Step_0_gml_338_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_autofacing(1)
    gml_Script_c_walk_wait("l", 5, 10)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E3* O-oh^1, sorry^1! Please^1, don't be embarrassed!/%", "obj_ch2_scene23d_slash_Step_0_gml_346_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("d")
    gml_Script_c_sel(no)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E4* It's understandable. But^1, I..^1. I have to tell you I.../%", "obj_ch2_scene23d_slash_Step_0_gml_356_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_sprite(682)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E5* I really value your friendship^1, OK? So I.../", "obj_ch2_scene23d_slash_Step_0_gml_364_0")
    gml_Script_c_msgnextloc("\\EG* I..^1. felt I had to pretend to reciprocate those feelings.../%", "obj_ch2_scene23d_slash_Step_0_gml_365_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(716)
    gml_Script_c_shakeobj()
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EI* WHAT? But I..^1. I don't -- I never --/%", "obj_ch2_scene23d_slash_Step_0_gml_374_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_autofacing(1)
    gml_Script_c_walk("r", 5, 10)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E5* Furthermore^1, I think I may have.../%", "obj_ch2_scene23d_slash_Step_0_gml_382_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EM* Discovered someone else for me./%", "obj_ch2_scene23d_slash_Step_0_gml_392_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(716)
    gml_Script_c_shakeobj()
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EH* HUH????????????/%", "obj_ch2_scene23d_slash_Step_0_gml_401_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_walkdirect_wait(302, 252, 10)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E5* Please don't be jealous./", "obj_ch2_scene23d_slash_Step_0_gml_410_0")
    gml_Script_c_facenext("noelle", "I")
    gml_Script_c_msgnextloc("\\EI* OF????????????????&???????????????/%", "obj_ch2_scene23d_slash_Step_0_gml_412_0")
    gml_Script_c_talk_wait()
    gml_Script_c_mus("stop")
    gml_Script_c_mus("free_all")
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E4* Susie/%", "obj_ch2_scene23d_slash_Step_0_gml_419_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_visible(0)
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(227)
    gml_Script_c_addxy(6, -4)
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(166)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.25)
    if (global.lang != "ja")
    {
        for (var _n = 0; _n < 12; _n++)
        {
            gml_Script_c_delaycmd((19 + (_n * 16)), "shakeobj", 0)
            gml_Script_c_delaycmd((19 + (_n * 16)), "soundplay", 166)
        }
    }
    else
    {
        var n_offset = 0
        for (_n = 0; _n < 11; _n++)
        {
            if (_n == 5)
                n_offset = 2
            if (_n == 6)
                n_offset = -3
            gml_Script_c_delaycmd(((19 + (_n * 12)) + n_offset), "shakeobj", 0)
            gml_Script_c_delaycmd(((19 + (_n * 12)) + n_offset), "soundplay", 166)
        }
    }
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\s0\\EK* WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2? WHAT^2?%%", "obj_ch2_scene23d_slash_Step_0_gml_433_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(blackall, "image_alpha", 1)
    gml_Script_c_wait(120)
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 50 && (!gml_Script_i_ex(895)))
{
    con = 0
    global.flag[319] = 3
    room_goto(room_dw_mansion_acid_tunnel_exit)
}
if release_berdly
{
    release_berdly = 0
    berdly_glide = gml_Script_instance_create(-100, -100, obj_berdly_rose)
}
if hide_berdly
{
    hide_berdly = 0
    var _temp_local_var_3 = berdly_glide
    instance_destroy()
}
