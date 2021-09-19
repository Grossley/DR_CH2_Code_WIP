if (con == 0 && global.plot == 16)
{
    global.interact = 1
    con = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = gml_Script_scr_cutscene_make()
    with (obj_mainchara)
        visible = false
    gml_Script_c_pannable(1)
    kr = 0
    kr_actor = gml_Script_instance_create((obj_mainchara.x - 10), (obj_mainchara.y - 20), obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisd
    su = 3
    su_actor = gml_Script_instance_create((obj_mainchara.x + 10), (obj_mainchara.y - 26), obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susie_walk_down_lw_unhappy
    gml_Script_c_wait(30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* Well^1, damn. GUESS we gotta do our project./", "obj_ch2_scene7_slash_Step_0_gml_31_0")
    gml_Script_c_msgnextloc("\\EB* (Sigh...)/%", "obj_ch2_scene7_slash_Step_0_gml_32_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("susie")
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E9* Least we got Lancer^1, right!?/%", "obj_ch2_scene7_slash_Step_0_gml_39_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_wait(10)
    gml_Script_c_facing("l")
    gml_Script_c_wait(9)
    gml_Script_c_facing("r")
    gml_Script_c_wait(8)
    gml_Script_c_facing("l")
    gml_Script_c_wait(7)
    gml_Script_c_facing("d")
    gml_Script_c_wait(6)
    gml_Script_c_facing("u")
    gml_Script_c_wait(15)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E6* ..^1. Lancer? Where are you?/%", "obj_ch2_scene7_slash_Step_0_gml_58_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_facing("susieunhappy")
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EK* Damn^1, guess he skipped out after all^1, huh./%", "obj_ch2_scene7_slash_Step_0_gml_66_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(kr)
    gml_Script_c_walk("d", 1, 30)
    gml_Script_c_sel(su)
    gml_Script_c_walk("d", 2, 30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgside("top")
    gml_Script_c_msgsetloc(0, "* Hmm..^1. so^1, where should we do this?/%", "obj_ch2_scene7_slash_Step_0_gml_76_0")
    gml_Script_c_talk()
    gml_Script_c_wait(30)
    gml_Script_c_waittalk()
    gml_Script_c_facing("u")
    gml_Script_c_facing("susie")
    gml_Script_c_wait(15)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E1* ..^1. what? The Library?/%", "obj_ch2_scene7_slash_Step_0_gml_85_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* Ugh..^1. Well^1, alright./%", "obj_ch2_scene7_slash_Step_0_gml_92_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(5)
    gml_Script_c_sel(su)
    gml_Script_c_walk("d", 5, 60)
    gml_Script_c_actortokris()
    gml_Script_c_panobj(80, 15)
    gml_Script_c_wait(15)
    gml_Script_c_pannable(0)
}
if (con == 2)
{
    if (!instance_exists(obj_cutscene_master))
    {
        global.interact = 0
        global.plot = 17
        con = 3
    }
}
