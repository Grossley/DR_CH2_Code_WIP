scr_prevhero = function() // gml_Script_scr_prevhero
{
    prevturn = global.charturn
    moveswapped = false
    if (global.charturn == 1)
    {
        if (global.charmove[0] == true)
        {
            global.charturn = 0
            moveswapped = true
        }
    }
    if (global.charturn == 2)
    {
        moveswapped = true
        if (global.charmove[1] == true && global.acting[1] == false)
            global.charturn = 1
        else if (global.charmove[0] == true)
            global.charturn = 0
    }
    if (moveswapped == true)
    {
        global.bmenuno = 0
        if (global.char[global.charturn] == 4)
        {
            with (obj_monsterparent)
                actingnoe = false
        }
        if (global.char[global.charturn] == 3)
        {
            with (obj_monsterparent)
                actingral = false
        }
        if (global.char[global.charturn] == 2)
        {
            with (obj_monsterparent)
                actingsus = false
        }
        global.actingsingle[global.charturn] = false
        global.actingsimul[global.charturn] = false
        global.faceaction[global.charturn] = 0
        global.chartarget[global.charturn] = 0
        global.charaction[global.charturn] = 0
        global.charspecial[global.charturn] = 0
        movenoise = true
    }
    if (global.charturn == 0)
    {
        with (obj_monsterparent)
            acting = false
        global.acting[0] = false
        global.acting[1] = false
        global.acting[2] = false
        global.faceaction[1] = 0
        global.chartarget[1] = 0
        global.charaction[1] = 0
        global.charspecial[1] = 0
        global.faceaction[2] = 0
        global.tension = global.temptension[0]
        for (i = 0; i < 12; i += 1)
            tempitem[i][0] = global.item[i]
    }
    else
    {
        global.tension = global.temptension[global.charturn]
        for (i = 0; i < 12; i += 1)
            tempitem[i][global.charturn] = tempitem[i][(global.charturn - 1)]
    }
    return;
}

