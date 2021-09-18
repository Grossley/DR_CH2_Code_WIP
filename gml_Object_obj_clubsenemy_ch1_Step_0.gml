if (global.monster[myself] == true)
{
    if (global.mnfight == 1 && talked == 0)
    {
        // WARNING: Popz'd an empty stack.
        if (!1522)
            gml_Script_instance_create_ch1(0, 0, 1522)
        global.typer = 50
        rr = choose(0, 1, 2)
        text1 = "obj_clubsenemy_slash_Step_0_gml_11_0"
        text2 = "obj_clubsenemy_slash_Step_0_gml_12_0"
        text3 = "obj_clubsenemy_slash_Step_0_gml_13_0"
        if (rr == 0)
        {
            text1 = "obj_clubsenemy_slash_Step_0_gml_17_0"
            text2 = "obj_clubsenemy_slash_Step_0_gml_18_0"
            text3 = "obj_clubsenemy_slash_Step_0_gml_19_0"
        }
        if (rr == 1)
        {
            text1 = "obj_clubsenemy_slash_Step_0_gml_24_0"
            text2 = "obj_clubsenemy_slash_Step_0_gml_25_0"
            text3 = "obj_clubsenemy_slash_Step_0_gml_26_0"
        }
        if (rr == 2)
        {
            text1 = "obj_clubsenemy_slash_Step_0_gml_31_0"
            text2 = "obj_clubsenemy_slash_Step_0_gml_32_0"
            text3 = "obj_clubsenemy_slash_Step_0_gml_33_0"
        }
        if (acting == 2)
        {
            text1 = "obj_clubsenemy_slash_Step_0_gml_39_0"
            text2 = "obj_clubsenemy_slash_Step_0_gml_40_0"
            text3 = "obj_clubsenemy_slash_Step_0_gml_41_0"
        }
        if (acting == 3)
        {
            text1 = "obj_clubsenemy_slash_Step_0_gml_46_0"
            text2 = "obj_clubsenemy_slash_Step_0_gml_47_0"
            text3 = "obj_clubsenemy_slash_Step_0_gml_48_0"
        }
        if (acting == 4)
        {
            text1 = "obj_clubsenemy_slash_Step_0_gml_53_0"
            text2 = "obj_clubsenemy_slash_Step_0_gml_54_0"
            text3 = "obj_clubsenemy_slash_Step_0_gml_55_0"
        }
        if (acting == 5)
        {
            text1 = "obj_clubsenemy_slash_Step_0_gml_60_0"
            text2 = "obj_clubsenemy_slash_Step_0_gml_61_0"
            text3 = "obj_clubsenemy_slash_Step_0_gml_62_0"
        }
        if (acting == 6)
        {
            text1 = "obj_clubsenemy_slash_Step_0_gml_68_0"
            text2 = "obj_clubsenemy_slash_Step_0_gml_69_0"
            text3 = "obj_clubsenemy_slash_Step_0_gml_70_0"
        }
        if (manual == 1)
        {
            text1 = "obj_clubsenemy_slash_Step_0_gml_76_0"
            text2 = "obj_clubsenemy_slash_Step_0_gml_77_0"
            text3 = "obj_clubsenemy_slash_Step_0_gml_78_0"
        }
        global.msg[0] = text1
        gml_Script_scr_enemyblcon_ch1((x - 110), (y - 10), 4)
        global.msg[0] = text2
        gml_Script_scr_enemyblcon_ch1((x - 125), (y + 70), 5)
        global.msg[0] = text3
        gml_Script_scr_enemyblcon_ch1((x + 125), (y - 10), 6)
        with (obj_monsterparent_ch1)
            talkmax = 210
        talked = 1
        talktimer = 0
        manual = 0
    }
    if (talked == 1 && global.mnfight == 1)
    {
        rtimer = 0
        15
        if (global.mnfight == 2)
        {
            if (!1536)
                // WARNING: Popz'd an empty stack.
            if (!1628)
                gml_Script_instance_create_ch1((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), 1628)
        }
    }
    if (global.mnfight == 2 && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            rr = choose(0, 1)
            if (rr == 0)
            {
                dc = gml_Script_instance_create_ch1(x, y, 1558)
                dc.type = 2
                dc.target = mytarget
                dc.damage = (global.monsterat[myself] * 5)
            }
            else
            {
                dc = gml_Script_instance_create_ch1(x, y, 1558)
                dc.type = 4
                dc.target = mytarget
                dc.damage = (global.monsterat[myself] * 5)
            }
            turns += 1
            global.turntimer = 150
            attacked = true
            global.typer = 6
            global.fc = 0
            rr = choose(0, 1, 2, 3, 4, 5)
            if (rr == 0)
                global.battlemsg[0] = "obj_clubsenemy_slash_Step_0_gml_134_0"
            if (rr == 1)
                global.battlemsg[0] = "obj_clubsenemy_slash_Step_0_gml_135_0"
            if (rr == 2)
                global.battlemsg[0] = "obj_clubsenemy_slash_Step_0_gml_136_0"
            if (rr == 3)
                global.battlemsg[0] = "obj_clubsenemy_slash_Step_0_gml_137_0"
            if (rr == 4)
                global.battlemsg[0] = "obj_clubsenemy_slash_Step_0_gml_138_0"
            if (rr == 5)
                global.battlemsg[0] = "obj_clubsenemy_slash_Step_0_gml_139_0"
            if (global.monsterstatus[myself] == true)
                global.battlemsg[0] = "obj_clubsenemy_slash_Step_0_gml_140_0"
            if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
                global.battlemsg[0] = "obj_clubsenemy_slash_Step_0_gml_141_0"
            if (global.mercymod[myself] >= global.mercymax[myself])
                global.msg[0] = "obj_clubsenemy_slash_Step_0_gml_142_0"
            if (betray == true)
                global.battlemsg[0] = "obj_clubsenemy_slash_Step_0_gml_143_0"
            betray = false
        }
        else
            global.turntimer = 150
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = "obj_clubsenemy_slash_Step_0_gml_163_0"
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0)
    {
        global.typer = 45
        global.fc = 2
        global.fe = 0
        global.msg[0] = "obj_clubsenemy_slash_Step_0_gml_187_0"
        argue += 1
        // WARNING: Popz'd an empty stack.
        actcon = 20
    }
    if (actcon == 20 && (!1327))
    {
        global.typer = 50
        text1 = "obj_clubsenemy_slash_Step_0_gml_196_0"
        text2 = "obj_clubsenemy_slash_Step_0_gml_197_0"
        text3 = "obj_clubsenemy_slash_Step_0_gml_198_0"
        global.msg[0] = text1
        gml_Script_scr_enemyblcon_ch1((x - 110), (y - 10), 4)
        global.msg[0] = text2
        gml_Script_scr_enemyblcon_ch1((x - 125), (y + 70), 5)
        global.msg[0] = text3
        gml_Script_scr_enemyblcon_ch1((x + 125), (y - 10), 6)
        actcon = 21
    }
    if (actcon == 21 && (!1327))
    {
        global.msg[0] = "obj_clubsenemy_slash_Step_0_gml_210_0"
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 3 && actcon == 0)
    {
        global.typer = 45
        global.fc = 2
        global.fe = 0
        global.msg[0] = "obj_clubsenemy_slash_Step_0_gml_223_0"
        argue += 1
        // WARNING: Popz'd an empty stack.
        actcon = 22
    }
    if (actcon == 22 && (!1327))
    {
        global.typer = 50
        if (acted[2] == false)
        {
            gml_Script_scr_mercyadd_ch1(myself, 40)
            acted[2] = true
        }
        text1 = "obj_clubsenemy_slash_Step_0_gml_233_0"
        text2 = "obj_clubsenemy_slash_Step_0_gml_234_0"
        text3 = "obj_clubsenemy_slash_Step_0_gml_235_0"
        global.msg[0] = text1
        gml_Script_scr_enemyblcon_ch1((x - 110), (y - 10), 4)
        global.msg[0] = text2
        gml_Script_scr_enemyblcon_ch1((x - 125), (y + 70), 5)
        global.msg[0] = text3
        gml_Script_scr_enemyblcon_ch1((x + 125), (y - 10), 6)
        actcon = 23
    }
    if (actcon == 23 && (!1327))
    {
        global.msg[0] = "obj_clubsenemy_slash_Step_0_gml_247_0"
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 4 && actcon == 0)
    {
        global.typer = 45
        global.fc = 2
        global.fe = 0
        global.msg[0] = "obj_clubsenemy_slash_Step_0_gml_258_0"
        argue += 1
        // WARNING: Popz'd an empty stack.
        actcon = 24
    }
    if (actcon == 24 && (!1327))
    {
        global.typer = 50
        if (acted[3] == false)
        {
            gml_Script_scr_mercyadd_ch1(myself, 40)
            acted[3] = true
        }
        text1 = "obj_clubsenemy_slash_Step_0_gml_268_0"
        text2 = "obj_clubsenemy_slash_Step_0_gml_269_0"
        text3 = "obj_clubsenemy_slash_Step_0_gml_270_0"
        global.msg[0] = text1
        gml_Script_scr_enemyblcon_ch1((x - 110), (y - 10), 4)
        global.msg[0] = text2
        gml_Script_scr_enemyblcon_ch1((x - 125), (y + 70), 5)
        global.msg[0] = text3
        gml_Script_scr_enemyblcon_ch1((x + 125), (y - 10), 6)
        actcon = 25
    }
    if (actcon == 25 && (!1327))
    {
        global.msg[0] = "obj_clubsenemy_slash_Step_0_gml_282_0"
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 5 && actcon == 0)
    {
        global.msg[0] = "obj_clubsenemy_slash_Step_0_gml_290_0"
        global.msg[1] = "obj_clubsenemy_slash_Step_0_gml_291_0"
        argue += 1
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 6 && actcon == 0)
    {
        if (acted[5] == false)
        {
            gml_Script_scr_mercyadd_ch1(myself, 40)
            acted[5] = true
        }
        global.msg[0] = "obj_clubsenemy_slash_Step_0_gml_301_0"
        argue += 1
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (actcon == 1 && (!1327))
    {
        if (argue >= 3)
        {
            global.monstercomment[myself] = "obj_clubsenemy_slash_Step_0_gml_314_0"
            global.monsterstatus[myself] = true
        }
        actcon = 0
        // WARNING: Popz'd an empty stack.
    }
}
