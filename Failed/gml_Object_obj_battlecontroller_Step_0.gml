var lvsnd, _tensionhealed, _drivenoise, _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_5, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_11, _temp_local_var_16, _temp_local_var_19, _temp_local_var_20, _temp_local_var_22, _temp_local_var_37, _temp_local_var_52, _temp_local_var_74, _temp_local_var_75, _temp_local_var_76, _temp_local_var_77, _temp_local_var_78, _temp_local_var_79, _temp_local_var_80, _temp_local_var_81, _temp_local_var_82, _temp_local_var_83, _temp_local_var_92, _temp_local_var_118, _temp_local_var_194, _temp_local_var_196;
if (global.chapter == 2)
{
    if (gigaqueencon != 0)
        return;
    if ((instance_exists(o_boxingcontroller) && o_boxingcontroller.dead == 1 && global.turntimer < 0) || instance_exists(obj_boxing_loss_controller) || instance_exists(o_bq_whitefade_persistent))
        return;
}
if (global.chapter == 2 && instance_exists(obj_queen_enemy) && obj_queen_enemy.intro > 0)
    return;
if (victory == true && victoried == 0)
{
    global.faceaction[0] = 0
    global.faceaction[1] = 0
    global.faceaction[2] = 0
    global.battleend = true
    global.mnfight = -1
    global.myfight = 7
    var _temp_local_var_5 = battlewriter
    instance_destroy()
}
if (victoried == 1)
{
    victortimer += 1
    if (gml_Script_i_ex(lastbattlewriter) == 0 && victortimer >= 10)
    {
        intro = 2
        if (bp <= 0)
            gml_Script_scr_endcombat()
    }
}
if (global.myfight == 0)
{
    if (global.bmenuno == 0)
    {
        if ((!gml_Script_i_ex(battlewriter)) || (global.chapter == 2 && (!gml_Script_i_ex(battlewriter)) && gigaqueencon == 0))
        {
            global.msg[0] = global.battlemsg[0]
            global.typer = global.battletyper
            gml_Script_scr_battletext()
        }
        if (gml_Script_left_p() == 1 && lbuffer < 0)
        {
            if (global.bmenucoord[0][global.charturn] == 0)
                global.bmenucoord[0][global.charturn] = 4
            else
                var _temp_local_var_196 = global.charturn
            movenoise = true
            rbuffer = 1
        }
        if (gml_Script_right_p() == 1 && rbuffer < 0)
        {
            if (global.bmenucoord[0][global.charturn] == 4)
                global.bmenucoord[0][global.charturn] = 0
            else
                var _temp_local_var_194 = global.charturn
            movenoise = true
            lbuffer = 1
        }
        if (gml_Script_button1_p() == 1 && twobuffer < 0)
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
            else if (global.bmenucoord[0][global.charturn] == 1)
            {
                onebuffer = 1
                global.bmenuno = 11
            }
            if (global.bmenucoord[0][global.charturn] == 2 && tempitem[0][global.charturn] != 0)
            {
                onebuffer = 1
                global.bmenuno = 4
                gml_Script_scr_iteminfo_temp(global.charturn)
                for (i = 0; i < 12; i += 1)
                {
                    if (tempitem[global.bmenucoord[4][global.charturn]][global.charturn] == 0 && global.bmenucoord[4][global.charturn] > 0)
                        var _temp_local_var_16 = global.charturn
                }
            }
            if (global.bmenucoord[0][global.charturn] == 3)
            {
                onebuffer = 1
                global.bmenuno = 12
            }
            if (global.bmenucoord[0][global.charturn] == 4)
            {
                gml_Script_scr_tensionheal(40)
                global.faceaction[global.charturn] = 4
                global.charaction[global.charturn] = 10
                gml_Script_scr_nexthero()
                if (global.chapter == 2 && instance_exists(o_boxingcontroller))
                {
                    o_boxingcontroller.defend = 1
                    o_boxingcontroller.specialcon = 8
                }
            }
        }
        if (gml_Script_button2_p() == 1 && onebuffer < 0 && global.charturn > 0)
        {
            twobuffer = 1
            movenoise = true
            gml_Script_scr_prevhero()
        }
        var _temp_local_var_20 = battlewriter
        depth = 3
    }
    if (global.bmenuno == 2 && global.flag[34] == 1)
    {
        var _temp_local_var_22 = battlewriter
        skipme = true
    }
    if (global.bmenuno == 2 && global.flag[34] == 0)
    {
        var _temp_local_var_37 = battlewriter
        skipme = true
    }
    if (global.bmenuno == 4)
    {
        var _temp_local_var_52 = battlewriter
        skipme = true
    }
    if (global.bmenuno == 9)
    {
        thisenemy = global.bmenucoord[11][global.charturn]
        gml_Script_scr_actinfo_temp(thisenemy)
        if gml_Script_right_p()
        {
            cango = true
            actcoord = global.bmenucoord[9][global.charturn]
            if (actcoord < 5)
            {
                if (canact[(global.bmenucoord[9][global.charturn] + 1)] == false)
                {
                    cango = false
                    if ((actcoord % 2) == 1 && actcoord > 0)
                    {
                        var _temp_local_var_74 = 
                        var _temp_local_var_75 = global.bmenucoord[9][global.charturn]
                    }
                }
            }
            else
            {
                cango = false
                _temp_local_var_74 = 
                _temp_local_var_75 = global.bmenucoord[9][global.charturn]
            }
            if (cango == true)
            {
                if ((actcoord % 2) == 0)
                {
                    var _temp_local_var_76 = 
                    var _temp_local_var_77 = global.bmenucoord[9][global.charturn]
                }
                else
                {
                    _temp_local_var_76 = 
                    _temp_local_var_77 = global.bmenucoord[9][global.charturn]
                }
            }
        }
        if gml_Script_left_p()
        {
            cango = true
            actcoord = global.bmenucoord[9][global.charturn]
            if ((actcoord % 2) == 0)
            {
                if (canact[(actcoord + 1)] != false)
                {
                    var _temp_local_var_78 = _temp_local_var_74
                    var _temp_local_var_79 = global.bmenucoord[9][global.charturn]
                }
            }
            else
            {
                _temp_local_var_78 = _temp_local_var_74
                _temp_local_var_79 = global.bmenucoord[9][global.charturn]
            }
        }
        if gml_Script_down_p()
        {
            actcoord = global.bmenucoord[9][global.charturn]
            cango = true
            if (actcoord >= 4)
                cango = false
            else if (canact[(actcoord + 2)] == false)
                cango = false
            if (cango != false)
            {
                if (cango == true)
                {
                    var _temp_local_var_80 = _temp_local_var_76
                    var _temp_local_var_81 = global.bmenucoord[9][global.charturn]
                }
            }
        }
        if gml_Script_up_p()
        {
            actcoord = global.bmenucoord[9][global.charturn]
            cango = true
            if (actcoord <= 1)
                cango = false
            if (cango == true)
            {
                var _temp_local_var_82 = _temp_local_var_74
                var _temp_local_var_83 = global.bmenucoord[9][global.charturn]
            }
        }
        global.tensionselect = acttpcost[global.bmenucoord[9][global.charturn]]
        canpress = true
        if (global.char[global.charturn] == 1)
        {
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
            if (global.actactor[global.bmenucoord[11][global.charturn]][global.bmenucoord[9][global.charturn]] == 5)
            {
                if (havechar[3] == false || global.hp[4] <= 0)
                    canpress = false
            }
        }
        if (canpress == true)
        {
            if (gml_Script_button1_p() && global.canact[thisenemy][global.bmenucoord[9][global.charturn]] == true && global.tension >= global.tensionselect && onebuffer < 0)
            {
                onebuffer = 2
                global.bmenuno = 0
                selnoise = true
                global.actingchoice[global.charturn] = global.bmenucoord[9][global.charturn]
                global.tension -= acttpcost[global.bmenucoord[9][global.charturn]]
                global.tensionselect = 0
                gml_Script_scr_actselect(thisenemy, global.bmenucoord[9][global.charturn])
                global.bmenucoord[9][global.charturn] = 0
                gml_Script_scr_nexthero()
            }
        }
        if (gml_Script_button2_p() && onebuffer < 0)
        {
            global.bmenucoord[9][global.charturn] = 0
            global.tensionselect = 0
            twobuffer = 1
            global.bmenuno = 11
            movenoise = true
        }
    }
    if (global.bmenuno == 7 || global.bmenuno == 1 || global.bmenuno == 8 || global.bmenuno == 3 || global.bmenuno == 11 || global.bmenuno == 12 || global.bmenuno == 13)
    {
        var _temp_local_var_92 = battlewriter
        skipme = true
    }
}
if (movenoise == true)
{
    gml_Script_snd_play(259)
    movenoise = false
}
if (grazenoise == true)
{
    gml_Script_snd_play(168)
    grazenoise = false
}
if (selnoise == true)
{
    gml_Script_snd_play(260)
    selnoise = false
}
if (damagenoise == true)
{
    gml_Script_snd_play(166)
    damagenoise = false
}
if (laznoise == true)
{
    gml_Script_snd_play(174)
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
        with (obj_bulletparent)
            instance_destroy()
        with (obj_bulletgenparent)
            instance_destroy()
        with (obj_darkener)
            darken = false
        with (obj_heart)
        {
            gml_Script_instance_create(x, y, obj_returnheart)
            instance_destroy()
        }
        reset = true
        if (noreturn == false)
            alarm[2] = 15
    }
}
if (global.myfight == 3)
{
    if (gml_Script_scr_monsterpop() == 0 && (!instance_exists(obj_writer)))
    {
        gml_Script_scr_wincombat()
        if (global.myfight == 3)
            gml_Script_scr_endturn()
    }
}
if (global.myfight == 5)
{
    myfightreturntimer--
    if (myfightreturntimer <= 0)
    {
        gml_Script_scr_mnendturn()
        global.spelldelay = 10
        with (obj_heroparent)
        {
            attacktimer = 0
            image_index = 0
            index = 0
            itemed = false
            acttimer = 0
            defendtimer = 0
            state = 0
            flash = false
            siner = 0
            fsiner = 0
            alarm[4] = -1
        }
        with (obj_spellphase)
        {
            var _temp_local_var_118 = spellwriter
            instance_destroy()
        }
        instance_destroy()
    }
}
if (global.charweapon[4] == 13)
{
    if ((t_siner % 6) == 0)
    {
        if (global.hp[4] > round((global.maxhp[4] / 3)))
            global.hp[4] = (spellwriter - 1)
    }
}
t_siner++
if gml_Script_scr_debug()
{
    gml_Script_scr_turn_skip()
    if gml_Script_scr_debug_keycheck(113)
        gml_Script_scr_debug_fullheal()
    if gml_Script_scr_debug_keycheck(114)
        gml_Script_scr_raise_party()
    if gml_Script_scr_debug_keycheck(116)
    {
        if (global.chapter == 2 && instance_exists(o_boxingqueen))
        {
            with (o_boxingqueen)
                health_count = 10
            with (o_boxinghud)
                sub_healthbar_count = 0
            gml_Script_scr_debug_print("GIGA QUEEN AT 1 HP")
        }
        else
            gml_Script_scr_wincombat()
    }
    if gml_Script_scr_debug_keycheck(117)
        gml_Script_scr_weaken_enemies()
    if gml_Script_scr_debug_keycheck(119)
        gml_Script_scr_weaken_party(1)
    if gml_Script_scr_debug_keycheck(120)
    {
        global.tension = 0
        gml_Script_scr_debug_print("TP set to 0%")
    }
    if gml_Script_scr_debug_keycheck(121)
    {
        global.tension = 250
        gml_Script_scr_debug_print("TP maxed out!!")
    }
    if (gml_Script_scr_debug_keycheck(77) && (!instance_exists(obj_queen_enemy)) && (!instance_exists(obj_spamton_neo_enemy)))
    {
        if audio_is_playing(global.batmusic[1])
        {
            if (!audio_is_paused(global.batmusic[1]))
                audio_pause_sound(global.batmusic[1])
            else
                audio_resume_sound(global.batmusic[1])
        }
    }
}
