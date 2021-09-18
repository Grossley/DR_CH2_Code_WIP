var _temp_local_var_8;
if (desk_marker && desk_marker.visible == true)
{
    if (standing == 0)
    {
        if 890
        {
            with (obj_actor)
                depth = 110
        }
    }
    if (standing == 1)
    {
        if 890
        {
            with (obj_actor)
            {
                if (global.flag[457] == 1)
                {
                    if (name != "noelle" && name != "berdly")
                        depth = 0
                }
                else if (name != "noelle")
                    depth = 0
            }
        }
    }
    if (standing == 2)
    {
        if 890
        {
            with (obj_actor)
            {
                if (name != "noelle" && name != "berdly")
                    depth = 0
            }
        }
    }
}
if (con == 1)
{
    con = 2
    global.interact = 1
    with (obj_mainchara)
    {
        x = 187
        y = 121
        visible = false
    }
    cutscene_master = 
    "bottom"
    kr = 0
    kr_actor = gml_Script_instance_create(187, 121, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisu
    kr
    "u"
    su = 1
    su_actor = gml_Script_instance_create(157, 114, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_up_lw
    specialsprite[0] = su_actor
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    no = 2
    no_actor = gml_Script_instance_create(201, 67, obj_actor)
    gml_Script_scr_actor_setup(no, no_actor, "noelle")
    no_actor.sprite_index = spr_cutscene_28b_noelle_desk_sleep
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(0)
    14
    be = 3
    be_actor = gml_Script_instance_create(166, 68, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_cutscene_28b_berdly_desk_sleep
    be
    0
    // WARNING: Popz'd an empty stack.
    bo_no = 4
    bo_no_actor = gml_Script_instance_create(177, 100, obj_actor)
    gml_Script_scr_actor_setup(bo_no, bo_no_actor, "books")
    bo_no_actor.sprite_index = spr_cutscene_28b_books_table_noelle
    bo_no
    0
    // WARNING: Popz'd an empty stack.
    bo_be = 5
    bo_be_actor = gml_Script_instance_create(177, 100, obj_actor)
    gml_Script_scr_actor_setup(bo_be, bo_be_actor, "books")
    bo_be_actor.sprite_index = spr_cutscene_28b_books_table_berdly
    bo_be
    0
    // WARNING: Popz'd an empty stack.
}
if (con == 2)
{
    con = 3
    gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 1, 0, 30)
    60
    gml_Script_c_var_instance(id, "show_border", 1)
    if 2
    {
        60
        gml_Script_c_soundplay_x(53, 0.7, 1)
        no
        388
        30
        gml_Script_c_soundplay_x(53, 0.7, 1)
        30
        global.typer = 12
        global.darkzone = false
        "noelle"
        gml_Script_c_msgsetloc(0, "\\EF* H-huh..^1. Berdly's..^1. alarm?/", "obj_ch2_scene28b_slash_Step_0_gml_120_0")
        gml_Script_c_msgnextloc("\\E4* A dream...? It was really just a.../%", "obj_ch2_scene28b_slash_Step_0_gml_121_0")
        // WARNING: Popz'd an empty stack.
        386
        // WARNING: Popz'd an empty stack.
        60
        "noelle"
        gml_Script_c_msgsetloc(0, "\\EE* Susie!?/", "obj_ch2_scene28b_slash_Step_0_gml_131_0")
        gml_Script_c_msgnextloc("\\ES* Susie^1! What are you doing here?/", "obj_ch2_scene28b_slash_Step_0_gml_132_0")
        gml_Script_c_facenext("susie", 3)
        gml_Script_c_msgnextloc("\\E3* Uhh.../", "obj_ch2_scene28b_slash_Step_0_gml_134_0")
        gml_Script_c_msgnextloc("\\E2* You invited us to study. Remember?/%", "obj_ch2_scene28b_slash_Step_0_gml_135_0")
        // WARNING: Popz'd an empty stack.
        391
        "noelle"
        gml_Script_c_msgsetloc(0, "\\E4* Oh^1, right^1! I did^1, didn't I^1! Haha!/", "obj_ch2_scene28b_slash_Step_0_gml_142_0")
        gml_Script_c_facenext("susie", 3)
        gml_Script_c_msgnextloc("\\E3* ..^1. uhh^1, you're in a good mood./", "obj_ch2_scene28b_slash_Step_0_gml_144_0")
        gml_Script_c_msgnextloc("\\EL* Did you^1, uh^1, have a good dream?/", "obj_ch2_scene28b_slash_Step_0_gml_145_0")
        gml_Script_c_facenext("noelle", 4)
        gml_Script_c_msgnextloc("\\E4* It was a nightmare./", "obj_ch2_scene28b_slash_Step_0_gml_147_0")
        gml_Script_c_facenext("susie", 6)
        gml_Script_c_msgnextloc("\\E6* Oh./", "obj_ch2_scene28b_slash_Step_0_gml_149_0")
        gml_Script_c_facenext("noelle", "b")
        gml_Script_c_msgnextloc("\\Eb* I'm..^1. just happy I woke up./", "obj_ch2_scene28b_slash_Step_0_gml_151_0_b")
        gml_Script_c_facenext("susie", 12)
        gml_Script_c_msgnextloc("\\EC* .../", "obj_ch2_scene28b_slash_Step_0_gml_153_0")
        gml_Script_c_facenext("noelle", 6)
        gml_Script_c_msgnextloc("\\E6* The..^1. end was nice^1, though./", "obj_ch2_scene28b_slash_Step_0_gml_155_0")
        gml_Script_c_facenext("susie", 7)
        gml_Script_c_msgnextloc("\\E7* What happened?/%", "obj_ch2_scene28b_slash_Step_0_gml_157_0")
        // WARNING: Popz'd an empty stack.
        no
        386
        // WARNING: Popz'd an empty stack.
        "noelle"
        gml_Script_c_msgsetloc(0, "\\EM* HAHA^1, w-well^1, umm ---/%", "obj_ch2_scene28b_slash_Step_0_gml_168_0")
        // WARNING: Popz'd an empty stack.
        389
        "noelle"
        gml_Script_c_msgsetloc(0, "\\EO* HAHA HEY^1, Berdly time to get up and go!/%", "obj_ch2_scene28b_slash_Step_0_gml_175_0")
        // WARNING: Popz'd an empty stack.
        90
        390
        "noelle"
        gml_Script_c_msgsetloc(0, "\\E5* ..^1. Berdly?/%", "obj_ch2_scene28b_slash_Step_0_gml_184_0")
        // WARNING: Popz'd an empty stack.
        90
        no
        391
        gml_Script_c_walk("l", 5, 5)
        15
        0
        395
        gml_Script_c_var_instance(id, "standing", 1)
        gml_Script_c_walk("u", 4, 5)
        bo_no
        0
        bo_be
        0
        5
        51
        396
        "noelle"
        gml_Script_c_msgsetloc(0, "\\E4* Gosh^1, you've been studying too much^1, Berdly./", "obj_ch2_scene28b_slash_Step_0_gml_208_0")
        gml_Script_c_msgnextloc("\\E0* Honestly^1, you deserve a little rest^1, y'know?/", "obj_ch2_scene28b_slash_Step_0_gml_209_0")
        gml_Script_c_msgnextloc("\\E4* Sweet dreams!/%", "obj_ch2_scene28b_slash_Step_0_gml_210_0")
        // WARNING: Popz'd an empty stack.
        kr
        "r"
        su
        "r"
        no
        397
        0.25
        gml_Script_c_walk("r", 4, 22)
        gml_Script_c_delaywalk(24, "d", 4, 23)
        gml_Script_c_delaywalk(51, "l", 4, 34)
        23
        395
        0.25
        23
        gml_Script_c_var_instance(desk_marker, "visible", 0)
        396
        0.25
        34
        // WARNING: Popz'd an empty stack.
        398
        kr
        "d"
        su
        "d"
        "top"
        no
        392
        0.1
        24
        0
        2
        30
        su
        "d"
        kr
        "d"
        30
        "susie"
        gml_Script_c_msgsetloc(0, "\\EK* Wh..^1. what are you doing?/", "obj_ch2_scene28b_slash_Step_0_gml_271_0")
        gml_Script_c_facenext("noelle", 0)
        gml_Script_c_msgnextloc("\\E0* You don't have a tail^1, do you^1, Susie?/", "obj_ch2_scene28b_slash_Step_0_gml_273_0_b")
        gml_Script_c_facenext("susie", 17)
        gml_Script_c_msgnextloc("\\EH* H-huh!? N-no way^1, of course not!/", "obj_ch2_scene28b_slash_Step_0_gml_275_0")
        gml_Script_c_facenext("noelle", 4)
        gml_Script_c_msgnextloc("\\E4* Really? That's great!/%", "obj_ch2_scene28b_slash_Step_0_gml_277_0")
        // WARNING: Popz'd an empty stack.
        no
        395
        0.2
        gml_Script_c_walk("d", 3, 100)
        60
        "susie"
        gml_Script_c_msgsetloc(0, "\\E0* ...That was weird^1, Kris./", "obj_ch2_scene28b_slash_Step_0_gml_289_0")
        gml_Script_c_msgnextloc("\\EC* Somehow^1, it doesn't feel like we just saved the world.../%", "obj_ch2_scene28b_slash_Step_0_gml_290_0")
        // WARNING: Popz'd an empty stack.
    }
    else
    {
        be
        382
        "berdly"
        gml_Script_c_msgsetloc(0, "\\E3* H..^1. huh...?/", "obj_ch2_scene28b_slash_Step_0_gml_113_0")
        gml_Script_c_msgnextloc("* What..^1. what happened?/%", "obj_ch2_scene28b_slash_Step_0_gml_114_0")
        // WARNING: Popz'd an empty stack.
        no
        388
        "noelle"
        gml_Script_c_msgsetloc(0, "\\E9* Oh..^1. it WAS a dream^1, wasn't it.../", "obj_ch2_scene28b_slash_Step_0_gml_122_0")
        gml_Script_c_facenext("berdly", 3)
        gml_Script_c_msgnextloc("\\E3* Huh..^1. A dream? That was all..^1. A DREAM?/", "obj_ch2_scene28b_slash_Step_0_gml_124_0")
        gml_Script_c_msgnextloc("\\E0* .../", "obj_ch2_scene28b_slash_Step_0_gml_125_0")
        gml_Script_c_msgnextloc("\\E5* ..^1. Of..^1. of course!^1! That MUST have been a dream!!/", "obj_ch2_scene28b_slash_Step_0_gml_126_0")
        gml_Script_c_msgnextloc("\\E6* Such feelings..^1. such thoughts..^1. Oh^1, sweet lady of justice!!/", "obj_ch2_scene28b_slash_Step_0_gml_127_0")
        gml_Script_c_msgnextloc("\\E7* To think^1, I would ever think Susie would be.../%", "obj_ch2_scene28b_slash_Step_0_gml_128_0")
        // WARNING: Popz'd an empty stack.
        30
        386
        // WARNING: Popz'd an empty stack.
        be
        380
        // WARNING: Popz'd an empty stack.
        "berdly"
        gml_Script_c_msgsetloc(0, "\\E3* SUSIE!?/", "obj_ch2_scene28b_slash_Step_0_gml_141_0")
        gml_Script_c_facenext("noelle", "B")
        gml_Script_c_msgnextloc("\\EB* S..^1. Susie!? Wh..^1. What are you doing here!?/%", "obj_ch2_scene28b_slash_Step_0_gml_143_0")
        // WARNING: Popz'd an empty stack.
        su
        "r"
        "susie"
        gml_Script_c_msgsetloc(0, "* Uhhhh^1,/", "obj_ch2_scene28b_slash_Step_0_gml_151_0")
        gml_Script_c_msgnextloc("\\E3* ..^1. you invited us to study. Remember?/%", "obj_ch2_scene28b_slash_Step_0_gml_152_0")
        // WARNING: Popz'd an empty stack.
        no
        391
        su
        "u"
        be
        384
        "noelle"
        gml_Script_c_msgsetloc(0, "\\EJ* O-oh^1, right^1, I^1, err-- I--/%", "obj_ch2_scene28b_slash_Step_0_gml_163_0")
        // WARNING: Popz'd an empty stack.
        383
        no
        389
        "berdly"
        gml_Script_c_msgsetloc(0, "\\E3* What!? Studying with THEM??/", "obj_ch2_scene28b_slash_Step_0_gml_173_0")
        gml_Script_c_msgnextloc("\\EI* Noelle!^1! Heavens to yikes!^1! They're..^1. they're.../%", "obj_ch2_scene28b_slash_Step_0_gml_174_0")
        // WARNING: Popz'd an empty stack.
        be
        384
        "berdly"
        gml_Script_c_msgsetloc(0, "\\E9* .../%", "obj_ch2_scene28b_slash_Step_0_gml_182_0")
        // WARNING: Popz'd an empty stack.
        383
        "berdly"
        gml_Script_c_msgsetloc(0, "\\E5* ..^1. Well^1, I guess we could..^1. TRY it./%", "obj_ch2_scene28b_slash_Step_0_gml_189_0")
        // WARNING: Popz'd an empty stack.
        gml_Script_c_soundplay_x(53, 0.7, 1)
        30
        be
        380
        // WARNING: Popz'd an empty stack.
        "berdly"
        gml_Script_c_msgsetloc(0, "\\E3* H..^1. Huh?? My..^1. my alarm??/%", "obj_ch2_scene28b_slash_Step_0_gml_202_0")
        // WARNING: Popz'd an empty stack.
        "berdly"
        gml_Script_c_msgsetloc(0, "\\E3* Ahh^1, I'm going to be late for my shift with Ms. Boom!!/%", "obj_ch2_scene28b_slash_Step_0_gml_206_0")
        // WARNING: Popz'd an empty stack.
        no
        386
        // WARNING: Popz'd an empty stack.
        "noelle"
        gml_Script_c_msgsetloc(0, "\\EE* Oh no^1, how is it that late already!?/%", "obj_ch2_scene28b_slash_Step_0_gml_214_0")
        // WARNING: Popz'd an empty stack.
        be
        384
        if (global.flag[457] == 0)
            gml_Script_c_walk("l", 6, 2)
        no
        389
        "berdly"
        gml_Script_c_msgsetloc(0, "\\E1* Well^1, adieu^1, everyone. I must gather my booklongings./%", "obj_ch2_scene28b_slash_Step_0_gml_226_0")
        // WARNING: Popz'd an empty stack.
        if (global.flag[457] == 1)
        {
            51
            bo_be
            0
            gml_Script_c_var_instance(id, "standing", 1)
            be
            0
            3282
            // WARNING: Popz'd an empty stack.
            gml_Script_c_walk("u", 4, 4)
            15
            "berdly"
            gml_Script_c_msgsetloc(0, "\\E1* Ahh^1, how I love the texture of freshly-picked-up books!/%", "obj_ch2_scene28b_slash_Step_0_gml_469_0")
            // WARNING: Popz'd an empty stack.
            no
            391
            5
            0
            395
            gml_Script_c_walk("u", 4, 5)
            bo_no
            0
            5
            51
            no
            396
            be
            9
            gml_Script_c_var_instance(id, "standing", 2)
            "berdly"
            gml_Script_c_msgsetloc(0, "* Now^1, let us hasten^1, my dear Noelle!/%", "obj_ch2_scene28b_slash_Step_0_gml_493_0")
            // WARNING: Popz'd an empty stack.
            kr
            "r"
            su
            "r"
            be
            3282
            0.25
            9
            0.25
            gml_Script_c_walkdirect(264, 55, 37)
            gml_Script_c_delaycmd(38, "imagespeed", 0.25)
            gml_Script_c_delaycmd(38, "sprite", 3282)
            gml_Script_c_delaywalk(38, "d", 3, 30)
            gml_Script_c_delaycmd(69, "imagespeed", 0.25)
            gml_Script_c_delaycmd(69, "sprite", 3326)
            gml_Script_c_delaywalk(69, "l", 4, 20)
            gml_Script_c_delaycmd(90, "sprite", 3325)
            gml_Script_c_delaycmd(90, "imagespeed", 0)
        }
        else
        {
            be
            378
            gml_Script_c_emote("?", 30)
            30
            379
            "berdly"
            gml_Script_c_msgsetloc(0, "\\E5* H..^1. huh? That's funny^1, my right arm..^1. won't move./", "obj_ch2_scene28b_slash_Step_0_gml_237_0")
            gml_Script_c_facenext("noelle", "C")
            gml_Script_c_msgnextloc("\\EC* O-oh...? It must have fallen asleep./%", "obj_ch2_scene28b_slash_Step_0_gml_239_0")
            // WARNING: Popz'd an empty stack.
            no
            391
            gml_Script_c_walk("l", 5, 5)
            15
            0
            395
            gml_Script_c_var_instance(id, "standing", 1)
            gml_Script_c_walk("u", 4, 5)
            bo_no
            0
            bo_be
            0
            5
            51
            396
            "noelle"
            gml_Script_c_msgsetloc(0, "\\E4* Here. I'll carry your books for you^1, Berdly./%", "obj_ch2_scene28b_slash_Step_0_gml_264_0")
            // WARNING: Popz'd an empty stack.
            be
            410
            gml_Script_c_var_instance(id, "standing", 2)
            "berdly"
            gml_Script_c_msgsetloc(0, "\\E5* Ah^1, Noelle..^1. You're..^1. always helping me. Thank you./%", "obj_ch2_scene28b_slash_Step_0_gml_273_0")
            // WARNING: Popz'd an empty stack.
            kr
            "r"
            su
            "r"
            be
            3295
            0.25
            gml_Script_c_walk_wait("u", 4, 4)
            gml_Script_c_actorsetsprites(be_actor, 0, 410, 3295, 0)
            1
            gml_Script_c_walk("r", 3, 37)
            gml_Script_c_delaywalk(38, "d", 3, 30)
            gml_Script_c_delaywalk(69, "l", 4, 20)
            gml_Script_c_delayfacing(90, "u")
        }
        no
        397
        0.25
        gml_Script_c_walkdirect(263, 50, 22)
        gml_Script_c_delaywalk(24, "d", 4, 23)
        gml_Script_c_delaywalk(51, "l", 4, 34)
        23
        395
        0.25
        23
        gml_Script_c_var_instance(desk_marker, "visible", 0)
        396
        0.25
        34
        // WARNING: Popz'd an empty stack.
        398
        kr
        "d"
        su
        "d"
        30
        "top"
        "berdly"
        gml_Script_c_msgsetloc(0, "* ..^1. Good day^1, Kris. ..^1. Susie./%", "obj_ch2_scene28b_slash_Step_0_gml_325_0")
        // WARNING: Popz'd an empty stack.
        be
        if (global.flag[457] == 0)
            1
        else
        {
            3282
            0.25
        }
        gml_Script_c_walkdirect_wait(148, 181, 14)
        gml_Script_c_walk_wait("d", 4, 30)
        // WARNING: Popz'd an empty stack.
        "noelle"
        gml_Script_c_msgsetloc(0, "\\E0* Bye Kris!/", "obj_ch2_scene28b_slash_Step_0_gml_334_0")
        gml_Script_c_msgnextloc("\\EO* And..^1. umm..^1. bye^1, Susie!/%", "obj_ch2_scene28b_slash_Step_0_gml_335_0")
        // WARNING: Popz'd an empty stack.
        kr
        "l"
        su
        "l"
        "susie"
        gml_Script_c_msgsetloc(0, "\\EB* Umm..^1. see ya./%", "obj_ch2_scene28b_slash_Step_0_gml_346_0")
        // WARNING: Popz'd an empty stack.
        kr
        "u"
        su
        "u"
        no
        395
        0.25
        gml_Script_c_walk_wait("d", 1, 30)
        15
        398
        15
        392
        0.1
        24
        0
        2
        30
        su
        0
        402
        gml_Script_c_arg_objectxy(su_actor, -15, 0)
        gml_Script_c_setxy(x, y)
        214
        kr
        "d"
        30
        su
        400
        66
        0
        gml_Script_c_walkdirect_wait(142, 139, 3)
        gml_Script_c_var_instance(id, "susie_mad", 1)
        "susie"
        gml_Script_c_msgsetloc(0, "\\EH* WHAT!? WHAT!? Are you looking for something!?/%", "obj_ch2_scene28b_slash_Step_0_gml_402_0")
        // WARNING: Popz'd an empty stack.
        no
        218
        395
        0.25
        gml_Script_c_walk("d", 5, 20)
        gml_Script_c_delaycmd(20, "soundplay", 62)
        gml_Script_c_var_instance(id, "susie_mad", 0)
        su
        gml_Script_c_setxy(142, 139)
        "noelle"
        gml_Script_c_msgsetloc(0, "\\EE* N-nothing!^1! B-bye!!/%", "obj_ch2_scene28b_slash_Step_0_gml_418_0")
        // WARNING: Popz'd an empty stack.
        15
        su
        gml_Script_c_arg_objectxy(su_actor, 15, 0)
        gml_Script_c_setxy(x, y)
        "u"
        1
        1
        gml_Script_c_walk_wait("u", 1, 23)
        30
        "r"
        "susie"
        gml_Script_c_msgsetloc(0, "* The heck is her problem^1, anyway?/", "obj_ch2_scene28b_slash_Step_0_gml_434_0")
        gml_Script_c_msgnextloc("* Way to treat someone who just saved the WORLD./%", "obj_ch2_scene28b_slash_Step_0_gml_435_0")
        // WARNING: Popz'd an empty stack.
    }
    5
    su
    21
    // WARNING: Popz'd an empty stack.
    60
    0
    14
    0.5
    gml_Script_c_arg_objectxy(su_actor, 18, 2)
    gml_Script_c_setxy(x, y)
    "x"
    kr
    0
    "susie"
    gml_Script_c_msgsetloc(0, "\\EE* KRIS!^1! Hey^1, wait a sec^1, Kris!!/", "obj_ch2_scene28b_slash_Step_0_gml_460_0")
    gml_Script_c_msgnextloc("\\EP* We..^1. we just actually saved the world^1, didn't we!?/", "obj_ch2_scene28b_slash_Step_0_gml_461_0")
    gml_Script_c_msgnextloc("\\EP* Damn^1, we really are heroes^1!/", "obj_ch2_scene28b_slash_Step_0_gml_462_0")
    gml_Script_c_msgnextloc("\\EN* And no one even knows!/%", "obj_ch2_scene28b_slash_Step_0_gml_463_0")
    // WARNING: Popz'd an empty stack.
    1
    "l"
    su
    1
    846
    gml_Script_c_arg_objectxy(su_actor, 0, -2)
    gml_Script_c_setxy(x, y)
    "x"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EO* ..^1. guess it's better that way though^1, right?/%", "obj_ch2_scene28b_slash_Step_0_gml_478_0")
    // WARNING: Popz'd an empty stack.
    "r"
    "susie"
    gml_Script_c_msgsetloc(0, "\\EP* People'd freak out if they knew the world's in danger./%", "obj_ch2_scene28b_slash_Step_0_gml_485_0")
    // WARNING: Popz'd an empty stack.
    0
    856
    gml_Script_c_arg_objectxy(su_actor, -5, -2)
    gml_Script_c_setxy(x, y)
    0.25
    "susie"
    gml_Script_c_msgsetloc(0, "\\EB* ..^1. though^1, kinda sucks Noelle has to forget^1, too.../", "obj_ch2_scene28b_slash_Step_0_gml_495_0")
    gml_Script_c_msgnextloc("\\E0* .../%", "obj_ch2_scene28b_slash_Step_0_gml_496_0")
    // WARNING: Popz'd an empty stack.
    1
    "r"
    gml_Script_c_arg_objectxy(su_actor, 5, 2)
    gml_Script_c_setxy(x, y)
    "susie"
    gml_Script_c_msgsetloc(0, "\\E1* Whatever. Let's get out of here./%", "obj_ch2_scene28b_slash_Step_0_gml_506_0")
    // WARNING: Popz'd an empty stack.
    kr
    "d"
    su
    gml_Script_c_walkdirect_wait(146, 162, 15)
    gml_Script_c_walk_wait("d", 4, 30)
    62
    30
}
if (con == 3)
{
    con = 50
    global.facing = 0
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 50 && (!895))
{
    global.interact = 0
    global.facing = 0
    con = 51
    global.plot = 200
    layer_set_visible("GIVE_DEPTH", 1)
    gml_Script_instance_create(0, 0, obj_bg_givedepth)
    desk_marker
}
if (con == 51 && obj_mainchara.y >= 186)
{
    global.interact = 1
    kris_leave = 1
    con = 52
}
if (kris_leave && con == 52)
{
    con = 53
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 0, 1, 30)
    45
    "no_one"
    gml_Script_c_msgsetloc(0, "* (Before you left, you gathered up everything in the room...)/%", "obj_ch2_scene28b_slash_Step_0_gml_561_0")
    // WARNING: Popz'd an empty stack.
    30
    // WARNING: Popz'd an empty stack.
}
if (con == 53 && customcon == 1)
{
    con = 55
    global.interact = 3
    global.entrance = 23
    gml_Script_instance_create(0, 0, obj_persistentfadein)
    51
}
if susie_mad
{
    susie_mad_timer++
    if (susie_mad_timer >= 2)
    {
        susie_mad_timer = 0
        var _temp_local_var_8 = su_actor
        x = (142 + choose(-2, -1, 1, 2))
        y = (139 + choose(-2, -1, 1, 2))
    }
}
