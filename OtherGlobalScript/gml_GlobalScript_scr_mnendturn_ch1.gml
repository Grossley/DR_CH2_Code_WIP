if (global.char[0] == 2)
    sus = 0
if (global.char[1] == 2)
    sus = 1
if (global.char[2] == 2)
    sus = 2
techwon = false
if (gml_Script_scr_monsterpop_ch1() == 0)
    techwon = true
if (techwon == false)
{
    gml_Script_scr_battlecursor_memory_reset_ch1()
    global.mnfight = 0
    global.myfight = 0
    global.bmenuno = 0
    global.charturn = 0
    skip = 0
    i = 0
    while (i < 3)
    {
        var _temp_local_var_1 = global.charinstance[i]
        tu = 0
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
            skip = 1
    }
    for (i = 0; i < 3; i += 1)
    {
        global.acting[i] = 0
        global.temptension[i] = global.tension
        global.charspecial[i] = 0
        global.targeted[i] = false
        global.charaction[i] = 0
        global.faceaction[i] = 0
    }
    with (obj_monsterparent_ch1)
    {
        attacked = false
        talked = 0
        acting = 0
    }
    if (skip == 1)
    {
        if (global.char[0] == 2 && global.charauto[2] == 1)
        {
            global.acting[0] = 1
            global.myfight = 3
        }
        gml_Script_scr_endturn_ch1()
    }
    for (i = 0; i < 12; i += 1)
    {
        for (j = 0; j < 3; j += 1)
            tempitem[i][j] = global.item[i]
    }
}
else
    gml_Script_scr_wincombat_ch1()
return;
