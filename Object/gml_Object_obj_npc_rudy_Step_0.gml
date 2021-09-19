if (coughcon < 0)
    event_inherited()
if (coughcon == 0 && (!gml_Script_d_ex()))
{
    coughcon = 1
    gml_Script_snd_play(233)
    sprite_index = spr_rudy_cough
    image_speed = 0.25
    alarm[0] = 30
}
if (coughcon == 2 && (!gml_Script_d_ex()))
{
    coughcon = 3
    sprite_index = spr_rudy_d
    image_speed = 0
    var pickletalk = global.flag[308] == 1
    var sentenceEnd = (pickletalk ? "/" : "/%")
    gml_Script_scr_speaker("rudy")
    gml_Script_msgsetsubloc(0, "\\E0* 'Sides^1, your dad ain't much without his main man!~1", sentenceEnd, "obj_npc_rudy_slash_Step_0_gml_29_0")
    if pickletalk
    {
        gml_Script_scr_anyface_next("susie", "K")
        gml_Script_msgnextloc("\\EK* Yeah he..^1. had to ask the store guy for free pickles./", "obj_npc_rudy_slash_Step_0_gml_33_0")
        gml_Script_scr_anyface_next("rudy", 6)
        gml_Script_msgnextloc("\\E6* Dammit man^1! You know I would give you free pickles!/", "obj_npc_rudy_slash_Step_0_gml_35_0")
        gml_Script_scr_anyface_next("rudy", "7")
        gml_Script_msgnextloc("\\E7* I'll kick that store guy's bony little ass!/", "obj_npc_rudy_slash_Step_0_gml_37_0")
        gml_Script_scr_anyface_next("susie", "5")
        gml_Script_msgnextloc("\\E5* Yeah^1, me too!/", "obj_npc_rudy_slash_Step_0_gml_39_0")
        gml_Script_scr_anyface_next("rudy", "7")
        gml_Script_msgnextloc("\\E7* We'll make him into a goddamn xylophone!/%", "obj_npc_rudy_slash_Step_0_gml_41_0")
    }
    gml_Script_d_make()
}
if (coughcon == 3 && (!gml_Script_d_ex()))
{
    coughcon = -1
    global.interact = 0
    myinteract = 0
}
