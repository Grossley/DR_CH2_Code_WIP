if (con == 1)
{
    con = 2
    global.interact = 1
    audio_sound_gain(global.currentsong[1], 0, 500)
    nise_kknpc = gml_Script_scr_dark_marker(355, 113, 1259)
    nise_kknpc.image_index = kknpc.image_index
    nise_kknpc.image_speed = kknpc.image_speed
    with (nise_kknpc)
        gml_Script_scr_depth()
    instance_deactivate_object(kknpc)
    fadeout = gml_Script_instance_create(0, 0, obj_fadeout)
    fadeout.depth = 100
}
if (con == 2)
{
    fade_timer++
    if (fade_timer == 30)
    {
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetloc(0, "* (You were crushed under the weight of 400 bagels and defeated instantly...)/%", "obj_npc_musical_door_slash_Step_0_gml_30_0")
        gml_Script_d_make()
        gml_Script_snd_play(298)
    }
    if (fade_timer >= 120 && (!gml_Script_d_ex()))
        con = 3
}
if (con == 3)
{
    con = 4
    alarm[0] = 90
}
if (con == 5)
{
    con = 6
    alarm[0] = 30
    gml_Script_instance_create(0, 0, obj_fadein)
    with (fadeout)
        instance_destroy()
    audio_sound_gain(global.currentsong[1], 1, 500)
    gml_Script_scr_speaker("no_name")
    gml_Script_msgsetloc(0, "* (Not really.)/", "obj_npc_musical_door_slash_Step_0_gml_56_0")
    gml_Script_msgnextloc("* (You just can't carry that many.)/%", "obj_npc_musical_door_slash_Step_0_gml_57_0")
    gml_Script_d_make()
}
if (con == 7 && (!gml_Script_d_ex()))
{
    con = 0
    global.interact = 0
    fade_timer = 0
    with (nise_kknpc)
        instance_destroy()
    instance_activate_object(kknpc)
}
