if (con == 0)
{
    con = 1
    alarm[4] = 40
}
if (con == 1)
    global.interact = 1
if (con == 2)
{
    sndplay = false
    if gml_Script_snd_is_playing(global.currentsong[1])
    {
        sndplay = true
        gml_Script_snd_pause(global.currentsong[1])
    }
    gml_Script_snd_play(54)
    con = 3
    alarm[4] = 200
}
if (con == 4)
{
    with (obj_dialoguer)
        instance_destroy()
    with (obj_writer)
        instance_destroy()
    con = 7
}
if (con == 7)
{
    gml_Script_snd_stop(54)
    if (sndplay == true)
        gml_Script_snd_resume(global.currentsong[1])
    global.msg[0] = gml_Script_stringsetloc("* It's nothing but garbage noise./%", "obj_darkphone_event_slash_Step_0_gml_42_0")
    gml_Script_instance_create(0, 0, obj_dialoguer)
    con = 5
    global.interact = 6
    instance_destroy()
}
