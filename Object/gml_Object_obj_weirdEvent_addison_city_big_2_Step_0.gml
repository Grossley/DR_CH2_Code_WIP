if (con == 0)
{
    if (global.flag[915] == 2 && global.flag[916] == 0)
    {
        if (global.flag[421] == 1)
        {
            with (obj_mainchara)
            {
                if place_meeting(x, y, obj_triggervolume)
                    other.con++
            }
        }
    }
}
if (con == 1)
{
    global.interact = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    gml_Script_mus_volume(global.currentsong[1], 0, 45)
    con++
}
if (con == 2)
{
    con = -1
    gml_Script_c_speaker("no_name")
    gml_Script_c_msgsetloc(0, "* If you're something else^1, maybe a Dating Shoes isn't right...?/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_28_0")
    gml_Script_c_msgnextloc("* Maybe I could interest you in a FreezeRing?/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_29_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect(1140, 364, 12)
    gml_Script_c_sel(no)
    gml_Script_c_walkdirect_wait(1082, 346, 12)
    gml_Script_c_facing("u")
    gml_Script_c_sel(kr)
    gml_Script_c_facing("u")
    gml_Script_c_wait(1)
    gml_Script_c_pannable(1)
    gml_Script_c_panobj(kr_actor, 8)
    gml_Script_c_wait(8)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E2* Huh...? A ring...?/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_44_0")
    gml_Script_c_msgnextloc("\\E8* Faha, sorry, I don't think WE need something like that!/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_46_0")
    gml_Script_c_facenext("no_name", 0)
    gml_Script_c_msgnextloc("* C'mon, angel! You can't get stronger without good equipment!/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_47_0")
    gml_Script_c_facenext("noelle", "D")
    gml_Script_c_msgnextloc("\\E1* Stronger...? R-right, I guess that's how it works here.../%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_49_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "con", 3)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_pannable(0)
    gml_Script_c_terminatekillactors()
}
if (con == 3 && (!gml_Script_d_ex()))
{
    global.msc = 1208
    gml_Script_scr_text(global.msc)
    gml_Script_d_make()
    timer = 0
    con = -1
}
if (con == 6 && (!gml_Script_d_ex()))
{
    timer++
    if (timer == 15)
        fade = gml_Script_scr_fadeout(30)
    if (timer == 75)
    {
        with (obj_npc_room)
            instance_destroy()
        gml_Script_snd_play(251)
    }
    if (timer == 135)
    {
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetloc(0, "* (You got the FreezeRing.)/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_84_0")
        gml_Script_d_make()
        timer = 0
        con++
    }
}
if (con == 7 && (!gml_Script_d_ex()))
{
    timer++
    if (timer == 15)
    {
        var _temp_local_var_5 = fade
        instance_destroy()
    }
    if (timer == 60)
    {
        gml_Script_scr_speaker("noelle")
        gml_Script_msgsetloc(0, "\\EB* (What..^1. what just happened?)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_117_0")
        gml_Script_msgnextloc("\\EB* (Did I actually just...)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_118_0")
        gml_Script_msgnextloc("\\E3* (No^1, they..^1. they must have given it to us. The ring.)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_119_0")
        gml_Script_msgnextloc("\\Ee* (...)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_120_0")
        gml_Script_msgnextloc("\\Ed* (Besides..^1. it's good to get stronger^1, isn't it?)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_121_0_b")
        gml_Script_msgnextloc("\\E4* Th..^1. thanks^1, Kris!/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_122_0")
        gml_Script_d_make()
        con++
    }
}
if (con == 8 && (!gml_Script_d_ex()))
{
    gml_Script_scr_weaponget(22)
    gml_Script_snd_free_all()
    global.flag[915] = 3
    global.interact = 0
    con++
}
if (con == 72 && (!gml_Script_d_ex()))
{
    gml_Script_scr_speaker("noelle")
    gml_Script_msgsetloc(0, "\\EQ* (Though^1, if Susie bought me a ring...)/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_121_0")
    gml_Script_d_make()
    con++
}
if (con == 73 && (!gml_Script_d_ex()))
{
    if (global.flag[915] > 0)
        gml_Script_scr_sideb_fail()
    gml_Script_mus_volume(global.currentsong[1], 0.8, 16)
    global.interact = 0
    con++
}
