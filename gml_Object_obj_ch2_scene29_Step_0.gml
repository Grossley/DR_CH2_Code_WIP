if (con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 0
    gml_Script_snd_free_all()
    obj_mainchara.x = 1007
    obj_mainchara.y = 100
    gml_Script_scr_getchar(2)
    gml_Script_scr_makecaterpillar((obj_mainchara.x - 40), obj_mainchara.y, 2, 0)
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    gml_Script_c_sel(su)
    gml_Script_c_setxy(958, 69)
    gml_Script_c_sprite(16)
}
if (con == 1)
{
    global.interact = 1
    con = 2
    gml_Script_c_sel(0)
    gml_Script_c_setxy(1007, 80)
    gml_Script_c_walk_wait("d", 1, 20)
    gml_Script_c_wait(20)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "* ..^1. Man^1, it got late^1, didn't it...?/%", "obj_ch2_scene29_slash_Step_0_gml_38_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E1* ... guess you should go home^1, huh?/%", "obj_ch2_scene29_slash_Step_0_gml_47_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(30)
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EQ* Alright^1, you don't have to say it./%", "obj_ch2_scene29_slash_Step_0_gml_56_0")
    gml_Script_c_talk_wait()
    gml_Script_c_delayfacing(41, "r")
    gml_Script_c_walkdirect_wait(979, 94, 40)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Don't wanna walk home by yourself^1, huh?/%", "obj_ch2_scene29_slash_Step_0_gml_64_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EQ* Well^1, if you're gonna MAKE me^1, I guess.../%", "obj_ch2_scene29_slash_Step_0_gml_71_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_delayfacing(31, "l")
    gml_Script_c_walkdirect_wait(1033, 94, 30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Let's go./%", "obj_ch2_scene29_slash_Step_0_gml_85_0")
    gml_Script_c_talk_wait()
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 2 && (!gml_Script_i_ex(895)))
{
    global.interact = 0
    con = 0
    global.currentsong[0] = gml_Script_snd_init("town.ogg")
    global.currentsong[1] = gml_Script_mus_loop(global.currentsong[0])
    with (obj_mainchara)
        visible = true
    global.facing = 0
    global.plot = 205
    instance_destroy()
}
