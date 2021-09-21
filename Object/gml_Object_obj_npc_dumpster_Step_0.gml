if (con == -1)
    event_inherited()
if (con == 0 && (!gml_Script_d_ex()))
{
    con = 1
    event_user(0)
}
if (con == 1 && (!gml_Script_d_ex()))
    con = -1
if (moss_con == 1 && (!gml_Script_d_ex()))
{
    moss_con = 2
    alarm[0] = 30
    if (shine != self)
        instance_destroy(shine)
    global.msc = 0
    global.typer = 6
    global.fc = 0
    global.fe = 0
    global.interact = 1
    global.flag[920] = 1
    gml_Script_scr_speaker("no_name")
    gml_Script_msgsetloc(0, "\\s0* You found the \\cG[Moss]\\cW^8! %%", "obj_npc_dumpster_slash_Step_0_gml_40_0")
    gml_Script_d_make()
    gml_Script_snd_play(snd_moss_fanfare)
    gml_Script_snd_pause(global.currentsong[1])
    gml_Script_scr_script_delayed(gml_Script_snd_resume, 100, global.currentsong[1])
    instance_deactivate_object(obj_readable_room1)
}
if (moss_con == 3 && (!gml_Script_d_ex()))
{
    moss_con = 4
    alarm[0] = 30
    var ateMoss = global.flag[106] == 1
    var haveSusie = gml_Script_scr_havechar(2)
    var haveNoelle = gml_Script_scr_havechar(4)
    var sentenceEnd = ((ateMoss || haveSusie || haveNoelle) ? "/" : "/%")
    if ateMoss
    {
        sentenceEnd = (haveNoelle ? "/" : "/%")
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetsubloc(0, "* Your title was upgraded to [Moss Finder].~1", sentenceEnd, "obj_npc_dumpster_slash_Step_0_gml_63_0")
        read += 1
        myinteract = 3
        mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
    }
    if haveSusie
        con = 10
    if haveNoelle
    {
        global.flag[921] = 1
        var text = gml_Script_stringsetloc("\\E1* (Why do they look so pleased?)/%", "obj_npc_dumpster_slash_Step_0_gml_78_0")
        if ateMoss
        {
            gml_Script_scr_anyface_next("noelle", 1)
            gml_Script_msgnext(text)
        }
        else
        {
            gml_Script_scr_speaker("noelle")
            gml_Script_msgset(0, text)
        }
        read += 1
        myinteract = 3
        mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
    }
}
if (con == 10 && (!gml_Script_d_ex()))
{
    con = -1
    if gml_Script_scr_havechar(2)
    {
        global.flag[922] = 1
        if instance_exists(obj_ch2_room_city_moss)
        {
            with (obj_ch2_room_city_moss)
                con = 0
            read++
            return;
        }
    }
}
if (moss_con == 5)
{
    moss_con = 99
    if (!gml_Script_scr_havechar(2))
        instance_activate_object(obj_readable_room1)
}
