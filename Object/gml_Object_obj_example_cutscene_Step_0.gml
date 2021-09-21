if (bon == 0 && obj_mainchara.x >= (x - 100) && global.interact == 0)
    bon = 1
if (con == 0 && obj_mainchara.x >= x && global.interact == 0)
{
    con = 1
    global.interact = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = gml_Script_scr_cutscene_make()
    kr = 0
    kr_actor = gml_Script_instance_create(obj_mainchara.x, obj_mainchara.y, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisr_dark
    with (obj_mainchara)
        visible = false
    su = 1
    su_actor = gml_Script_instance_create((obj_mainchara.x + 300), obj_mainchara.y, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susiel_dark
    su_actor.specialsprite[6] = 21
    with (kr_actor)
        gml_Script_scr_emote("!", 30)
    gml_Script_c_sel(su)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "* Pee pee town./", "obj_example_cutscene_slash_Step_0_gml_34_0")
    gml_Script_c_msgnextloc(" * Box 1/", "obj_example_cutscene_slash_Step_0_gml_35_0")
    gml_Script_c_msgnextloc(" * Box 2/", "obj_example_cutscene_slash_Step_0_gml_36_0_b")
    gml_Script_c_msgnextloc(" * Box 3/", "obj_example_cutscene_slash_Step_0_gml_37_0")
    gml_Script_c_facenext("ralsei", 0)
    gml_Script_c_msgnextloc("* Funny./%", "obj_example_cutscene_slash_Step_0_gml_36_0")
    gml_Script_c_talk()
    gml_Script_c_sel(kr)
    gml_Script_c_wait_box(1)
    gml_Script_c_facing("d")
    gml_Script_c_emote("!", 30)
    gml_Script_c_script_instance(kr_actor, gml_Script_scr_afterimage, 3)
    gml_Script_c_var_lerp_instance(kr_actor, "x", kr_actor.x, (gml_Script_camerax() + 100), 30, 1)
    gml_Script_c_wait_box(2)
    gml_Script_c_script_instance_stop(kr_actor, gml_Script_scr_afterimage)
    gml_Script_c_facing("l")
    gml_Script_c_var_lerp_instance(kr_actor, "x", kr_actor.x, (gml_Script_camerax() + 100), 30, 2, "out")
    gml_Script_c_wait_box(3)
    gml_Script_c_facing("u")
    gml_Script_c_var_lerp_instance(kr_actor, "x", kr_actor.x, (gml_Script_camerax() + 100), 30, 3, "in")
    gml_Script_c_wait_talk()
    gml_Script_c_facing("r")
    gml_Script_c_emote("!", 30, 0)
    gml_Script_c_sel(kr)
    gml_Script_c_script_instance(id, gml_Script_snd_play_pitch, 25, 56, (0.5 + random(1.2)))
    gml_Script_c_shakestep_x(15, -4, 15, 25, 5, 1)
    gml_Script_c_wait(150)
    gml_Script_c_script_instance_stop(id, gml_Script_snd_play_pitch)
    gml_Script_c_shakestep(-15, 0)
    gml_Script_c_wait(30)
    gml_Script_c_flip("y")
    gml_Script_c_pannable(true)
    gml_Script_c_panspeed_wait(2.9, 0, 80)
    gml_Script_c_sel(1)
    gml_Script_c_var_lerp("image_angle", "init", 180, 30)
    gml_Script_c_walkdirect_wait(968, 182, 70)
    gml_Script_c_var("image_angle", 0)
    gml_Script_c_var_lerp("image_xscale", "init", 4, 30)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("susie")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E3* ..^1. Man^1, it got late^1, didn't it...?/%", "obj_example_cutscene_slash_Step_0_gml_55_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "honkcon", 1)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* Well. Guess you should go home^1, huh?/%", "obj_example_cutscene_slash_Step_0_gml_60_0")
    gml_Script_c_talk_wait()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EQ* Alright^1, you don't have to say it./%", "obj_example_cutscene_slash_Step_0_gml_64_0")
    gml_Script_c_talk_wait()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Don't wanna walk home by yourself^1, huh?/%", "obj_example_cutscene_slash_Step_0_gml_68_0")
    gml_Script_c_talk_wait()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EQ* Well^1, if you're gonna MAKE me^1, I guess.../%", "obj_example_cutscene_slash_Step_0_gml_72_0")
    gml_Script_c_talk_wait()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E9* Let's go./%", "obj_example_cutscene_slash_Step_0_gml_76_0")
    gml_Script_c_talk_wait()
    gml_Script_c_fadeout_color(4, 16777215)
    gml_Script_c_wait(5)
    gml_Script_c_specialsprite(5)
    gml_Script_c_wait(1)
    gml_Script_c_fadein(4)
    gml_Script_c_wait(30)
    gml_Script_c_walk_wait("r", 4, 43.75)
    gml_Script_c_sel(0)
    gml_Script_c_walk_wait("r", 4, 39.25)
    gml_Script_c_wait(30)
    gml_Script_c_sel(1)
    gml_Script_c_specialsprite(3)
    gml_Script_c_wait(30)
    gml_Script_c_specialsprite(0)
    gml_Script_c_wait(30)
    gml_Script_c_specialsprite(1)
    gml_Script_c_wait(30)
    gml_Script_c_msgsetloc(0, "* I'm going home/%", "obj_example_cutscene_slash_Step_0_gml_95_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walkdirect_wait(1446, 142, 50)
    gml_Script_c_sel(0)
    gml_Script_c_specialsprite(0)
    gml_Script_c_panobj(kr_actor, 30)
    gml_Script_c_wait(30)
    gml_Script_c_pannable(false)
    gml_Script_c_actortokris()
}
if (con == 2)
{
    if (!instance_exists(obj_cutscene_master))
    {
        con = 3
        global.interact = 0
    }
}
if (honkcon == 1)
{
    honkcount++
    if (honkcount >= 30)
        honkcon = 2
    else
        gml_Script_snd_play(snd_cantselect)
    with (su_actor)
        gml_Script_scr_flip(choose("x", "y"))
}
