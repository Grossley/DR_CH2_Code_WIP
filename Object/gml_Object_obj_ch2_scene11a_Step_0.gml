var _temp_local_var_2;
if (obj_mainchara.x > 440 && obj_mainchara.y < 300 && con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    save_object[0] = cutscene_master
    gml_Script_scr_maincharacters_actors()
    qu = (actor_count + 1)
    qu_actor = gml_Script_instance_create((gml_Script_camerax() + 700), 120, obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_queen_chair_2
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_visible(0)
    be = (actor_count + 2)
    be_actor = gml_Script_instance_create((gml_Script_camerax() + 700), 120, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_defeat
    gml_Script_c_sel(be)
    gml_Script_c_autodepth(0)
    gml_Script_c_depth(100)
    gml_Script_c_visible(0)
    qu_flame = (actor_count + 3)
    qu_flame_actor = gml_Script_scr_dark_marker((gml_Script_camerax() + 700), 120, 764)
    gml_Script_scr_actor_setup_nofacing(qu_flame, qu_flame_actor, "qu_flame")
    gml_Script_c_sel(qu_flame)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_stickto(qu_actor, 100)
    gml_Script_c_visible(0)
    capsule1 = gml_Script_instance_create(963, (gml_Script_cameray() - 200), obj_ch2_capsule)
    capsule1.visible = false
    capsule2 = gml_Script_instance_create(729, (gml_Script_cameray() - 200), obj_ch2_capsule)
    capsule2.visible = false
    capsule3 = gml_Script_instance_create(649, (gml_Script_cameray() - 200), obj_ch2_capsule)
    capsule3.visible = false
    var _temp_local_var_2 = id
}
if (auto_text && customcon == 1)
{
    pan_timer++
    if (noise_con == -2)
    {
        noise_con = -1
        alarm[2] = 30
    }
    if (noise_con == 0)
    {
        noise_con = 1
        alarm[2] = 30
        gml_Script_snd_play(61)
    }
    if (noise_con == 2)
    {
        noise_con = 3
        alarm[2] = 30
        gml_Script_snd_play(185)
    }
    if (noise_con == 4)
    {
        noise_con = 5
        alarm[2] = 30
        gml_Script_snd_play(59)
    }
    if (noise_con == 6)
    {
        noise_con = 7
        alarm[2] = 30
        gml_Script_snd_play(56)
    }
    if (noise_con == 8)
    {
        noise_con = 9
        alarm[2] = 30
        gml_Script_snd_play(66)
    }
    if (noise_con == 10)
    {
        noise_con = 11
        alarm[2] = 30
        gml_Script_snd_play(51)
    }
    if (noise_con == 12)
    {
        noise_con = 13
        alarm[2] = 30
        gml_Script_snd_play(177)
    }
    if (noise_con == 14)
    {
        noise_con = 99
        gml_Script_snd_play(61)
    }
    if (auto_con == -1)
    {
        auto_con = 0
        alarm[1] = 30
        coaster_entry.depth = 5010
        coaster_entry_hood.depth = 5000
        coaster_kris.visible = true
        coaster_susie.visible = true
        coaster_ralsei.visible = true
    }
    if (auto_con == 1)
    {
        auto_con = 2
        alarm[1] = 75
        if (!shortened)
        {
            gml_Script_scr_speaker("susie")
            gml_Script_msgsetloc(0, "\\E6* Hey^1, what the hell are these things?/%", "obj_ch2_scene11a_slash_Step_0_gml_131_0")
            var d = gml_Script_d_make()
            d.zurasu = 1
        }
    }
    if (auto_con == 3 && (!gml_Script_d_ex()))
    {
        auto_con = 4
        alarm[1] = 75
        with (obj_ch2_scene11a_bg)
            fountain_active = 1
        if (!shortened)
        {
            gml_Script_scr_speaker("ralsei")
            gml_Script_msgsetloc(0, "\\EJ* Hmm..^1. Looks like if we ride them.../%", "obj_ch2_scene11a_slash_Step_0_gml_142_0")
            d = gml_Script_d_make()
            d.zurasu = 1
        }
    }
    if (auto_con == 5 && (!gml_Script_d_ex()))
    {
        auto_con = 6
        alarm[1] = 75
        if (!shortened)
        {
            gml_Script_scr_speaker("ralsei")
            gml_Script_msgsetloc(0, "\\E2* They might bring us over to the Fountain!/%", "obj_ch2_scene11a_slash_Step_0_gml_153_0")
            d = gml_Script_d_make()
            d.zurasu = 1
        }
    }
    if (auto_con == 7 && (!gml_Script_d_ex()))
    {
        auto_con = 8
        alarm[1] = 75
        if (!shortened)
        {
            gml_Script_scr_speaker("susie")
            gml_Script_msgsetloc(0, "\\E7* Really?^1! Then let's get on!!/%", "obj_ch2_scene11a_slash_Step_0_gml_166_0")
            d = gml_Script_d_make()
            d.zurasu = 1
        }
    }
    if (auto_con == 9 && (!gml_Script_d_ex()) && pan_timer >= 350)
    {
        auto_con = 99
        auto_text = 0
        pan_timer = 0
        customcon = 0
        con = 2
    }
}
if (con == 1)
{
    con = 99
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect(478, (kr_actor.y - 40), 15)
    gml_Script_c_delaycmd(16, "visible", 0)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(478, kr_actor.y, 15)
    gml_Script_c_delaywalk(16, "u", 4, 20)
    gml_Script_c_delaycmd(37, "visible", 0)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(478, kr_actor.y, 25)
    gml_Script_c_delaywalk(26, "u", 4, 20)
    gml_Script_c_delaycmd(47, "visible", 0)
    gml_Script_c_wait(50)
    gml_Script_c_pannable(1)
    gml_Script_c_pan(650, 0, 350)
    gml_Script_c_var_instance(id, "auto_text", 1)
    gml_Script_c_waitcustom()
}
if (con == 2 && customcon == 0)
{
    con = 3
    gml_Script_c_waitcustom_end()
    gml_Script_c_panspeed(15, 0, 30)
    gml_Script_c_var_lerp_instance(coaster_kris, "x", coaster_kris.x, 1220, 20)
    gml_Script_c_var_lerp_instance(coaster_susie, "x", coaster_susie.x, 1220, 20)
    gml_Script_c_var_lerp_instance(coaster_ralsei, "x", coaster_ralsei.x, 1220, 20)
    gml_Script_c_wait(21)
    gml_Script_c_var_instance(coaster_kris, "siner_add0", 0.1)
    gml_Script_c_var_instance(coaster_susie, "siner_add0", 0.08)
    gml_Script_c_var_instance(coaster_ralsei, "siner_add0", 0.09)
    gml_Script_c_wait(5)
    gml_Script_c_var_instance(id, "looptrack", 1)
    gml_Script_c_var_instance(id, "loopcity", 1)
    gml_Script_c_wait(46)
    if shortened
    {
        con = 11
        tempcon = 0
        gml_Script_c_var_instance(coaster_berdly, "character_sprite", 1844)
        gml_Script_c_var_instance(coaster_berdly, "character_offset_x", -52)
        gml_Script_c_var_lerp_instance(coaster_berdly, "x", 1800, 1650, 15)
        gml_Script_c_wait(10)
        gml_Script_c_waitcustom()
    }
    else
    {
        gml_Script_c_sel(qu)
        gml_Script_c_setxy(1790, 90)
        gml_Script_c_sel(qu_flame)
        gml_Script_c_visible(1)
        gml_Script_c_sel(qu)
        gml_Script_c_visible(1)
        gml_Script_c_autowalk(0)
        gml_Script_c_walkdirect_wait(1585, 90, 20)
        gml_Script_c_mus2("initloop", "queen.ogg", 0)
        gml_Script_c_wait(20)
        gml_Script_c_msgside("bottom")
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E6* Enough You Foolish Children/", "obj_ch2_scene11a_slash_Step_0_gml_256_0")
        gml_Script_c_msgnextloc("\\E1* I Have Been Merciful To You Thus Far But Now Is Time For:/", "obj_ch2_scene11a_slash_Step_0_gml_257_0")
        gml_Script_c_msgnextloc("\\E7* Your Unwillful Imprisonment (Capture)/", "obj_ch2_scene11a_slash_Step_0_gml_258_0")
        gml_Script_c_msgnextloc("\\E6* Drop The Capturing Capsules/%", "obj_ch2_scene11a_slash_Step_0_gml_259_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(capsule1, "x", 1110)
        gml_Script_c_var_instance(capsule1, "visible", 1)
        gml_Script_c_var_instance(capsule1, "con", 2)
        gml_Script_c_var_instance(capsule2, "x", 1330)
        gml_Script_c_var_instance(capsule2, "visible", 1)
        gml_Script_c_var_instance(capsule2, "con", 2)
        gml_Script_c_var_instance(capsule3, "x", 1465)
        gml_Script_c_var_instance(capsule3, "visible", 1)
        gml_Script_c_var_instance(capsule3, "con", 2)
        gml_Script_c_wait(15)
        gml_Script_c_sprite(1876)
        gml_Script_c_var_lerp_instance(capsule1, "y", -200, ((gml_Script_cameray() + view_hport[0]) + 300), 30)
        gml_Script_c_var_lerp_instance(capsule2, "y", -200, ((gml_Script_cameray() + view_hport[0]) + 300), 30)
        gml_Script_c_var_lerp_instance(capsule3, "y", -200, ((gml_Script_cameray() + view_hport[0]) + 300), 30)
        gml_Script_c_wait(5)
        gml_Script_c_soundplay(45)
        gml_Script_c_soundplay(154)
        gml_Script_c_wait(75)
        gml_Script_c_sprite(1881)
        gml_Script_c_var_instance(coaster_ralsei, "character_sprite", 784)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\EM* ..^1. err^1, you missed./", "obj_ch2_scene11a_slash_Step_0_gml_298_0")
        gml_Script_c_facenext("queen", "1")
        gml_Script_c_msgnextloc("\\E1* That Was Not A Miss It Was A Tactical Calibration/", "obj_ch2_scene11a_slash_Step_0_gml_300_0")
        gml_Script_c_facenext("susie", "C")
        gml_Script_c_msgnextloc("\\EC* ..^1. so^1, uh^1, are you gonna try it again?/%", "obj_ch2_scene11a_slash_Step_0_gml_302_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(coaster_ralsei, "character_sprite", 794)
        gml_Script_c_sel(qu)
        gml_Script_c_soundplay(292)
        gml_Script_c_sprite(759)
        gml_Script_c_imageindex(0)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_sel(qu_flame)
        gml_Script_c_sprite(763)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\EN* No I Only Have Like 4 Cages/%", "obj_ch2_scene11a_slash_Step_0_gml_317_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(qu)
        gml_Script_c_sprite(1881)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_sel(qu_flame)
        gml_Script_c_sprite(764)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E1* OK Wait/", "obj_ch2_scene11a_slash_Step_0_gml_331_0")
        gml_Script_c_msgnextloc("\\ED* I Have A Small Plot Twist For You/", "obj_ch2_scene11a_slash_Step_0_gml_332_0")
        gml_Script_c_msgnextloc("\\E6* Come Forward My..^1. Peon/%", "obj_ch2_scene11a_slash_Step_0_gml_333_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(qu)
        gml_Script_c_autowalk(0)
        gml_Script_c_walkdirect(1585, 4, 15)
        gml_Script_c_wait(10)
        gml_Script_c_var_instance(coaster_susie, "character_sprite", 844)
        gml_Script_c_var_instance(coaster_noelle, "character_sprite", 215)
        gml_Script_c_var_instance(coaster_noelle, "animate", 0)
        gml_Script_c_var_lerp_instance(coaster_noelle, "x", 1890, 1490, 20)
        gml_Script_c_wait(12)
        gml_Script_c_var_instance(coaster_noelle, "siner_add0", 0.1)
        gml_Script_c_wait(30)
        gml_Script_c_var_instance(coaster_noelle, "character_sprite", 721)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E4* U..^1. um..^1. s-sorry^1, I just couldn't say no./", "obj_ch2_scene11a_slash_Step_0_gml_356_0")
        gml_Script_c_facenext("susie", "6")
        gml_Script_c_msgnextloc("\\E6* Noelle!?/%", "obj_ch2_scene11a_slash_Step_0_gml_358_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(coaster_noelle, "character_sprite", 215)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\EM* H..^1. hi^1, Susie. Umm^1, how are you?/", "obj_ch2_scene11a_slash_Step_0_gml_362_0")
        gml_Script_c_facenext("susie", "C")
        gml_Script_c_var_instance(coaster_susie, "character_sprite", 824)
        gml_Script_c_msgnextloc("\\EC* Umm^1, okay^1, I guess?/", "obj_ch2_scene11a_slash_Step_0_gml_364_0")
        gml_Script_c_facenext("noelle", "M")
        gml_Script_c_msgnextloc("\\EM* Your..^1. um..^1. roller coaster is^1, um..^1. I like it!/", "obj_ch2_scene11a_slash_Step_0_gml_366_0")
        gml_Script_c_facenext("susie", "K")
        gml_Script_c_msgnextloc("\\EK* Uhh..^1. yours too?/", "obj_ch2_scene11a_slash_Step_0_gml_368_0")
        gml_Script_c_facenext("noelle", "M")
        gml_Script_c_msgnextloc("\\EM* Th..^1. thanks!/", "obj_ch2_scene11a_slash_Step_0_gml_370_0")
        gml_Script_c_facenext("susie", "K")
        gml_Script_c_msgnextloc("\\EK* .../%", "obj_ch2_scene11a_slash_Step_0_gml_372_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(90)
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\ED* Okay This Isn't Working Bring In The Next Guy/%", "obj_ch2_scene11a_slash_Step_0_gml_383_0")
        gml_Script_c_talk_wait()
        gml_Script_c_mus("free")
        gml_Script_c_var_instance(coaster_berdly, "character_sprite", 683)
        gml_Script_c_var_instance(coaster_berdly, "animate", 1)
        gml_Script_c_var_lerp_instance(coaster_berdly, "x", 1890, 1490, 15)
        gml_Script_c_wait(10)
        gml_Script_c_soundplay(61)
        gml_Script_c_shake()
        gml_Script_c_var_instance(coaster_berdly, "siner_add0", 0.1)
        gml_Script_c_var_instance(coaster_noelle, "siner_add0", 0)
        gml_Script_c_var_instance(coaster_noelle, "character_sprite", 716)
        gml_Script_c_waitcustom()
    }
}
if (con == 3 && customcon == 1)
{
    con = 4
    alarm[0] = 30
    with (coaster_noelle)
    {
        gravity = 2
        gravity_direction = 70
    }
    customcon = 0
}
if (con == 5)
{
    con = 6
    gml_Script_c_waitcustom_end()
    gml_Script_c_var_instance(coaster_susie, "character_sprite", 996)
    gml_Script_c_var_instance(coaster_ralsei, "character_sprite", 1507)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E2* Fear not^1, my beloved Noelle!!/", "obj_ch2_scene11a_slash_Step_0_gml_430_0")
    gml_Script_c_msgnextloc("\\E6* This valiant warrior of brave intelligence/", "obj_ch2_scene11a_slash_Step_0_gml_431_0")
    gml_Script_c_msgnextloc("\\EF* Will be your knight in glow in the dark armor!/%", "obj_ch2_scene11a_slash_Step_0_gml_432_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_susie, "character_sprite", 45)
    gml_Script_c_var_instance(coaster_ralsei, "character_sprite", 795)
    gml_Script_c_mus("free_all")
    gml_Script_c_mus2("initloop", "berdly_theme.ogg", 0)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E5* Berdly!? You asked BERDLY to be on your team!?/", "obj_ch2_scene11a_slash_Step_0_gml_443_0")
    gml_Script_c_facenext("queen", "1")
    gml_Script_c_msgnextloc("\\E1* (I Did Not Ask Him I Did Not Ask Him I Did Not Ask Him)/%", "obj_ch2_scene11a_slash_Step_0_gml_445_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 683)
    gml_Script_c_var_instance(coaster_berdly, "animate", 1)
    gml_Script_c_var_instance(coaster_susie, "character_sprite", 824)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E1* That's LORD Berdly to you simpletons!!/%", "obj_ch2_scene11a_slash_Step_0_gml_452_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 694)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EE* And soon..^1. SUPER Lord Berdly!/", "obj_ch2_scene11a_slash_Step_0_gml_458_0")
    gml_Script_c_facenext("susie", "C")
    gml_Script_c_msgnextloc("\\EC* ..^1. the hell does that mean?/", "obj_ch2_scene11a_slash_Step_0_gml_460_0")
    gml_Script_c_facenext("queen", "M")
    gml_Script_c_msgnextloc("\\EM* (I Have No Damn Clue Just Go With It)/%", "obj_ch2_scene11a_slash_Step_0_gml_462_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 673)
    gml_Script_c_var_instance(coaster_berdly, "animate", 0)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EE* You see^1, thanks to our WONDROUS Queen.../%", "obj_ch2_scene11a_slash_Step_0_gml_469_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 683)
    gml_Script_c_var_instance(coaster_berdly, "animate", 1)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E2* WE..^1. will soon RULE the WORLD!/%", "obj_ch2_scene11a_slash_Step_0_gml_476_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 667)
    gml_Script_c_var_instance(coaster_berdly, "animate", 0)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EJ* And turn this Land of Fools..^1. into a Smartopia./", "obj_ch2_scene11a_slash_Step_0_gml_483_0")
    gml_Script_c_msgnextloc("\\EK* A true Scientocracy^1, where the Geniuses of the world^1,/", "obj_ch2_scene11a_slash_Step_0_gml_484_0")
    gml_Script_c_msgnextloc("\\EE* Can bathe freely in pools of fresh fruit and ambrosia./%", "obj_ch2_scene11a_slash_Step_0_gml_485_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 162)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E7* No longer held back by protozoans like YOU!/%", "obj_ch2_scene11a_slash_Step_0_gml_491_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 683)
    gml_Script_c_var_instance(coaster_berdly, "animate", 1)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E1* And the key to that? Is US. Noelle and I./", "obj_ch2_scene11a_slash_Step_0_gml_498_0")
    gml_Script_c_msgnextloc("\\EE* Our power..^1. The \"Light Nerd's\" power.../%", "obj_ch2_scene11a_slash_Step_0_gml_499_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_ralsei, "character_sprite", 784)
    gml_Script_c_wait(10)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EK* You mean..^1. \"Lightners?\"/%", "obj_ch2_scene11a_slash_Step_0_gml_507_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_ralsei, "character_sprite", 794)
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 673)
    gml_Script_c_var_instance(coaster_berdly, "animate", 0)
    gml_Script_c_wait(10)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EI* Um^1, NO. Queen said \"Light Nerds.\"/%", "obj_ch2_scene11a_slash_Step_0_gml_518_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_soundplay(292)
    gml_Script_c_sprite(759)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sel(qu_flame)
    gml_Script_c_sprite(763)
    gml_Script_c_wait(10)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EO* I Actually Did/%", "obj_ch2_scene11a_slash_Step_0_gml_534_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_sprite(1881)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sel(qu_flame)
    gml_Script_c_sprite(764)
    gml_Script_c_wait(10)
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 669)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EE* Berdly^1, Queen's just manipulating you!!/%", "obj_ch2_scene11a_slash_Step_0_gml_551_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 683)
    gml_Script_c_var_instance(coaster_berdly, "animate", 1)
    gml_Script_c_wait(10)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E6* Heh..^1. that's what she SAID you'd say to me!/%", "obj_ch2_scene11a_slash_Step_0_gml_560_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 669)
    gml_Script_c_var_instance(coaster_berdly, "animate", 0)
    gml_Script_c_sel(qu)
    gml_Script_c_soundplay(292)
    gml_Script_c_sprite(759)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sel(qu_flame)
    gml_Script_c_sprite(763)
    gml_Script_c_wait(10)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EO* I Actually Did/%", "obj_ch2_scene11a_slash_Step_0_gml_579_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_sprite(1881)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sel(qu_flame)
    gml_Script_c_sprite(764)
    gml_Script_c_wait(10)
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 683)
    gml_Script_c_var_instance(coaster_berdly, "animate", 1)
    gml_Script_c_msc(1109)
    gml_Script_c_talk_wait()
}
if (con == 10)
{
    con = 11
    gml_Script_c_var_instance(coaster_berdly, "siner", 0)
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 664)
    gml_Script_c_var_instance(coaster_berdly, "character_offset_x", -52)
    gml_Script_c_var_instance(coaster_berdly, "character_offset_y", -25)
    gml_Script_c_var_instance(coaster_berdly, "animate", 1)
    gml_Script_c_wait(12)
    gml_Script_c_soundplay(139)
    gml_Script_c_wait(28)
    gml_Script_c_soundplay(154)
    gml_Script_c_wait(12)
    gml_Script_c_var_instance(coaster_berdly, "character_sprite", 1844)
    gml_Script_c_var_instance(coaster_berdly, "character_offset_y", 0)
    gml_Script_c_wait(10)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E7* Allow me to assist you!!/%", "obj_ch2_scene11a_slash_Step_0_gml_616_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_walk("u", 10, 30)
    gml_Script_c_var_lerp_instance(coaster_berdly, "x", 1490, 1650, 15)
    gml_Script_c_mus2("volume", 0, 15)
    gml_Script_c_wait(16)
    gml_Script_c_waitcustom()
}
if (con == 11 && customcon == 1)
{
    con = 12
    if (global.tempflag[28] == 0)
        global.tempflag[28] = 1
    gml_Script_snd_free_all()
    global.flag[9] = 1
    gml_Script_instance_create(0, 0, obj_berdly_encounter_setup)
    with (obj_battleback)
        instance_destroy()
    alarm[0] = 30
}
if (con == 13 && (!instance_exists(obj_battlecontroller)))
{
    with (coaster_berdly)
        visible = true
    with (coaster_kris)
        visible = true
    with (coaster_susie)
        visible = true
    with (coaster_ralsei)
        visible = true
    smokecon = 1
    global.flag[61] = 0
    con = 14
    customcon = 0
    gml_Script_c_waitcustom_end()
}
if (smokecon == 1)
{
    smoketimer++
    if (smoketimer > 15)
    {
        smoketimer = 0
        smoke = gml_Script_instance_create((coaster_berdly.x + 50), (coaster_berdly.y + 60), obj_berdly_smoke)
        smoke.depth = (coaster_berdly.depth + 1)
    }
    if audio_is_playing(snd_badexplosion)
        smokecon = 0
}
if (con == 14)
{
    con = 15
    alarm[0] = 30
    coaster_berdly.character_sprite = 1849
    coaster_berdly.character_offset_x = 5
    coaster_berdly.character_offset_y = 3
    gml_Script_c_var_instance(coaster_berdly, "animate", 0)
    gml_Script_c_var_instance(coaster_kris, "siner_add0", 0.1)
    gml_Script_c_var_instance(coaster_susie, "siner_add0", 0.08)
    gml_Script_c_var_instance(coaster_ralsei, "siner_add0", 0.09)
    gml_Script_c_var_instance(coaster_berdly, "siner_add0", 0.09)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgside("bottom")
    gml_Script_c_msgsetloc(0, "\\E3* Wh..^1. what!? That's not fair!!!/", "obj_ch2_scene11a_slash_Step_0_gml_672_0")
    gml_Script_c_msgnextloc("\\E3* M..^1. My Queen..^1. Save me...!!!/%", "obj_ch2_scene11a_slash_Step_0_gml_673_0")
    gml_Script_c_talk_wait()
    gml_Script_c_soundplay(188)
    gml_Script_c_var_instance(id, "explosion", 1)
    gml_Script_c_wait(5)
    gml_Script_c_sel(be)
    gml_Script_c_autowalk(0)
    gml_Script_c_setxy((coaster_berdly.x - 30), coaster_berdly.y)
    gml_Script_c_visible(1)
    gml_Script_c_var_instance(coaster_berdly, "visible", 0)
    gml_Script_c_var_lerp_instance(be_actor, "y", coaster_berdly.y, (coaster_berdly.y - 150), 15)
    gml_Script_c_wait(15)
    gml_Script_c_waitcustom()
}
if (con == 16 && customcon == 1)
{
    con = 17
    alarm[0] = 30
    with (be_actor)
    {
        vspeed = 16
        gravity = 1
    }
    customcon = 0
}
if (con == 18)
{
    con = 49
    alarm[0] = 30
    gml_Script_c_waitcustom_end()
    gml_Script_c_wait(60)
    gml_Script_c_sel(qu)
    gml_Script_c_setxy(1790, 90)
    gml_Script_c_visible(1)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(1585, 90, 10)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_wait(5)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\ED* In A Minute Dear/", "obj_ch2_scene11a_slash_Step_0_gml_733_0")
    gml_Script_c_msgnextloc("\\E1* Hello Everyone I Have Some News Updates/", "obj_ch2_scene11a_slash_Step_0_gml_734_0")
    gml_Script_c_msgnextloc("\\E1* You See/", "obj_ch2_scene11a_slash_Step_0_gml_735_0")
    gml_Script_c_msgnextloc("\\EA* This \"Roller\"^1, \"Coaster\"/", "obj_ch2_scene11a_slash_Step_0_gml_736_0")
    gml_Script_c_msgnextloc("\\E9* It's Not Actually/", "obj_ch2_scene11a_slash_Step_0_gml_737_0")
    gml_Script_c_msgnextloc("\\E1* \"Finished\"^1, Yet/%", "obj_ch2_scene11a_slash_Step_0_gml_738_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(coaster_susie, "character_sprite", 45)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EH* WHAT DOES THAT MEAN!?!?/", "obj_ch2_scene11a_slash_Step_0_gml_744_0")
    gml_Script_c_facenext("queen", "1")
    gml_Script_c_msgnextloc("\\E1* \"Pain\"/%", "obj_ch2_scene11a_slash_Step_0_gml_746_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_soundplay(292)
    gml_Script_c_sprite(759)
    gml_Script_c_imagespeed(0.1)
    gml_Script_c_walk("u", 10, 30)
    gml_Script_c_sel(qu_flame)
    gml_Script_c_sprite(763)
    gml_Script_c_mus2("volume", 0, 30)
    gml_Script_c_wait(45)
    gml_Script_c_mus("free_all")
    gml_Script_c_soundplay(153)
    gml_Script_c_var_instance(coaster_susie, "character_sprite", 996)
    gml_Script_c_var_instance(coaster_ralsei, "character_sprite", 1507)
    gml_Script_c_var_instance(coaster_entry, "visible", 0)
    gml_Script_c_var_instance(coaster_entry_hood, "visible", 0)
    gml_Script_c_var_instance(id, "stoplooptrack", 1)
    gml_Script_c_var_lerp_instance(coaster_kris, "x", 1220, 1650, 40)
    gml_Script_c_var_instance(coaster_kris, "siner_add0", 0)
    gml_Script_c_var_lerp_instance(coaster_susie, "x", 1220, 1650, 40)
    gml_Script_c_var_instance(coaster_susie, "siner_add0", 0)
    gml_Script_c_var_lerp_instance(coaster_ralsei, "x", 1220, 1650, 40)
    gml_Script_c_var_instance(coaster_ralsei, "siner_add0", 0)
    gml_Script_c_panspeed(15, 0, 40)
    gml_Script_c_wait(20)
    gml_Script_c_var_instance(whiteall, "x", 0)
    gml_Script_c_var_lerp_instance(whiteall, "image_alpha", 0, 1, 20)
    gml_Script_c_wait(20)
    gml_Script_c_soundplay(66)
    gml_Script_c_wait(60)
    gml_Script_c_var_instance(blackall, "x", 0)
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 0, 1, 80)
    gml_Script_c_var_instance(id, "hide_border", 1)
    gml_Script_c_wait(60)
    gml_Script_c_soundplay(61)
    gml_Script_c_wait(120)
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 50 && (!gml_Script_i_ex(895)))
{
    con = 60
    gml_Script_snd_free_all()
    global.plot = 64
    room_goto(room_dw_city_intro)
}
if loopcity
{
    loopcity = 0
    if gml_Script_i_ex(950)
    {
        with (obj_ch2_scene11a_bg)
        {
            parallax = 0
            looping = 1
        }
    }
}
if looptrack
{
    looptrack = 0
    if gml_Script_i_ex(950)
    {
        with (obj_ch2_scene11a_bg)
        {
            coaster_bg_1.x_speed = -15
            cityscape_bg_1.x_speed = -0.5
            cityscape_bg_2.x_speed = -1
            for (var i = 0; i < 3; i++)
                coaster_track[i].x_speed = -15
        }
    }
}
if stoplooptrack
{
    stoplooptrack = 0
    if gml_Script_i_ex(950)
    {
        with (obj_ch2_scene11a_bg)
        {
            coaster_bg_1.x_speed = 0
            for (i = 0; i < 3; i++)
                coaster_track[i].x_speed = 0
        }
    }
}
if (explosion > 0)
{
    explodetimer++
    if (explodetimer == 1)
    {
        explosion_marker = gml_Script_instance_create(1650, 155, obj_marker)
        explosion_marker.sprite_index = spr_realisticexplosion
        explosion_marker.image_xscale = 2.65
        explosion_marker.image_yscale = 2.65
        explosion_marker.depth = (be_actor.depth + 100)
    }
    else
    {
        var finish = 0
        with (explosion_marker)
        {
            if (sprite_index == spr_realisticexplosion && image_index >= 16)
            {
                finish = 1
                instance_destroy()
            }
        }
        if finish
        {
            explosion = 0
            explodetimer = 0
        }
    }
}
