if (init == 0)
{
    y = -30
    visible = true
    init = 1
}
if (state < 7)
{
    global.turntimer = 430
    if (obj_spamton_neo_enemy.difficulty == 3)
        global.turntimer = 100
}
if talking
{
    talktimer++
    var aa = 0
    if (obj_spamton_neo_enemy.difficulty == 3 && state >= 5)
        aa = 1
    if (gml_Script_button1_p() && talktimer > 5 && aa == 0)
        talktimer = talkmax
    if (gml_Script_button3_h() && talktimer > 1 && aa == 0)
        talktimer = talkmax
    if (talktimer >= talkmax)
    {
        sneo.talktimer = sneo.talkmax
        with (obj_writer)
            instance_destroy()
        talking = 0
        talktimer = -10
        state++
    }
    return;
}
if (state == 6)
{
    if (gml_Script_scr_isphase("bullets") || isattack)
    {
        if (!secondtime)
        {
            songtime = ((songtime + resumeinterval) - (songtime % resumeinterval))
            if (songtime > 140)
                songtime = 0
        }
        if isattack
        {
            if (obj_spamton_neo_enemy.difficulty == 3)
                gml_Script_instance_create((obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[5]), ((obj_spamton_neo_enemy.y + obj_spamton_neo_enemy.party[5]) + 60), obj_sneo_phonecall_pipis_stream)
            else
            {
                with (obj_sneo_bulletcontroller)
                    instance_destroy()
                var xx = (((gml_Script_scr_orbitx(0, 0, -26, (secondtime ? 30 : 70), sneo.partrot[1]) + sneo.x) + sneo.partx[1]) + sneo.partxoff[1])
                var yy = (((gml_Script_scr_orbity(0, 0, -26, (secondtime ? 30 : 70), sneo.partrot[1]) + sneo.y) + sneo.party[1]) + sneo.partyoff[1])
                global.monsterattackname[obj_spamton_neo_enemy.myself] = "FootballPipis"
                d = gml_Script_instance_create(xx, yy, obj_sneo_bulletcontroller)
                d.type = 1
                d.damage = (global.monsterat[obj_spamton_neo_enemy.myself] * 5)
                d.target = target
            }
        }
        state = 7
    }
    return;
}
if (talktimer < 0)
    talktimer++
else if (state == 0)
{
    if (!secondtime)
    {
    }
    ringtimer = 12
    sndphone = gml_Script_snd_play(snd_phone)
    gml_Script_snd_volume(sndphone, 0.7, 0)
    talktimer = -10
    state++
}
else if (state == 1)
{
    talktimer = -10
    state++
    sneo.partmode = 6
    if (skipintro == 1)
        state = 5
}
else if (state == 2)
{
    if (obj_spamton_neo_enemy.difficulty == 3)
        gml_Script_msgsetloc(0, "WHAT!?", "obj_sneo_phonecall_slash_Step_0_gml_89_0")
    else
    {
        gml_Script_msgsetloc(0, "WHAT!?", "obj_sneo_phonecall_slash_Step_0_gml_96_0")
        sneo.partmode = 7
    }
    writeline = 1
}
else if (state == 3)
{
    if (obj_spamton_neo_enemy.difficulty == 3)
        state = 5
    else
    {
        gml_Script_msgsetloc(0, "WHAT? ARE&YOU SERIOUS!?", "obj_sneo_phonecall_slash_Step_0_gml_136_0")
        sneo.partmode = 7
        writeline = 1
    }
}
else if (state == 4)
    state = 5
else if (state == 5)
{
    if (gml_Script_scr_isphase("bullets") && skipintro == 0)
    {
        textboxoffsetx = 10
        textboxoffsety = 20
        if (obj_spamton_neo_enemy.difficulty == 3)
            gml_Script_msgsetloc(0, "IT'S FOR&ME!?", "obj_sneo_phonecall_slash_Step_0_gml_176_0")
        else
        {
            gml_Script_msgsetloc(0, "... IT'S&FOR YOU.", "obj_sneo_phonecall_slash_Step_0_gml_138_0")
            sneo.partframe[1] = 3
        }
        textboxdistance = 40
        writeline = 1
    }
    else
        state = 6
    with (sneo)
    {
        if (obj_spamton_neo_enemy.difficulty != 3)
        {
            partmode = 9
            partrot[1] = -180
            partframe[1] = 3
        }
        else
        {
            partmode = 9
            partframe[1] = 4
        }
    }
}
if writeline
{
    writeline = 0
    with (obj_spamton_neo_enemy)
    {
        global.typer = 72
        gml_Script_scr_enemyblcon((((x - obj_sneo_phonecall.textboxdistance) + 22) - obj_sneo_phonecall.textboxoffsetx), ((y + 60) + obj_sneo_phonecall.textboxoffsety), 10)
    }
    talktimer = 0
    talking = 1
}
