if (con == 0 && global.interact == 0 && global.plot < 54)
{
    global.interact = 1
    global.facing = 0
    con = 1
}
if (con == 1)
{
    con = 2
    growStep = 0
    lerpValue = 0
    time = 0
    cutscene_master = gml_Script_scr_cutscene_make()
    with (obj_mainchara)
        visible = false
    with (obj_caterpillarchara)
        visible = false
    kr = 0
    kr_actor = gml_Script_instance_create((obj_mainchara.x - 100), (obj_mainchara.y - 16), obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisr_dark
    su = 1
    su_actor = gml_Script_instance_create((obj_mainchara.x - 160), (global.cinstance[0].y - 16), obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_right_dw
    ra = 2
    ra_actor = gml_Script_instance_create((obj_mainchara.x - 200), (global.cinstance[1].y - 16), obj_actor)
    gml_Script_scr_actor_setup(ra, ra_actor, "ralsei")
    ra_actor.sprite_index = spr_ralsei_walk_right
    qu = 3
    qu_actor = gml_Script_instance_create(400, 100, obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_queen_walk_left
    no = 4
    no_actor = gml_Script_instance_create(297, 50, obj_actor)
    gml_Script_scr_actor_setup(no, no_actor, "noelledark")
    no_actor.sprite_index = spr_noelle_shocked_dw
    gml_Script_c_sel(no)
    gml_Script_c_autowalk(0)
    ca = 5
    ca_actor = gml_Script_instance_create(280, 10, obj_actor)
    gml_Script_scr_actor_setup(ca, ca_actor, "capsule")
    ca_actor.sprite_index = spr_cutscene_09_capsule_1
    gml_Script_c_sel(ca)
    gml_Script_c_autowalk(0)
    sw = 6
    sw_actor = gml_Script_instance_create(240, -160, obj_actor)
    gml_Script_scr_actor_setup(sw, sw_actor, "swatchling")
    sw_actor.sprite_index = spr_swatchling_cannonball
    gml_Script_c_sel(sw)
    gml_Script_c_autowalk(0)
    pb = 7
    pb_actor = gml_Script_instance_create(290, -160, obj_actor)
    gml_Script_scr_actor_setup(pb, pb_actor, "plattertop")
    pb_actor.sprite_index = spr_cutscene_10_platter_bottom
    gml_Script_c_sel(pb)
    gml_Script_c_autowalk(0)
    pt = 8
    pt_actor = gml_Script_instance_create(290, -160, obj_actor)
    gml_Script_scr_actor_setup(pt, pt_actor, "platterbottom")
    pt_actor.sprite_index = spr_cutscene_10_platter_top
    gml_Script_c_sel(pt)
    gml_Script_c_autowalk(0)
    ar = 9
    ar_actor = gml_Script_instance_create(290, -200, obj_actor)
    gml_Script_scr_actor_setup(ar, ar_actor, "arcade")
    ar_actor.sprite_index = spr_cutscene_10_arcade_off
    ar_actor.image_yscale = 0.25
    ar_actor.depthbonus = 2000
    gml_Script_c_sel(ar)
    gml_Script_c_autowalk(0)
    gml_Script_c_visible(0)
    gml_Script_c_var_instance(id, "pause_music", 1)
    gml_Script_c_wait(25)
    gml_Script_c_mus2("initloop", "queen.ogg", 0)
    gml_Script_c_wait(5)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E0* Noelle Honey Become My Willing Peon And I Will Free You/", "obj_ch2_scene10_slash_Step_0_gml_97_0")
    gml_Script_c_msgnextloc("\\E0* All You Have To Do Is Hit Yes On The Peon Release Form/", "obj_ch2_scene10_slash_Step_0_gml_98_0")
    gml_Script_c_facenext("noelle", "C")
    gml_Script_c_msgnextloc("\\EC* I^1... I'm scared.../", "obj_ch2_scene10_slash_Step_0_gml_100_0")
    gml_Script_c_facenext("queen", "1")
    gml_Script_c_msgnextloc("\\E1* Oh Have You Never Signed A Form Before/", "obj_ch2_scene10_slash_Step_0_gml_102_0")
    gml_Script_c_facenext("noelle", "E")
    gml_Script_c_msgnextloc("\\EE* No!^1! It's everything else that's scary!!/", "obj_ch2_scene10_slash_Step_0_gml_104_0")
    gml_Script_c_facenext("queen", "D")
    gml_Script_c_msgnextloc("\\ED* Please Abort Your Sadness Protocol/", "obj_ch2_scene10_slash_Step_0_gml_106_0")
    gml_Script_c_msgnextloc("\\E1* I Told You Being A Peon Will Be Cool/%", "obj_ch2_scene10_slash_Step_0_gml_107_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_walk("r", 12, 25)
    gml_Script_c_sel(su)
    gml_Script_c_walk("r", 12, 20)
    gml_Script_c_sel(ra)
    gml_Script_c_walk("r", 12, 20)
    gml_Script_c_wait(20)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(159, 117, 5)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(110, 150, 5)
    gml_Script_c_wait(10)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EJ* Noelle!/", "obj_ch2_scene10_slash_Step_0_gml_124_0")
    gml_Script_c_facenext("noelle", "B")
    gml_Script_c_msgnextloc("\\EB* S..^1. Susie!? Kris...!?/", "obj_ch2_scene10_slash_Step_0_gml_126_0")
    gml_Script_c_facenext("susie", "2")
    gml_Script_c_msgnextloc("\\E2* Don't worry^1, we won't let your face get roboticized!/%", "obj_ch2_scene10_slash_Step_0_gml_128_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(no)
    gml_Script_c_shakeobj()
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EE* THAT'S..^1. SOMETHING THEY'RE GOING TO DO!?/", "obj_ch2_scene10_slash_Step_0_gml_135_0")
    gml_Script_c_facenext("susie", "P")
    gml_Script_c_msgnextloc("\\EP* Whoops^1, thought^1, uh^1, you knew that./%", "obj_ch2_scene10_slash_Step_0_gml_137_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(qu)
    gml_Script_c_facing("d")
    gml_Script_c_wait(5)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EF* Oh Dear That Was Supposed To Be A Surprise/%", "obj_ch2_scene10_slash_Step_0_gml_145_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_facing("l")
    gml_Script_c_wait(5)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E0* Oh Well/%", "obj_ch2_scene10_slash_Step_0_gml_152_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sprite(61)
    gml_Script_c_soundplay(154)
    gml_Script_c_wait(5)
    gml_Script_c_soundplay(294)
    gml_Script_c_animate(0, 8, 0.5)
    gml_Script_c_wait(8)
    gml_Script_c_sel(no)
    gml_Script_c_walk("u", 30, 30)
    gml_Script_c_sel(ca)
    gml_Script_c_walk("u", 30, 30)
    gml_Script_c_wait(8)
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("u")
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("u")
    gml_Script_c_wait(14)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\ER* W-wait--!!/%", "obj_ch2_scene10_slash_Step_0_gml_174_0")
    gml_Script_c_talk()
    gml_Script_c_sel(su)
    gml_Script_c_walk_wait("u", 16, 5)
    gml_Script_c_waittalk()
    gml_Script_c_wait(5)
    gml_Script_c_sel(qu)
    gml_Script_c_facing("r")
    gml_Script_c_autowalk(1)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E3* It Is Quite Troubling/", "obj_ch2_scene10_slash_Step_0_gml_192_0")
    gml_Script_c_msgnextloc("\\EF* A Peon Must Be \"Willing\" To Assist Me In World Domination/", "obj_ch2_scene10_slash_Step_0_gml_193_0")
    gml_Script_c_msgnextloc("\\E5* If Only She Had Fellow Peons To Encourage Her/", "obj_ch2_scene10_slash_Step_0_gml_194_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* ..^1. So?/%", "obj_ch2_scene10_slash_Step_0_gml_196_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(767)
    gml_Script_c_imagespeed(0.5)
    gml_Script_c_walk_wait("l", 6, 8)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(0)
    gml_Script_c_wait(15)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\ED* So Like/", "obj_ch2_scene10_slash_Step_0_gml_209_0")
    gml_Script_c_msgnextloc("\\E9* You \"Guys\"/", "obj_ch2_scene10_slash_Step_0_gml_210_0")
    gml_Script_c_msgnextloc("\\E1* Hey/", "obj_ch2_scene10_slash_Step_0_gml_211_0")
    gml_Script_c_msgnextloc("\\ED* Are You Like/", "obj_ch2_scene10_slash_Step_0_gml_212_0")
    gml_Script_c_msgnextloc("\\E1* .../", "obj_ch2_scene10_slash_Step_0_gml_213_0")
    gml_Script_c_msgnextloc("\\ED* Doing Anything Right Now/", "obj_ch2_scene10_slash_Step_0_gml_214_0")
    gml_Script_c_facenext("ralsei", "W")
    gml_Script_c_msgnextloc("* We aren't going to help you!!/%", "obj_ch2_scene10_slash_Step_0_gml_216_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E6* Understood. Mind-Changing Protocol Necessitated/%", "obj_ch2_scene10_slash_Step_0_gml_221_0")
    gml_Script_c_talk()
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(767)
    gml_Script_c_imagespeed(0.5)
    gml_Script_c_walk_wait("r", 10, 10)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(0)
    gml_Script_c_waittalk()
    gml_Script_c_wait(5)
    gml_Script_c_sel(sw)
    gml_Script_c_jump(270, 120, 20, 15)
    gml_Script_c_wait(16)
    gml_Script_c_shake()
    gml_Script_c_soundplay(61)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_walk("l", 14, 3)
    gml_Script_c_sprite(996)
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(0)
    gml_Script_c_arg_objectxy(ra_actor, 0, 6)
    gml_Script_c_setxy(x, y)
    gml_Script_c_walk("l", 14, 3)
    gml_Script_c_sprite(1506)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(0)
    gml_Script_c_walk("l", 14, 4)
    gml_Script_c_imagespeed(0.5)
    gml_Script_c_sel(sw)
    gml_Script_c_sprite(1807)
    gml_Script_c_arg_objectxy(sw_actor, -40, -30)
    gml_Script_c_setxy(x, y)
    gml_Script_c_imageindex(1)
    gml_Script_c_wait(3)
    gml_Script_c_sel(kr)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(0)
    gml_Script_c_wait(27)
    gml_Script_c_sel(sw)
    gml_Script_c_arg_objectxy(sw_actor, -14, -22)
    gml_Script_c_setxy(x, y)
    gml_Script_c_sprite(1809)
    gml_Script_c_imageindex(2)
    gml_Script_c_sel(pt)
    gml_Script_c_autodepth(0)
    gml_Script_c_depth(-501)
    gml_Script_c_jump(290, 20, 20, 15)
    gml_Script_c_sel(pb)
    gml_Script_c_jump(290, 20, 20, 15)
    gml_Script_c_wait(16)
    gml_Script_c_shake()
    gml_Script_c_shakeobj()
    gml_Script_c_sel(pt)
    gml_Script_c_shakeobj()
    gml_Script_c_sel(sw)
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(61)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_walk("l", 14, 2)
    gml_Script_c_sprite(996)
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(0)
    gml_Script_c_arg_objectxy(ra_actor, 0, 6)
    gml_Script_c_setxy(x, y)
    gml_Script_c_walk("l", 14, 2)
    gml_Script_c_sprite(1506)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(0)
    gml_Script_c_walk("l", 14, 3)
    gml_Script_c_imagespeed(0.5)
    gml_Script_c_wait(3)
    gml_Script_c_sel(kr)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(0)
    gml_Script_c_wait(27)
    gml_Script_c_sel(sw)
    gml_Script_c_sprite(1807)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(1)
    gml_Script_c_depth(-502)
    gml_Script_c_arg_objectxy(sw_actor, 14, 22)
    gml_Script_c_setxy(x, y)
    gml_Script_c_walk("l", 14, 7)
    gml_Script_c_sel(kr)
    gml_Script_c_imagespeed(0.5)
    gml_Script_c_walk("l", 2, 7)
    gml_Script_c_wait(7)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(0)
    gml_Script_c_sel(sw)
    gml_Script_c_imageindex(1)
    gml_Script_c_sel(pt)
    gml_Script_c_arg_objectxy(pt_actor, 0, 145)
    gml_Script_c_jump(x, y, 5, 15)
    gml_Script_c_sel(pb)
    gml_Script_c_arg_objectxy(pb_actor, 0, 145)
    gml_Script_c_jump(x, y, 5, 15)
    gml_Script_c_wait(16)
    gml_Script_c_shake()
    gml_Script_c_soundplay(61)
    gml_Script_c_wait(20)
    gml_Script_c_sel(sw)
    gml_Script_c_autodepth(0)
    gml_Script_c_depth(90000)
    gml_Script_c_arg_objectxy(sw_actor, -14, -22)
    gml_Script_c_setxy(x, y)
    gml_Script_c_sprite(1809)
    gml_Script_c_imageindex(2)
    gml_Script_c_sel(pt)
    gml_Script_c_walk("u", 40, 60)
    gml_Script_c_sel(ar)
    gml_Script_c_autodepth(0)
    gml_Script_c_depth(95000)
    gml_Script_c_visible(1)
    gml_Script_c_arg_objectxy(pb_actor, 32, 45)
    gml_Script_c_setxy(x, y)
    gml_Script_c_shakeobj()
    gml_Script_c_wait(5)
    gml_Script_c_shakeobj()
    gml_Script_c_wait(5)
    gml_Script_c_soundplay(159)
    gml_Script_c_waitcustom()
    gml_Script_c_wait(30)
    gml_Script_c_sel(sw)
    gml_Script_c_sprite(1808)
    gml_Script_c_arg_objectxy(sw_actor, 18, 22)
    gml_Script_c_setxy(x, y)
    gml_Script_c_wait(30)
    gml_Script_c_sprite(1810)
    gml_Script_c_arg_objectxy(sw_actor, 18, 20)
    gml_Script_c_setxy(x, y)
    gml_Script_c_arg_objectxy(sw_actor, 0, -300)
    gml_Script_c_jump(x, y, 20, 10)
    gml_Script_c_soundplay(159)
    gml_Script_c_wait(20)
    gml_Script_c_sel(ar)
    gml_Script_c_autodepth(1)
    gml_Script_c_sel(pb)
    gml_Script_c_autodepth(0)
    gml_Script_c_depth(100000)
    gml_Script_c_wait(15)
    gml_Script_c_sel(ar)
    gml_Script_c_sprite(67)
    gml_Script_c_soundplay(172)
    gml_Script_c_wait(15)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(1)
    gml_Script_c_walkdirect(307, 151, 24)
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(1)
    gml_Script_c_walkdirect(255, 175, 28)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(1)
    gml_Script_c_walkdirect_wait(89, 175, 15)
    gml_Script_c_walkdirect_wait(345, 175, 32)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("u")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("u")
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_wait(30)
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_wait(5)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E6* A giant arcade game!?/", "obj_ch2_scene10_slash_Step_0_gml_413_0")
    gml_Script_c_facenext("queen", "1")
    gml_Script_c_msgnextloc("\\E1* I Shall Humiliate You At: A Simple Children's Diversion/", "obj_ch2_scene10_slash_Step_0_gml_415_0")
    gml_Script_c_msgnextloc("\\EC* With Your Self-Esteem Eradicated/%", "obj_ch2_scene10_slash_Step_0_gml_416_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ar)
    gml_Script_c_sprite(69)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sel(qu)
    gml_Script_c_sprite(62)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E7* There Will Be No Choice But To Serve Me/%", "obj_ch2_scene10_slash_Step_0_gml_427_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(ar)
    gml_Script_c_sprite(67)
    gml_Script_c_sel(qu)
    gml_Script_c_imagespeed(0)
    gml_Script_c_sprite(767)
    gml_Script_c_imageindex(0)
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E5* The hell!? I've never played this one before...!/%", "obj_ch2_scene10_slash_Step_0_gml_442_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E2* But Kris is quite good at games^1, aren't they?/%", "obj_ch2_scene10_slash_Step_0_gml_449_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Oh yeah. Kris^1, forgot you were a nerd. Show her!!/%", "obj_ch2_scene10_slash_Step_0_gml_456_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(su)
    gml_Script_c_walk("d", 6, 7)
    gml_Script_c_sel(ra)
    gml_Script_c_walk_wait("d", 6, 8)
    gml_Script_c_facing("u")
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_wait(5)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("d")
    gml_Script_c_wait(5)
    gml_Script_c_waitcustom()
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 2 && customcon == 1 && morphDone == 0)
{
    time++
    if (growStep == 0)
    {
        lerpValue = gml_Script_ease_out_elastic(time, 0, 1, 20)
        lerpValue2 = gml_Script_ease_out_elastic(time, 0, 1, 15)
        yScale = lerp(0.25, 2, lerpValue)
        xScale = lerp(1, 2, lerpValue2)
        ar_actor.image_yscale = yScale
        ar_actor.image_xscale = xScale
        if (lerpValue == 1)
        {
            customcon = 0
            morphDone = 1
            gml_Script_c_waitcustom_end()
        }
    }
}
if (con == 2 && customcon == 1 && morphDone == 1)
{
    su_npc = gml_Script_instance_create(su_actor.x, su_actor.y, obj_npc_facing)
    with (su_actor)
        instance_destroy()
    ra_npc = gml_Script_instance_create(ra_actor.x, ra_actor.y, obj_npc_facing)
    with (ra_actor)
        instance_destroy()
    qu_npc = gml_Script_instance_create(qu_actor.x, qu_actor.y, obj_npc_facing)
    with (qu_actor)
        instance_destroy()
    ar_npc = gml_Script_instance_create(ar_actor.x, ar_actor.y, obj_npc_sign)
    ar_npc.sprite_index = spr_cutscene_10_arcade_on
    ar_npc.depthbonus = ar_actor.depthbonus
    ar_npc.image_yscale = ar_actor.image_yscale
    ar_npc.image_xscale = ar_actor.image_xscale
    ar_npc.depth = ar_actor.depth
    with (ar_actor)
        instance_destroy()
    pb_marker = gml_Script_instance_create(pb_actor.x, pb_actor.y, obj_marker)
    pb_marker.image_yscale = 2
    pb_marker.image_xscale = 2
    pb_marker.sprite_index = pb_actor.sprite_index
    pb_marker.depth = pb_actor.depth
    customcon = 0
    gml_Script_c_waitcustom_end()
}
if (con == 2)
{
    if (!instance_exists(obj_cutscene_master))
    {
        global.interact = 0
        global.plot = 33
        con = 3
        forcefield_left = gml_Script_instance_create(20, 120, obj_forcefield)
        forcefield_left.image_xscale = 2
        forcefield_left.image_yscale = 8
        forcefield_left.depth = 80000
        forcefield_right = gml_Script_instance_create(580, 120, obj_forcefield)
        forcefield_right.image_xscale = 2
        forcefield_right.image_yscale = 8
        forcefield_right.depth = 8000
    }
}
if (con == 4)
{
    con = 5
    cutscene_master = gml_Script_scr_cutscene_make()
    with (obj_mainchara)
        visible = false
    with (su_npc)
        visible = false
    with (ra_npc)
        visible = false
    with (qu_npc)
        visible = false
    kr = 0
    kr_actor = gml_Script_instance_create(obj_mainchara.x, obj_mainchara.y, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisu_dark
    su = 1
    su_actor = gml_Script_instance_create(su_npc.x, su_npc.y, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_up_dw
    ra = 2
    ra_actor = gml_Script_instance_create(ra_npc.x, ra_npc.y, obj_actor)
    gml_Script_scr_actor_setup(ra, ra_actor, "ralsei")
    ra_actor.sprite_index = spr_ralsei_walk_up
    qu = 3
    qu_actor = gml_Script_instance_create(qu_npc.x, qu_npc.y, obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_queen_walk_left
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect_wait(271, 144, 10)
    gml_Script_c_facing("u")
    gml_Script_c_wait(5)
    gml_Script_c_autowalk(0)
    gml_Script_c_speaker("no_name")
    gml_Script_c_msgsetloc(0, "* You tried to use the arcade machine./%", "obj_ch2_scene10_slash_Step_0_gml_586_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_sprite(1412)
    gml_Script_c_halt()
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(60)
    gml_Script_c_wait(5)
    gml_Script_c_speaker("no_name")
    gml_Script_c_msgsetloc(0, "* (You weren't tall or strong enough to use the controls...)/%", "obj_ch2_scene10_slash_Step_0_gml_595_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_wait(20)
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EC* Self-Esteem Eradication Complete/", "obj_ch2_scene10_slash_Step_0_gml_611_0")
    gml_Script_c_msgnextloc("\\EC* Running Laughing Protocol/%", "obj_ch2_scene10_slash_Step_0_gml_612_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(62)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_soundplay(282)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EP* Ha Ha Ha Ha Ha Ha Ha Ha Ha Ha/%", "obj_ch2_scene10_slash_Step_0_gml_620_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(ra)
    gml_Script_c_facing("u")
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_wait(5)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EQ* Uh..^1. ummm..^1. it's ok^1, Kris..^1. err..^1. I'm short^1, too.../", "obj_ch2_scene10_slash_Step_0_gml_630_0")
    gml_Script_c_msgnextloc("\\EK* K..^1. Kris...!^1! Wait^1, I have an idea!!/%", "obj_ch2_scene10_slash_Step_0_gml_631_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("l")
    gml_Script_c_sel(ra)
    gml_Script_c_sel(2)
    gml_Script_c_walk("u", 8, 9)
    gml_Script_c_wait(4)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(1)
    gml_Script_c_autofacing(0)
    gml_Script_c_walk("r", 8, 6)
    gml_Script_c_wait(10.875)
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EJ* Kris^1, if we can combine our powers^1, then.../", "obj_ch2_scene10_slash_Step_0_gml_653_0")
    gml_Script_c_msgnextloc("\\EH* Look!^1! I'll show you what I've been practicing!!/%", "obj_ch2_scene10_slash_Step_0_gml_654_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_delaycmd4(20, "fadeout", 20, 16777215, 0, 0)
    gml_Script_c_soundplay(225)
    gml_Script_c_waitcustom()
    gml_Script_c_sel(kr)
    gml_Script_c_setxy(335, 141)
    gml_Script_c_sel(ra)
    gml_Script_c_sprite(53)
    gml_Script_c_setxy(275, 139)
    gml_Script_c_fadein(15)
    gml_Script_c_wait(2)
    gml_Script_c_soundplay(188)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EH* \\cYMagical Stool Forme R\\cW!!/", "obj_ch2_scene10_slash_Step_0_gml_670_0")
    gml_Script_c_facenext("susie", "2")
    gml_Script_c_msgnextloc("\\E2* Now we're talking!^1! Arright Kris^1, leave it to me!!/%", "obj_ch2_scene10_slash_Step_0_gml_672_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect_wait(385, 125, 15)
    gml_Script_c_facing("l")
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_wait(5)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Put your arms out!!/%", "obj_ch2_scene10_slash_Step_0_gml_683_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_autodepth(0)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(51)
    gml_Script_c_waitcustom()
    gml_Script_c_walkdirect_wait(282, 180, 15)
    gml_Script_c_wait(30)
    gml_Script_c_sel(su)
    gml_Script_c_script_instance(su_actor, gml_Script_scr_afterimage, 3)
    gml_Script_c_autodepth(0)
    gml_Script_c_autowalk(0)
    gml_Script_c_setxy(272, -100)
    gml_Script_c_depth(16)
    gml_Script_c_sprite(60)
    gml_Script_c_walkdirect_wait(272, 160, 30)
    gml_Script_c_wait(5)
    gml_Script_c_soundplay(149)
    gml_Script_c_wait(30)
    gml_Script_c_script_instance_stop(su_actor, gml_Script_scr_afterimage)
    gml_Script_c_sel(kr)
    gml_Script_c_visible(0)
    gml_Script_c_sel(su)
    gml_Script_c_sprite(59)
    gml_Script_c_wait(1)
    gml_Script_c_imageindex(1)
    gml_Script_c_soundplay(60)
    gml_Script_c_wait(30)
    gml_Script_c_imageindex(2)
    gml_Script_c_soundplay(152)
    gml_Script_c_wait(5)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* \\cYPower Beast Forme S\\c0!!/%", "obj_ch2_scene10_slash_Step_0_gml_715_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Move your arms and I'll move 'em with ya!/", "obj_ch2_scene10_slash_Step_0_gml_720_0")
    gml_Script_c_msgnextloc("\\E2* Let's go!!/%", "obj_ch2_scene10_slash_Step_0_gml_721_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_setxy(335, 94)
    gml_Script_c_autowalk(1)
    gml_Script_c_sprite(767)
    gml_Script_c_wait(5)
    gml_Script_c_waitcustom()
    gml_Script_c_sel(su)
    gml_Script_c_sprite(54)
    gml_Script_c_jump(255, 113, 20, 15)
    gml_Script_c_wait(15)
    gml_Script_c_soundplay(40)
    gml_Script_c_sel(ra)
    gml_Script_c_autodepth(0)
    gml_Script_c_sprite(52)
    gml_Script_c_setxy(245, 183)
    gml_Script_c_wait(15)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "* Incredible/", "obj_ch2_scene10_slash_Step_0_gml_741_0")
    gml_Script_c_msgnextloc("\\ED* Your Transformation Is Combining All Your Weak Points/", "obj_ch2_scene10_slash_Step_0_gml_742_0")
    gml_Script_c_msgnextloc("\\E1* Self-Esteem Crushing Efficiency 300`% And Rising/%", "obj_ch2_scene10_slash_Step_0_gml_743_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(qu)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E7* Commence Virtual Combat/%", "obj_ch2_scene10_slash_Step_0_gml_748_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_mus2("volume", 0, 15)
    gml_Script_c_wait(15)
    gml_Script_c_mus("free")
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 10)
{
    con = 11
    if gml_Script_i_ex(103)
    {
        with (obj_npc_sign)
            instance_destroy()
        ar_npc = noone
    }
    cutscene_master = gml_Script_scr_cutscene_make()
    with (obj_mainchara)
        visible = false
    with (global.cinstance[0])
        visible = false
    with (global.cinstance[1])
        visible = false
    kr = 0
    kr_actor = gml_Script_instance_create(261, 143, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisu_dark
    su = 1
    su_actor = gml_Script_instance_create(282, 143, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_up_dw
    ra = 2
    ra_actor = gml_Script_instance_create(231, 147, obj_actor)
    gml_Script_scr_actor_setup(ra, ra_actor, "ralsei")
    ra_actor.sprite_index = spr_ralsei_walk_up
    qu = 3
    qu_actor = gml_Script_instance_create(325, 90, obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_queen_walk_up
    ar_npc = gml_Script_instance_create(322, 190, obj_npc_sign)
    ar_npc.sprite_index = spr_cutscene_10_arcade_on
    ar_npc.depthbonus = 2000
    ar_npc.image_yscale = 2
    ar_npc.image_xscale = 2
    ar_npc.depth = (kr_actor.depth + 5)
    pb_marker = gml_Script_instance_create(290, 145, obj_marker)
    pb_marker.image_yscale = 2
    pb_marker.image_xscale = 2
    pb_marker.sprite_index = spr_cutscene_10_platter_bottom
    pb_marker.depth = (ar_npc.depth + 5000)
    gml_Script_c_wait(30)
    gml_Script_c_soundplay(96)
    gml_Script_c_waitcustom()
    gml_Script_c_sel(kr)
    gml_Script_c_autofacing(0)
    gml_Script_c_walk("d", 16, 2)
    gml_Script_c_sel(ra)
    gml_Script_c_autofacing(0)
    gml_Script_c_walk("d", 16, 2)
    gml_Script_c_sel(su)
    gml_Script_c_autofacing(0)
    gml_Script_c_walk("d", 16, 2)
    gml_Script_c_sel(qu)
    gml_Script_c_autofacing(0)
    gml_Script_c_walk("d", 22, 2)
    gml_Script_c_wait(30)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_wait(15)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EQ* Heh^1, thought you could beat US!?/%", "obj_ch2_scene10_slash_Step_0_gml_845_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_mus2("initloop", "queen.ogg", 0)
    gml_Script_c_sel(qu)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(62)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_arg_objectxy(qu_actor, 20, 0)
    gml_Script_c_setxy(x, y)
    gml_Script_c_waitcustom()
}
if (con == 13 && customcon == 0)
{
    con = 14
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    gml_Script_scr_actor_setup(ra, ra_actor, "ralsei")
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    if (global.choice == 0)
    {
        gml_Script_c_sel(ra)
        gml_Script_c_sprite(797)
        gml_Script_c_speaker("ralsei")
        gml_Script_c_msgsetloc(0, "\\ED* B..^1. Bosom...?/%", "obj_ch2_scene10_slash_Step_0_gml_879_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(5)
        gml_Script_c_sel(qu)
        gml_Script_c_imagespeed(0)
        gml_Script_c_imageindex(0)
        gml_Script_c_autowalk(1)
        gml_Script_c_facing("l")
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E1* It Means Tity/", "obj_ch2_scene10_slash_Step_0_gml_888_0")
        gml_Script_c_facenext("susie", "H")
        gml_Script_c_msgnextloc("* WE KNOW WHAT IT MEANS!!!/", "obj_ch2_scene10_slash_Step_0_gml_890_0")
        gml_Script_c_msgnextloc("\\E5* We aren't helping you!!!/", "obj_ch2_scene10_slash_Step_0_gml_891_0")
        gml_Script_c_facenext("queen", "C")
        gml_Script_c_msgnextloc("* Understood^1, Preference Settings Set To Perish/%", "obj_ch2_scene10_slash_Step_0_gml_893_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(5)
        gml_Script_c_mus2("volume", 0, 40)
        gml_Script_c_sel(qu)
        gml_Script_c_walk_wait("u", 16, 2.857)
        gml_Script_c_walk("r", 16, 18.4375)
        gml_Script_c_wait(60)
    }
    if (global.choice == 1)
    {
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EH* (..^1. the hell did you say that so enthusiastically!?)/", "obj_ch2_scene10_slash_Step_0_gml_908_0")
        gml_Script_c_facenext("ralsei", "2")
        gml_Script_c_msgnextloc("\\E2* Err^1, Queen..^1. aren't there any other options?/%", "obj_ch2_scene10_slash_Step_0_gml_910_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(qu)
        gml_Script_c_imagespeed(0)
        gml_Script_c_imageindex(0)
        gml_Script_c_autowalk(1)
        gml_Script_c_facing("l")
        gml_Script_c_speaker("queen")
        gml_Script_c_msgsetloc(0, "\\E9* Yes..^1. You Can Also: Mega-Perish/", "obj_ch2_scene10_slash_Step_0_gml_918_0")
        gml_Script_c_facenext("susie", 4)
        gml_Script_c_msgnextloc("* Yeah^1, uh^1, no. Perishing..^1. bites./", "obj_ch2_scene10_slash_Step_0_gml_920_0")
        gml_Script_c_facenext("queen", "Q")
        gml_Script_c_msgnextloc("* You Could Say It: Mega-Bytes/", "obj_ch2_scene10_slash_Step_0_gml_922_0")
        gml_Script_c_facenext("susie", "H")
        gml_Script_c_msgnextloc("\\EH* Would you get out of here already!?!?/", "obj_ch2_scene10_slash_Step_0_gml_924_0")
        gml_Script_c_facenext("queen", "C")
        gml_Script_c_msgnextloc("* Understood. Preference Settings Set To \"Perish\"/%", "obj_ch2_scene10_slash_Step_0_gml_926_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(5)
        gml_Script_c_mus2("volume", 0, 40)
        gml_Script_c_sel(qu)
        gml_Script_c_autowalk(1)
        gml_Script_c_walk_wait("u", 16, 2.857)
        gml_Script_c_walk("r", 16, 18.4375)
        gml_Script_c_wait(60)
    }
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EH* C'mon^1, let's go after her!/%", "obj_ch2_scene10_slash_Step_0_gml_940_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_facing("d")
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 5 && customcon == 1)
{
    if (specialTimer < 60)
    {
        specialDraw = 1
        specialTimer++
    }
    else
    {
        specialDraw = 0
        customcon = 0
        specialTimer = 0
        con = 6
        gml_Script_c_waitcustom_end()
    }
}
if (con == 6 && customcon == 1)
{
    if (specialTimer == 0)
    {
        animeBG = gml_Script_instance_create(0, 0, obj_anime_bg_controller)
        animeBG.image_alpha = 0
        kr_actor.depth = 15
        animeBG.depth = 19
        specialTimer = 1
    }
    if (animeBG.image_alpha >= 1)
    {
        specialTimer = 0
        customcon = 0
        con = 7
        gml_Script_c_waitcustom_end()
    }
    else
        animeBG.image_alpha += 0.05
}
if (con == 7 && customcon == 1)
{
    bgAlpha = clamp((bgAlpha - 0.1), 0, 1)
    animeBG.image_alpha -= 0.1
    if (animeBG.image_alpha <= 0)
    {
        with (animeBG)
            instance_destroy()
        ar_npc.depthbonus = 3000
        pb_marker.depth = 99999
        ra_actor.depthbonus = 450
        customcon = 0
        specialTimer = 0
        con = 8
        gml_Script_c_waitcustom_end()
    }
}
if (con == 8 && customcon == 0)
{
    if (!instance_exists(obj_cutscene_master))
    {
        global.plot = 54
        con = 20
        customcon = 0
    }
    else
    {
        kr_x_save = kr_actor.x
        kr_y_save = kr_actor.y
        su_x_save = su_actor.x
        su_y_save = su_actor.y
        ra_x_save = ra_actor.x
        ra_y_save = ra_actor.y
    }
}
if (con == 20)
{
    con = 9
    with (obj_mainchara)
        visible = false
    with (global.cinstance[0])
        visible = false
    with (global.cinstance[1])
        visible = false
    ra_actor = gml_Script_instance_create(ra_x_save, ra_y_save, obj_marker)
    ra_actor.sprite_index = spr_cutscene_10_ralsei_splat
    ra_actor.image_xscale = 2
    ra_actor.image_yscale = 2
    kr_actor = gml_Script_instance_create(su_x_save, su_y_save, obj_marker)
    kr_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back
    kr_actor.image_xscale = 2
    kr_actor.image_yscale = 2
    su_actor = gml_Script_instance_create(su_x_save, su_y_save, obj_marker)
    su_actor.sprite_index = spr_cutscene_10_susie_kris_t_pose_back
    su_actor.image_xscale = 2
    su_actor.image_yscale = 2
    ra_actor.depth = (su_actor.depth + 1)
    qu_actor = gml_Script_instance_create(335, 90, obj_marker)
    qu_actor.sprite_index = spr_queen_walk_up
    qu_actor.image_xscale = 2
    qu_actor.image_yscale = 2
    qu_actor.image_speed = 0
    gml_Script_instance_create(x, y, obj_ch2_scene10_arcade_bg)
}
if (con == 11 && customcon == 1 && (!gml_Script_i_ex(355)))
{
    if (specialDraw == 0)
    {
        explosion_marker = gml_Script_instance_create(ar_npc.x, (ar_npc.y - 90), obj_marker)
        explosion_marker.image_yscale = 4
        explosion_marker.image_xscale = 4
        explosion_marker.depth = (qu_actor.depth + 1)
        explosion_marker.sprite_index = spr_vector_explosion
        explosion_marker.image_speed = 0.1333
        specialDraw = 69
        con = 12
        customcon = 0
        gml_Script_c_waitcustom_end()
    }
}
if (con == 12 && customcon == 1)
{
    if (specialDraw == 70)
    {
        global.msc = 1014
        gml_Script_scr_text(global.msc)
        mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
        specialDraw = 71
    }
    if (!instance_exists(obj_dialoguer))
    {
        con = 13
        customcon = 0
        gml_Script_c_waitcustom_end()
    }
}
if (specialDraw == 69)
{
    if (explosion_marker.image_index > 0 && ar_npc.sprite_index == spr_cutscene_10_arcade_on)
    {
        ar_npc.sprite_index = spr_cutscene_10_arcade_rubble
        ar_npc.y = 200
    }
    explosiontimer++
    if (explosiontimer == 32)
    {
        with (explosion_marker)
            instance_destroy()
        specialDraw = 70
    }
}
if (con == 15)
{
    if instance_exists(obj_musicer_cyber)
    {
        with (obj_musicer_cyber)
            instance_destroy()
    }
    gml_Script_instance_create(x, y, obj_musicer_cyber)
    con = 16
    instance_destroy()
}
if (con == 14 && customcon == 0)
{
    if (!instance_exists(obj_cutscene_master))
    {
        global.interact = 0
        global.plot = 55
        con = 15
        gml_Script_instance_create(458, 127, obj_savepoint)
        gml_Script_snd_free_all()
        instance_destroy(forcefield_left)
        instance_destroy(forcefield_right)
        if gml_Script_i_ex(133)
        {
            with (obj_npc_facing)
                instance_destroy()
        }
    }
}
if pause_music
{
    pause_music = 0
    gml_Script_snd_free_all()
}
