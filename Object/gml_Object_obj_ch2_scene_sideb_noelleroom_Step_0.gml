if (con == 0 && obj_mainchara.x > (x - 6) && global.interact == 0)
{
    global.interact = 1
    con = 1
}
if (con == 1)
{
    con = 2
    with (obj_mainchara)
        visible = false
    with (obj_caterpillarchara)
        visible = false
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    niseralsei = gml_Script_scr_dark_marker(-100, -100, 778)
    niseralsei = gml_Script_scr_dark_marker(-100, -100, 816)
    niseralsei.image_alpha = 0
    niseralsei.image_speed = 0.1
    if (floor(random(20)) == 0)
        niseralsei.sprite_index = spr_ralsei_dance2
}
if (con == 2)
{
    con = 3
    kr_y = kr_actor.y
    if (kr_y < 270)
        kr_y = 270
    gml_Script_c_pannable(1)
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect(630, kr_y, 15)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(555, su_actor.y, 15)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(495, ra_actor.y, 15)
    gml_Script_c_wait(16)
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_emote("!", 30)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E6* H..^1. huh?/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_58_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_facing("u")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("u")
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(555, 205, 15)
    gml_Script_c_wait(45)
    gml_Script_c_sel(su)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E7* Hey^1, it says this is Noelle's room!/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_80_0")
    gml_Script_c_msgnextloc("\\E9* Kris^1, let's go in and save her!/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_81_0")
    gml_Script_c_msgnextloc("\\EA* And uh^1, y'know^1, teach her not to get in our way./%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_82_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_emote("...", 30)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E6* ..^1. Kris?/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_93_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E5* Fine^1, I'll do it myself!/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_100_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(door, "visible", 0)
    gml_Script_c_soundplay(63)
    gml_Script_c_wait(5)
    gml_Script_c_walkdirect(555, 185, 5)
    gml_Script_c_wait(5)
    gml_Script_c_soundplay(62)
    gml_Script_c_var_instance(door, "visible", 1)
    gml_Script_c_var_instance(su_actor, "visible", 0)
    gml_Script_c_shake()
    gml_Script_c_wait(120)
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E0* Kris.../", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_122_0")
    gml_Script_c_msgnextloc("\\E2* Don't you wonder..^1. how they're doing in there?/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_123_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_wait(90)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EQ* Umm^1, I said^1, don't you wonder.../", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_133_0")
    gml_Script_c_msgnextloc("\\EI* ..^1. how Noelle and Susie are doing?/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_134_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_wait(90)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EQ* Y-you're right^1, Kris^1, it has only been 30 seconds.../", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_144_0")
    gml_Script_c_msgnextloc("\\EQ* (I'll wait a minute first...)/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_145_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_wait(90)
    gml_Script_c_var_lerp_instance(ra_actor, "image_alpha", 1, 0, 60)
    gml_Script_c_var_instance(niseralsei, "x", 495)
    gml_Script_c_var_instance(niseralsei, "y", ra_actor.y)
    gml_Script_c_var_lerp_instance(niseralsei, "image_alpha", 0, 1, 60)
    gml_Script_c_wait(150)
    gml_Script_c_var_instance(niseralsei, "image_alpha", 0)
    gml_Script_c_var_instance(ra_actor, "image_alpha", 1)
    gml_Script_c_sprite(1518)
    gml_Script_c_autowalk(0)
    gml_Script_c_imageindex(1)
    gml_Script_c_shakeobj()
    gml_Script_c_sel(su)
    gml_Script_c_facing("d")
    gml_Script_c_var_instance(door, "visible", 0)
    gml_Script_c_var_instance(su_actor, "visible", 1)
    gml_Script_c_soundplay(63)
    gml_Script_c_wait(5)
    gml_Script_c_walkdirect(555, su_actor.y, 10)
    gml_Script_c_wait(5)
    gml_Script_c_soundplay(62)
    gml_Script_c_var_instance(door, "visible", 1)
    gml_Script_c_shake()
    gml_Script_c_wait(5)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("l")
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E7* Alright let's go!/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_194_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_shakeobj()
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EU* H-huh? What!? W-wait -- wait!?/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_202_0")
    gml_Script_c_msgnextloc("\\EU* Wait^1, we were supposed to --/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_203_0")
    gml_Script_c_facenext("susie", 7)
    gml_Script_c_msgnextloc("\\E7* Hey^1, let's go!/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_205_0")
    gml_Script_c_facenext("ralsei", 21)
    gml_Script_c_msgnextloc("\\EL* W-wait^1! Wait^1, Susie!/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_207_0")
    gml_Script_c_msgnextloc("\\EK* What^1, um^1, happened in there?/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_208_0")
    gml_Script_c_facenext("susie", 25)
    gml_Script_c_msgnextloc("\\EP* What do you mean what happened?/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_210_0")
    gml_Script_c_facenext("ralsei", 19)
    gml_Script_c_msgnextloc("\\EJ* U-umm..^1. in there^1, with Noelle!/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_212_0")
    gml_Script_c_facenext("susie", 21)
    gml_Script_c_msgnextloc("\\EL* Nothin./", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_214_0")
    gml_Script_c_facenext("ralsei", 20)
    gml_Script_c_msgnextloc("\\EK* N..^1. Nothing? Nothing at all?/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_216_0")
    gml_Script_c_facenext("susie", 10)
    gml_Script_c_msgnextloc("\\EA* Just told her everything is a dream./", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_218_0")
    gml_Script_c_msgnextloc("\\E2* Now she's feeling better./", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_219_0")
    gml_Script_c_facenext("ralsei", 20)
    gml_Script_c_msgnextloc("\\EK* ..^1. anything else?/", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_221_0")
    gml_Script_c_facenext("susie", 7)
    gml_Script_c_msgnextloc("\\E7* No and let's go./%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_223_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(4)
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_imagespeed(0.5)
    gml_Script_c_wait_box(6)
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_wait_box(8)
    gml_Script_c_sel(ra)
    gml_Script_c_imagespeed(0)
    gml_Script_c_imageindex(0)
    gml_Script_c_wait_talk()
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    var small_text = gml_Script_stringsetloc("HEY!", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_247_0")
    gml_Script_scr_smallface(0, "ralsei", 32, "rightmid", "bottom", small_text)
    gml_Script_c_msgsetloc(0, "\\E2* Psst..^1. I'll tell you later^1, Kris. \\f0 /", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_248_0")
    gml_Script_c_facenext("ralsei", 26)
    gml_Script_c_msgnextloc("\\EQ* (Oh well^1, as long as Susie's happy..^1. right?)/%", "obj_ch2_scene_sideb_noelleroom_slash_Step_0_gml_251_0_b")
    gml_Script_c_talk_wait()
    gml_Script_c_panobj(kr_actor, 15)
    gml_Script_c_wait(15)
    gml_Script_c_pannable(0)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 3 && (!gml_Script_i_ex(895)))
{
    global.interact = 0
    global.flag[915] = 9
    con = 4
    global.facing = 0
    instance_destroy()
}