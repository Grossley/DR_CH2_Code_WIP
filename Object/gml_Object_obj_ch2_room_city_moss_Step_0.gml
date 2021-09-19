if (con == 0 && (!gml_Script_d_ex()))
{
    con = 1
    alarm[0] = 30
    gml_Script_scr_speaker("susie")
    gml_Script_msgsetloc(0, "\\E7* Heck yeah^1, I didn't know there was moss here!/", "obj_ch2_room_city_moss_slash_Step_0_gml_9_0")
    gml_Script_msgnextloc("\\EA* It's totally uneaten^1, too.../", "obj_ch2_room_city_moss_slash_Step_0_gml_10_0")
    gml_Script_msgnextloc("\\E1* ..^1. wait a sec./", "obj_ch2_room_city_moss_slash_Step_0_gml_11_0")
    gml_Script_msgnextloc("\\E0* ..^1. Kris.../%", "obj_ch2_room_city_moss_slash_Step_0_gml_12_0")
    gml_Script_d_make()
}
if (con == 2 && (!gml_Script_d_ex()))
{
    con = 3
    alarm[0] = 30
    gml_Script_snd_pause(global.currentsong[1])
    if global.is_console
        gml_Script_snd_volume(global.currentsong[1], 0, 0)
    coolsong[0] = gml_Script_snd_init("noelle_school.ogg")
    coolsong[1] = gml_Script_mus_loop(coolsong[0])
    gml_Script_scr_speaker("susie")
    gml_Script_msgsetloc(0, "\\EK* Were you..^1. saving this for me?/", "obj_ch2_room_city_moss_slash_Step_0_gml_28_0")
    gml_Script_msgnextloc("\\EQ* ..^1. Heh./", "obj_ch2_room_city_moss_slash_Step_0_gml_29_0")
    gml_Script_msgnextloc("\\E2* Guess even you've got your good moments.../%", "obj_ch2_room_city_moss_slash_Step_0_gml_30_0")
    gml_Script_d_make()
}
if (con == 4 && (!gml_Script_d_ex()))
{
    con = 5
    alarm[0] = 30
    gml_Script_snd_play(162)
    gml_Script_scr_speaker("no_name")
    gml_Script_msgsetloc(0, "* (You ate the moss..^1. together.)/%", "obj_ch2_room_city_moss_slash_Step_0_gml_43_0")
    gml_Script_d_make()
}
if (con == 6 && (!gml_Script_d_ex()))
{
    con = 7
    alarm[0] = 30
    gml_Script_snd_free(coolsong[0])
    gml_Script_scr_speaker("ralsei")
    gml_Script_msgsetloc(0, "\\EX* (..^1. uh?)/%", "obj_ch2_room_city_moss_slash_Step_0_gml_56_0")
    gml_Script_d_make()
}
if (con == 8 && (!gml_Script_d_ex()))
{
    con = 99
    if global.is_console
        gml_Script_snd_volume(global.currentsong[1], 1, 0)
    gml_Script_snd_resume(global.currentsong[1])
    instance_activate_object(obj_readable_room1)
    global.interact = 0
    global.facing = 0
}
if (dumpster_con == 10 && (!gml_Script_d_ex()))
{
    dumpster_con = 99
    alarm[1] = 120
    with (dumpster)
        gml_Script_scr_shakeobj()
}
