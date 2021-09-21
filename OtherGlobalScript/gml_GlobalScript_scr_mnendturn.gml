if (global.char[0] == 2)
    sus = 0
if (global.char[1] == 2)
    sus = 1
if (global.char[2] == 2)
    sus = 2
techwon = false
if (gml_Script_scr_monsterpop() == 0)
    techwon = true
if (global.flag[39] == 1)
    techwon = true
if (techwon == true)
    gml_Script_scr_wincombat()
if (techwon == false)
{
    with (obj_battlecontroller)
    {
        messagepriority = -1
        attackpriority = -1
    }
    gml_Script_scr_battlecursor_memory_reset()
    global.mnfight = 0
    global.myfight = 0
    global.bmenuno = 0
    global.charturn = 0
    skip = false
    for (i = 0; i < 3; i += 1)
    {
        global.hittarget[i] = 0
        with (global.charinstance[i])
            tu = 0
        hptarget = global.char[i]
        if (global.char[i] != 0 && global.hp[hptarget] <= 0)
        {
            healamt = ceil((global.maxhp[hptarget] / 8))
            dmgwr = gml_Script_instance_create(global.charinstance[i].x, ((global.charinstance[i].y + global.charinstance[i].myheight) - 24), obj_dmgwriter)
            with (dmgwr)
            {
                delay = 1
                type = 3
            }
            dmgwr.damage = gml_Script_scr_heal(i, healamt)
            if (global.hp[hptarget] >= 1)
            {
                with (dmgwr)
                    specialmessage = 4
            }
        }
    }
    if (global.charmove[0] == false || global.charauto[global.char[0]] == 1)
        global.charturn = 1
    if (global.charturn == 1)
    {
        if (global.charmove[1] == false || global.charauto[global.char[1]] == 1)
            global.charturn = 2
    }
    if (global.charturn == 2)
    {
        if (global.charmove[2] == false || global.charauto[global.char[2]] == 1)
            skip = true
    }
    for (i = 0; i < 3; i += 1)
    {
        global.acting[i] = 0
        global.actingsingle[i] = 0
        global.actingsimul[i] = 0
        global.actingtarget[i] = 0
        global.temptension[i] = global.tension
        global.charspecial[i] = 0
        global.targeted[i] = false
        global.charaction[i] = 0
        global.faceaction[i] = 0
        global.monsterattackname[i] = " "
    }
    global.currentactingchar = 0
    with (obj_monsterparent)
    {
        attacked = false
        talked = 0
        acting = 0
        actingsus = 0
        actingral = 0
        actingnoe = 0
    }
    if (skip == true)
    {
        if (global.char[0] == 2 && global.charauto[2] == 1)
        {
            global.acting[0] = 1
            global.myfight = 3
        }
        gml_Script_scr_endturn()
    }
    for (i = 0; i < 12; i += 1)
    {
        for (j = 0; j < 3; j += 1)
            tempitem[i][j] = global.item[i]
    }
}
return;
