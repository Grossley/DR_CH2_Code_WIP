if (global.monster[myself] == true)
{
    if (global.mnfight == 1 && talked == 0)
    {
        // WARNING: Popz'd an empty stack.
        if (!1522)
            gml_Script_instance_create_ch1(0, 0, 1522)
        global.typer = 50
        rr = choose(0, 1, 2, 3)
        if (rr == 0)
            global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_11_0"
        if (rr == 1)
            global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_12_0"
        if (rr == 2)
            global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_13_0"
        if (rr == 3)
            global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_14_0"
        global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_16_0"
        gml_Script_scr_enemyblcon_ch1((x - 160), y, 3)
        talked = 1
        talktimer = 0
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
                dc.type = 0
                dc.damage = (global.monsterat[myself] * 5)
                dc.target = mytarget
            }
            else
            {
                dc = gml_Script_instance_create_ch1(x, y, 1558)
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
                global.battlemsg[0] = "obj_placeholderenemy_slash_Step_0_gml_63_0"
            if (rr == 1)
                global.battlemsg[0] = "obj_placeholderenemy_slash_Step_0_gml_64_0"
            if (rr == 2)
                global.battlemsg[0] = "obj_placeholderenemy_slash_Step_0_gml_65_0"
            if (rr == 3)
                global.battlemsg[0] = "obj_placeholderenemy_slash_Step_0_gml_66_0"
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
                with (obj_battlecontroller_ch1)
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
    global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_99_0"
    gml_Script_scr_enemyblcon_ch1((x - 160), y, 3)
    con = 4
}
if (con == 4 && (!1327))
{
    hspeed = 15
    con = 5
    alarm[4] = 15
    with (obj_battlecontroller_ch1)
        alarm[2] = 17
}
if (con == 6)
{
    with (obj_battlecontroller_ch1)
        noreturn = false
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    con = 7
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_135_0"
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0)
    {
        actcon = 1
        if (global.automiss[myself] == false)
        {
            global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_146_0"
            global.monstercomment[myself] = "obj_placeholderenemy_slash_Step_0_gml_147_0"
            global.automiss[myself] = true
        }
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 3 && actcon == 0)
    {
        global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_156_0"
        global.mercymod[myself] += 200
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 4 && actcon == 0)
    {
        global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_164_0"
        battlecancel = 1
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 5 && actcon == 0)
    {
        global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_172_0"
        battlecancel = 2
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 6 && actcon == 0)
    {
        global.msg[0] = "obj_placeholderenemy_slash_Step_0_gml_180_0"
        global.monstercomment[myself] = "obj_placeholderenemy_slash_Step_0_gml_181_0"
        global.monsterstatus[myself] = true
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (actcon == 1 && (!1327))
    {
        actcon = 0
        // WARNING: Popz'd an empty stack.
    }
}
if (global.myfight == 7)
    hspeed = 15
