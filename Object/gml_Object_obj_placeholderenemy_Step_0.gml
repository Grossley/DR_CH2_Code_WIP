if (global.monster[myself] == true)
{
    if (global.mnfight == 1 && talked == 0)
    {
        gml_Script_scr_randomtarget()
        if (!instance_exists(obj_darkener))
            gml_Script_instance_create(0, 0, obj_darkener)
        global.typer = 50
        rr = choose(0, 1, 2, 3)
        if (rr == 0)
            global.msg[0] = ""
        if (rr == 1)
            global.msg[0] = ""
        if (rr == 2)
            global.msg[0] = ""
        if (rr == 3)
            global.msg[0] = ""
        global.msg[0] = ""
        gml_Script_scr_enemyblcon((x - 160), y, 3)
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && global.mnfight == 1)
    {
        rtimer = 0
        gml_Script_scr_blconskip(15)
        if (global.mnfight == 2)
        {
            if (!instance_exists(obj_moveheart))
                gml_Script_scr_moveheart()
            if (!instance_exists(obj_growtangle))
                gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
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
                dc = gml_Script_instance_create(x, y, obj_dbulletcontroller)
                dc.type = 0
                dc.damage = (global.monsterat[myself] * 5)
                dc.target = mytarget
            }
            else
            {
                dc = gml_Script_instance_create(x, y, obj_dbulletcontroller)
                dc.type = 1
                dc.damage = (global.monsterat[myself] * 5)
                dc.target = mytarget
            }
            turns += 1
            global.turntimer = 140
            attacked = true
            global.typer = 6
            global.fc = 0
            rr = choose(0, 1, 2, 3)
            if (rr == 0)
                global.battlemsg[0] = ""
            if (rr == 1)
                global.battlemsg[0] = ""
            if (rr == 2)
                global.battlemsg[0] = ""
            if (rr == 3)
                global.battlemsg[0] = ""
        }
        else
            global.turntimer = 120
    }
    if (global.mnfight == 2)
    {
        if (global.turntimer <= 1)
        {
            if (battlecancel == 1)
                global.mercymod[myself] = 999
            if (battlecancel == 2)
            {
                with (obj_battlecontroller)
                    noreturn = true
                con = 1
                battlecancel = 3
            }
        }
    }
}
if (con == 1)
{
    con = 2
    alarm[4] = 10
}
if (con == 3)
{
    global.typer = 50
    global.msg[0] = ""
    gml_Script_scr_enemyblcon((x - 160), y, 3)
    con = 4
}
if (con == 4 && (!instance_exists(obj_writer)))
{
    hspeed = 15
    con = 5
    alarm[4] = 15
    with (obj_battlecontroller)
        alarm[2] = 17
}
if (con == 6)
{
    with (obj_battlecontroller)
        noreturn = false
    gml_Script_scr_monsterdefeat()
    instance_destroy()
    con = 7
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = ""
        gml_Script_scr_battletext_default()
    }
    if (acting == 2 && actcon == 0)
    {
        actcon = 1
        if (global.automiss[myself] == false)
        {
            global.msg[0] = ""
            global.monstercomment[myself] = ""
            global.automiss[myself] = true
        }
        gml_Script_scr_battletext_default()
    }
    if (acting == 3 && actcon == 0)
    {
        global.msg[0] = ""
        global.mercymod[myself] += 200
        gml_Script_scr_battletext_default()
        actcon = 1
    }
    if (acting == 4 && actcon == 0)
    {
        global.msg[0] = ""
        battlecancel = 1
        gml_Script_scr_battletext_default()
        actcon = 1
    }
    if (acting == 5 && actcon == 0)
    {
        global.msg[0] = ""
        battlecancel = 2
        gml_Script_scr_battletext_default()
        actcon = 1
    }
    if (acting == 6 && actcon == 0)
    {
        global.msg[0] = ""
        global.monstercomment[myself] = ""
        global.monsterstatus[myself] = true
        gml_Script_scr_battletext_default()
        actcon = 1
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
    {
        actcon = 0
        gml_Script_scr_attackphase()
    }
}
if (global.myfight == 7)
    hspeed = 15
