if (obj_mainchara.x < 550 && con == -1)
{
    con = 2
    global.interact = 1
    global.facing = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
}
if (con == 2)
{
    con = 3
    gml_Script_c_sel(su)
    gml_Script_c_walk("l", 4, 15)
    gml_Script_c_facing("susieunhappy")
    gml_Script_c_delayfacing(16, "d")
    gml_Script_c_autodepth(0)
    var su_depth = (su_actor.y < ra_actor.y ? 98000 : 95000)
    gml_Script_c_depth(su_depth)
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed(-4, 0, 55)
    gml_Script_c_sel(kr)
    gml_Script_c_walk("l", 4, 55)
    gml_Script_c_delayfacing(56, "r")
    gml_Script_c_sel(ra)
    var ral_xpos = (ra_actor.x > 645 ? 70 : 60)
    gml_Script_c_walk_wait("l", 4, ral_xpos)
    gml_Script_c_facing("r")
    gml_Script_c_wait(30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* .../", "obj_ch2_sceneex3_slash_Step_0_gml_48_0")
    gml_Script_c_msgnextloc("\\E1* Hey so..^1. are we seriously.../%", "obj_ch2_sceneex3_slash_Step_0_gml_49_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* NOT gonna talk about any of that?/", "obj_ch2_sceneex3_slash_Step_0_gml_57_0")
    gml_Script_c_msgnextloc("\\EC* That was god damn weird./%", "obj_ch2_sceneex3_slash_Step_0_gml_58_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* Puppets..^1. strings..^1. hands.../", "obj_ch2_sceneex3_slash_Step_0_gml_65_0")
    gml_Script_c_msgnextloc("\\E1* What the hell does any of that mean?/", "obj_ch2_sceneex3_slash_Step_0_gml_66_0")
    gml_Script_c_msgnextloc("\\ED* And the way he just..^1. broke./%", "obj_ch2_sceneex3_slash_Step_0_gml_67_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("r")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E6* I..^1. don't think it meant anything^1, Susie./", "obj_ch2_sceneex3_slash_Step_0_gml_74_0")
    gml_Script_c_msgnextloc("\\E4* It seems like it was just a corrupted program./%", "obj_ch2_sceneex3_slash_Step_0_gml_75_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EI* He turned into our ally^1, so let's just accept it./%", "obj_ch2_sceneex3_slash_Step_0_gml_83_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_autodepth(1)
    gml_Script_c_walkdirect(380, (kr_actor.y - 14), 30)
    gml_Script_c_delayfacing(31, "l")
    gml_Script_c_wait(20)
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk_wait("u", 4, 10)
    gml_Script_c_imagespeed(0)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_wait(30)
    gml_Script_c_msc(1129)
    gml_Script_c_talk_wait()
}
if (con == 10)
{
    con = 30
    global.flag[324] = 1
    gml_Script_c_sel(kr)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* .../%", "obj_ch2_sceneex3_slash_Step_0_gml_116_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EC* (If you say it all strained like that^1,)/", "obj_ch2_sceneex3_slash_Step_0_gml_124_0")
    gml_Script_c_msgnextloc("\\E1* (..^1. I'm not gonna think you're OK...)/", "obj_ch2_sceneex3_slash_Step_0_gml_125_0")
    gml_Script_c_msgnextloc("\\E0* (...)/%", "obj_ch2_sceneex3_slash_Step_0_gml_126_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EC* (Hey Ralsei^1, you think Kris is OK?)/%", "obj_ch2_sceneex3_slash_Step_0_gml_133_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_facing("l")
    gml_Script_c_wait(10)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E4* (Hmm..^1. well^1, they seem a bit shocked^1, but...)/", "obj_ch2_sceneex3_slash_Step_0_gml_144_0")
    gml_Script_c_msgnextloc("\\EI* (Kris doesn't want us to worry^1, so...)/", "obj_ch2_sceneex3_slash_Step_0_gml_145_0")
    gml_Script_c_msgnextloc("\\EQ* (Let's not push them for now...)/%", "obj_ch2_sceneex3_slash_Step_0_gml_146_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(1)
    gml_Script_c_walkdirect_wait(284, 168, 31)
    gml_Script_c_walkdirect_wait(263, (kr_actor.y - 7), 9)
    gml_Script_c_facing("r")
    gml_Script_c_wait(10)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E2* Kris^1, I'll make some cake for you later^1, OK?/", "obj_ch2_sceneex3_slash_Step_0_gml_159_0")
    gml_Script_c_msgnextloc("\\EQ* I could even make it chocolate-flavored^1,/", "obj_ch2_sceneex3_slash_Step_0_gml_160_0")
    gml_Script_c_msgnextloc("\\EQ* Butterscotch^1, cinnamon..^1. whatever you want./%", "obj_ch2_sceneex3_slash_Step_0_gml_161_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* .../%", "obj_ch2_sceneex3_slash_Step_0_gml_169_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Well^1, their stomach's rumbling but the goosebumps aren't gone./%", "obj_ch2_sceneex3_slash_Step_0_gml_176_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_walk_wait("r", 5, 5)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E1* Kris^1, if you're cold^1, you can share my scarf.../", "obj_ch2_sceneex3_slash_Step_0_gml_184_0")
    gml_Script_c_msgnextloc("\\EJ* Huh? Or^1, um^1, sure^1, Susie could...?/%", "obj_ch2_sceneex3_slash_Step_0_gml_185_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_sel(su)
    gml_Script_c_sprite(995)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E5* What? No^1, hell if I'm giving you MY jacket!/%", "obj_ch2_sceneex3_slash_Step_0_gml_196_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(818)
    gml_Script_c_flip("x")
    gml_Script_c_imageindex(0)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EY* You make ME cold^1, I'm burning you knuckleheads for warmth./", "obj_ch2_sceneex3_slash_Step_0_gml_206_0")
    gml_Script_c_facenext("ralsei", "U")
    gml_Script_c_msgnextloc("\\EU* Susie!!!/", "obj_ch2_sceneex3_slash_Step_0_gml_208_0")
    gml_Script_c_facenext("susie", 2)
    gml_Script_c_msgnextloc("\\E2* Too late^1, already imagining you guys as idiot-scented candles./", "obj_ch2_sceneex3_slash_Step_0_gml_210_0")
    gml_Script_c_msgnextloc("\\EL* (..^1. Heh^1, that got Kris smiling. Let's go.)/%", "obj_ch2_sceneex3_slash_Step_0_gml_211_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_flip("x")
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("susie")
    gml_Script_c_facing("l")
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(1)
    gml_Script_c_walk_wait("u", 4, 5)
    gml_Script_c_walk_wait("r", 4, 40)
    gml_Script_c_walk_wait("d", 4, 5)
    gml_Script_c_facing("l")
    gml_Script_c_wait(15)
}
if (con == 20)
{
    con = 30
    global.flag[324] = 2
    gml_Script_c_sel(kr)
    gml_Script_c_facing("u")
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(1)
    gml_Script_c_walkdirect_wait(264, 168, 31)
    gml_Script_c_walkdirect_wait(253, (kr_actor.y - 10), 9)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EQ* K..^1. Kris? Are you OK? You're yelling.../%", "obj_ch2_sceneex3_slash_Step_0_gml_245_0")
    gml_Script_c_talk_wait()
    if (global.flag[325] == 1)
    {
        gml_Script_c_wait(15)
        gml_Script_c_sel(ra)
        gml_Script_c_autodepth(0)
        gml_Script_c_depth(0)
        gml_Script_c_walk_wait("r", 4, 15)
        gml_Script_c_sel(ra)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(810)
        gml_Script_c_addxy(0, 6)
        gml_Script_c_imagespeed(0.15)
        gml_Script_c_wait(15)
        gml_Script_c_imagespeed(0)
        gml_Script_c_wait(75)
        gml_Script_c_sprite(811)
        gml_Script_c_wait(15)
        gml_Script_c_imagespeed(0)
        gml_Script_c_wait(15)
        gml_Script_c_autowalk(1)
        gml_Script_c_facing("r")
        gml_Script_c_addxy(0, -6)
        gml_Script_c_autowalk(0)
        gml_Script_c_walk("l", 4, 10)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_wait(11)
        gml_Script_c_autowalk(1)
        gml_Script_c_autodepth(1)
        gml_Script_c_facing("r")
    }
    else
    {
        gml_Script_c_sel(ra)
        gml_Script_c_walk("r", 4, 5)
    }
    gml_Script_c_sel(kr)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EB* There^1, there..^1. everything's alright./", "obj_ch2_sceneex3_slash_Step_0_gml_304_0")
    gml_Script_c_msgnextloc("\\EQ* Don't think about what happened too hard^1, OK?/", "obj_ch2_sceneex3_slash_Step_0_gml_305_0")
    gml_Script_c_msgnextloc("\\E0* Just take some deep breaths and think about.../", "obj_ch2_sceneex3_slash_Step_0_gml_306_0")
    gml_Script_c_msgnextloc("\\EQ* Something you like. Something nice..^1. something soft./", "obj_ch2_sceneex3_slash_Step_0_gml_307_0")
    gml_Script_c_msgnextloc("\\E2* I'll be right next to you until you feel better^1, Kris./", "obj_ch2_sceneex3_slash_Step_0_gml_308_0")
    gml_Script_c_msgnextloc("\\E1* .../%", "obj_ch2_sceneex3_slash_Step_0_gml_309_0")
    gml_Script_c_talk_wait()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* .../", "obj_ch2_sceneex3_slash_Step_0_gml_326_0")
    gml_Script_c_msgnextloc("\\E1* Guess Ralsei's right^1, Kris./", "obj_ch2_sceneex3_slash_Step_0_gml_327_0")
    gml_Script_c_msgnextloc("\\E0* Whatever just happened..^1. I guess.../", "obj_ch2_sceneex3_slash_Step_0_gml_328_0")
    gml_Script_c_msgnextloc("\\E1* Maybe it didn't mean anything./", "obj_ch2_sceneex3_slash_Step_0_gml_329_0")
    gml_Script_c_msgnextloc("\\E0* I dunno why you came here^1, but.../", "obj_ch2_sceneex3_slash_Step_0_gml_330_0")
    gml_Script_c_msgnextloc("\\EY* Let's just be glad you didn't get killed. Heh./", "obj_ch2_sceneex3_slash_Step_0_gml_331_0")
    gml_Script_c_msgnextloc("\\E0* .../", "obj_ch2_sceneex3_slash_Step_0_gml_332_0")
    gml_Script_c_msgnextloc("\\EK* (Just..^1. tell us next time...)/", "obj_ch2_sceneex3_slash_Step_0_gml_333_0")
    gml_Script_c_msgnextloc("\\EY* (You're gonna do something stupid like this^1, OK?)/%", "obj_ch2_sceneex3_slash_Step_0_gml_334_0")
    gml_Script_c_talk_wait()
    if (global.flag[325] == 1)
    {
        gml_Script_c_wait(30)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
        gml_Script_c_wait(5)
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EK* .../", "obj_ch2_sceneex3_slash_Step_0_gml_350_0")
        gml_Script_c_msgnextloc("\\E5* What? No^1, I'M not giving YOU a hug!/", "obj_ch2_sceneex3_slash_Step_0_gml_351_0")
        gml_Script_c_msgnextloc("\\EH* That's what Ralsei's for!^1! He's like a portable teddy bear!/", "obj_ch2_sceneex3_slash_Step_0_gml_352_0")
        gml_Script_c_facenext("ralsei", "J")
        gml_Script_c_msgnextloc("\\EJ* But Susie^1, because you never give out hugs./", "obj_ch2_sceneex3_slash_Step_0_gml_354_0")
        gml_Script_c_msgnextloc("\\EG* That increases their value. It's the law of supply and demand./", "obj_ch2_sceneex3_slash_Step_0_gml_355_0")
        gml_Script_c_facenext("susie", "H")
        gml_Script_c_msgnextloc("\\EH* Well^1, I demand^1, you supply me^1, with^1, uh -/", "obj_ch2_sceneex3_slash_Step_0_gml_357_0")
        gml_Script_c_msgnextloc("\\E5* Ugh^1, enough of you guys!/%", "obj_ch2_sceneex3_slash_Step_0_gml_358_0")
        gml_Script_c_talk_wait()
        gml_Script_c_pannable(1)
        gml_Script_c_panspeed(-5, 0, 20)
        gml_Script_c_sel(su)
        gml_Script_c_autowalk(1)
        gml_Script_c_delaywalk(6, "l", 8, 22)
        gml_Script_c_delaywalk(29, "d", 8, 60)
        gml_Script_c_wait(5)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("d")
        gml_Script_c_autowalk(0)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walk("u", 4, 5)
        gml_Script_c_delaycmd(6, "imagespeed", 0)
        gml_Script_c_sel(ra)
        gml_Script_c_facing("d")
        gml_Script_c_autowalk(0)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walk("u", 4, 5)
        gml_Script_c_delaycmd(6, "imagespeed", 0)
        gml_Script_c_wait(15)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("d")
        gml_Script_c_autowalk(1)
        gml_Script_c_walk("d", 4, 5)
        gml_Script_c_wait(5)
        gml_Script_c_sel(ra)
        gml_Script_c_facing("d")
        gml_Script_c_autowalk(1)
        gml_Script_c_walk("d", 4, 5)
        gml_Script_c_wait(15)
        gml_Script_c_wait(60)
        gml_Script_c_sel(ra)
        gml_Script_c_autowalk(1)
        gml_Script_c_facing("r")
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\E2* ..^1. I think everything will be OK^1, Kris./%", "obj_ch2_sceneex3_slash_Step_0_gml_409_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(ra)
        gml_Script_c_walk_wait("d", 4, 5)
        gml_Script_c_walk_wait("r", 4, 30)
        gml_Script_c_walk_wait("u", 4, 5)
        gml_Script_c_facing("l")
        gml_Script_c_wait(15)
        gml_Script_c_sel(kr)
        gml_Script_c_autowalk(1)
        gml_Script_c_walk("l", 4, 26)
        gml_Script_c_delaywalk(27, "d", 4, 80)
        gml_Script_c_sel(ra)
        gml_Script_c_delaywalk(5, "l", 4, 44)
        gml_Script_c_delaywalk(50, "d", 4, 80)
        gml_Script_c_wait(130)
    }
    else
    {
        gml_Script_c_sel(ra)
        gml_Script_c_autowalk(1)
        gml_Script_c_walk_wait("u", 4, 5)
        gml_Script_c_walk_wait("r", 4, 50)
        gml_Script_c_walk_wait("d", 4, 5)
        gml_Script_c_facing("l")
        gml_Script_c_wait(15)
    }
}
if (con == 30)
{
    con = 59
    alarm[0] = 30
    global.facing = 0
    gml_Script_c_mus2("volume", 0, 30)
    if (global.flag[324] == 2 && global.flag[325] == 1)
    {
        with (obj_caterpillarchara)
        {
            if (name == "susie")
                instance_destroy()
        }
        with (obj_caterpillarchara)
            gml_Script_scr_caterpillar_interpolate()
    }
    gml_Script_c_pannable(0)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 60 && (!gml_Script_i_ex(895)))
{
    global.interact = 0
    global.facing = 0
    if (global.flag[324] == 2 && global.flag[325] == 1)
        con = 62
    else
        con = 0
}
if (con == 62)
{
    con = 99
    global.interact = 3
    global.entrance = 20
    gml_Script_instance_create(0, 0, obj_persistentfadein)
    room_goto(room_dw_mansion_east_1f_secret)
}
