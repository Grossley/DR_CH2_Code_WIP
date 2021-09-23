if (global.monster[myself] == true)
{
    if (gml_Script_scr_isphase("enemytalk") && talked == false)
    {
        gml_Script_scr_randomtarget()
        if (!instance_exists(obj_darkener))
            gml_Script_instance_create(0, 0, obj_darkener)
        global.typer = 50
        gml_Script_msgsetloc(0, "Graze!", "obj_dojograzeenemy_slash_Step_0_gml_15_0")
        gml_Script_scr_enemyblcon((x - 160), y, 3)
        talked = true
        talktimer = 0
    }
    if (talked == true && gml_Script_scr_isphase("enemytalk"))
    {
        rtimer = 0
        gml_Script_scr_blconskip(15)
        if gml_Script_scr_isphase("bullets")
        {
            if (!instance_exists(obj_moveheart))
                gml_Script_scr_moveheart()
            if (!instance_exists(obj_growtangle))
                gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
        }
    }
    if (gml_Script_scr_isphase("bullets") && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            rr = 0
            if (rr == 0)
            {
                global.inv = false
                global.monsterattackname[myself] = "HomingDiamonds"
                dc = gml_Script_scr_bulletspawner(x, y, obj_dbulletcontroller)
                dc.type = 48
                dc.btimer = 135
                dc.damage = (global.monsterat[myself] * 5)
                dc.timermax = 20
                dc.grazepoints = 7
                fighttimer = 0
                speedtimer = 0
                bulletgrazecon = 1
                global.flag[39] = 1
            }
            gml_Script_scr_turntimer(999999)
            turns += 1
            global.typer = 6
            global.fc = 0
            rr = 0
            if (rr == 0)
                global.battlemsg[0] = gml_Script_stringsetloc("* How'd you get past!?", "obj_dojograzeenemy_slash_Step_0_gml_71_0")
            attacked = true
        }
        else
            gml_Script_scr_turntimer(120)
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == true && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* GRAZECHALLENGE - Graze the bullets!/%", "obj_dojograzeenemy_slash_Step_0_gml_91_0")
        gml_Script_scr_battletext_default()
    }
    if (actingsus == true && actconsus == 1)
    {
        gml_Script_msgsetloc(0, "* Susie acted!/%", "obj_dojograzeenemy_slash_Step_0_gml_97_0")
        gml_Script_scr_battletext_default()
        actcon = 1
        actconsus = 0
    }
    if (actingral == true && actconral == 1)
    {
        gml_Script_msgsetloc(0, "* Ralsei acted!/%", "obj_dojograzeenemy_slash_Step_0_gml_106_0")
        gml_Script_scr_battletext_default()
        actcon = 1
        actconral = 0
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
        gml_Script_scr_nextact()
}
if (bulletgrazecon == 1)
{
    global.turntimer = 999
    fighttimer++
    speedtimer++
    if (speedtimer >= 30 && gml_Script_i_ex(dc))
    {
        if (dc.timermax > 8)
            dc.timermax--
        speedtimer = 0
    }
    if (global.tension == global.maxtension)
    {
        global.flag[39] = 1
        hspeed = 10
        global.turntimer = -1
        bulletgrazecon = 2
    }
    else if (global.inv > 0)
    {
        global.flag[36] = 1
        global.flag[39] = 1
        global.turntimer = -1
        hspeed = 10
        bulletgrazecon = 1
    }
}
