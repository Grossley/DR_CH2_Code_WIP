if (victory == true && victoried == 0)
{
    global.faceaction[0] = 0
    global.faceaction[1] = 0
    global.faceaction[2] = 0
    global.battleend = true
    global.mnfight = -1
    global.myfight = 7
    with (battlewriter)
        instance_destroy()
}
if (victoried == 1)
{
    victortimer += 1
    if (instance_exists(lastbattlewriter) == 0 && victortimer >= 10)
    {
        intro = 2
        if (bp <= 0)
            gml_Script_scr_endcombat_ch1()
    }
}
if (global.myfight == 0)
{
    if (global.bmenuno == 0)
    {
        if (!instance_exists(battlewriter))
        {
            global.msg[0] = global.battlemsg[0]
            global.typer = global.battletyper
            gml_Script_scr_battletext_ch1()
        }
        if (gml_Script_left_p_ch1() == 1 && lbuffer < 0)
        {
            if (global.bmenucoord[0][global.charturn] == 0)
                global.bmenucoord[0][global.charturn] = 4
            else
                global.bmenucoord[0][global.charturn] -= 1
            movenoise = true
            rbuffer = 1
        }
        if (gml_Script_right_p_ch1() == 1 && rbuffer < 0)
        {
            if (global.bmenucoord[0][global.charturn] == 4)
                global.bmenucoord[0][global.charturn] = 0
            else
                global.bmenucoord[0][global.charturn] += 1
            movenoise = true
            lbuffer = 1
        }
        if (gml_Script_button1_p_ch1() == 1 && twobuffer < 0)
        {
            onebuffer = 1
            selnoise = true
            if (global.bmenucoord[0][global.charturn] == 0)
                global.bmenuno = 1
            if (global.bmenucoord[0][global.charturn] == 1 && global.char[global.charturn] != 1)
            {
                onebuffer = 1
                global.bmenuno = 2
            }
            if (global.bmenucoord[0][global.charturn] == 1 && global.char[global.charturn] == 1)
            {
                onebuffer = 1
                global.bmenuno = 11
            }
            if (global.bmenucoord[0][global.charturn] == 2 && tempitem[0][global.charturn] != 0)
            {
                onebuffer = 1
                global.bmenuno = 4
                gml_Script_scr_iteminfo_temp_ch1(global.charturn)
                for (i = 0; i < 12; i += 1)
                {
                    if (tempitem[global.bmenucoord[4][global.charturn]][global.charturn] == 0 && global.bmenucoord[4][global.charturn] > 0)
                        global.bmenucoord[4][global.charturn] -= 1
                }
            }
            if (global.bmenucoord[0][global.charturn] == 3)
            {
                onebuffer = 1
                global.bmenuno = 12
            }
            if (global.bmenucoord[0][global.charturn] == 4)
            {
                gml_Script_scr_tensionheal_ch1(40)
                global.faceaction[global.charturn] = 4
                global.charaction[global.charturn] = 10
                gml_Script_scr_nexthero_ch1()
            }
        }
        if (gml_Script_button2_p_ch1() == 1 && onebuffer < 0 && global.charturn > 0)
        {
            twobuffer = 1
            movenoise = true
            gml_Script_scr_prevhero_ch1()
        }
        with (battlewriter)
            depth = 3
    }
    if (global.bmenuno == 2)
    {
        with (battlewriter)
            skipme = true
    }
    if (global.bmenuno == 4)
    {
        with (battlewriter)
            skipme = true
    }
    if (global.bmenuno == 9)
    {
        thisenemy = global.bmenucoord[11][global.charturn]
        if gml_Script_right_p_ch1()
        {
            cango = true
            actcoord = global.bmenucoord[9][global.charturn]
            if (actcoord < 5)
            {
                if (global.canact[thisenemy][(global.bmenucoord[9][global.charturn] + 1)] == false)
                {
                    cango = false
                    if ((actcoord % 2) == 1 && actcoord > 0)
                    {
                        global.bmenucoord[9][global.charturn] -= 1
                    }
                }
            }
            else
            {
                cango = false
                global.bmenucoord[9][global.charturn] -= 1
            }
            if (cango == true)
            {
                if ((actcoord % 2) == 0)
                {
                    global.bmenucoord[9][global.charturn] += 1
                }
                else
                {
                    global.bmenucoord[9][global.charturn] -= 1
                }
            }
        }
        if gml_Script_left_p_ch1()
        {
            cango = true
            actcoord = global.bmenucoord[9][global.charturn]
            if ((actcoord % 2) == 0)
            {
                if (global.canact[thisenemy][(actcoord + 1)] != false)
                {
                    global.bmenucoord[9][global.charturn] += 1
                }
            }
            else
            {
                global.bmenucoord[9][global.charturn] -= 1
            }
        }
        if gml_Script_down_p_ch1()
        {
            actcoord = global.bmenucoord[9][global.charturn]
            cango = true
            if (actcoord >= 4)
                cango = false
            else if (global.canact[thisenemy][(actcoord + 2)] == false)
                cango = false
            if (cango != false)
            {
                if (cango == true)
                {
                    global.bmenucoord[9][global.charturn] += 2
                }
            }
        }
        if gml_Script_up_p_ch1()
        {
            actcoord = global.bmenucoord[9][global.charturn]
            cango = true
            if (actcoord <= 1)
                cango = false
            if (cango == true)
            {
                global.bmenucoord[9][global.charturn] -= 2
            }
        }
        global.tensionselect = global.actcost[thisenemy][global.bmenucoord[9][global.charturn]]
        canpress = true
        if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 2 || global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 4)
        {
            if (havechar[1] == false || global.hp[2] <= 0)
                canpress = false
        }
        if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 3 || global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 4)
        {
            if (havechar[2] == false || global.hp[3] <= 0)
                canpress = false
        }
        if (canpress == true)
        {
            if (gml_Script_button1_p_ch1() && global.canact[thisenemy][global.bmenucoord[9][global.charturn]] == true && global.tension >= global.tensionselect && onebuffer < 0)
            {
                onebuffer = 2
                global.bmenuno = 0
                selnoise = true
                global.tension -= global.actcost[thisenemy][global.bmenucoord[9][global.charturn]]
                global.tensionselect = 0
                if instance_exists(global.monsterinstance[thisenemy])
                    global.monsterinstance[thisenemy].acting = (global.bmenucoord[9][global.charturn] + 1)
                global.acting[0] = 1
                if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 2)
                    global.acting[charpos[1]] = 1
                if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 3)
                    global.acting[charpos[2]] = 1
                if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 4)
                {
                    global.acting[2] = 1
                    global.acting[1] = 1
                }
                for (i = 0; i < 3; i += 1)
                {
                    if (global.acting[i] == 1)
                    {
                        global.faceaction[i] = 6
                        global.charaction[i] = 9
                    }
                }
                gml_Script_scr_nexthero_ch1()
            }
        }
        if (gml_Script_button2_p_ch1() && onebuffer < 0)
        {
            global.tensionselect = 0
            twobuffer = 1
            global.bmenuno = 11
            movenoise = true
        }
    }
    if (global.bmenuno == 7 || global.bmenuno == 1 || global.bmenuno == 8 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12)
    {
        with (battlewriter)
            skipme = true
    }
}
if (movenoise == true)
{
    gml_Script_snd_play_ch1(492)
    movenoise = false
}
if (grazenoise == true)
{
    gml_Script_snd_play_ch1(436)
    grazenoise = false
}
if (selnoise == true)
{
    gml_Script_snd_play_ch1(493)
    selnoise = false
}
if (damagenoise == true)
{
    gml_Script_snd_play_ch1(434)
    damagenoise = false
}
if (laznoise == true)
{
    gml_Script_snd_play_ch1(442)
    laznoise = false
}
onebuffer -= 1
twobuffer -= 1
lbuffer -= 1
rbuffer -= 1
if (global.mnfight == 2 && timeron == true)
{
    global.turntimer -= 1
    if (global.turntimer <= 0 && reset == false)
    {
        with (obj_bulletparent_ch1)
            instance_destroy()
        with (obj_bulletgenparent_ch1)
            instance_destroy()
        with (obj_darkener_ch1)
            darken = false
        with (obj_heart_ch1)
        {
            gml_Script_instance_create_ch1(x, y, 1537)
            instance_destroy()
        }
        reset = true
        if (noreturn == false)
            alarm[2] = 15
    }
}
