if 123
{
    global.inv = -1
    target = 4
    damage = (global.monsterat[myself] * 5)
    // WARNING: Popz'd an empty stack.
}
if (global.monster[myself] == true)
{
    if ("enemytalk" && talked == 0)
    {
        // WARNING: Popz'd an empty stack.
        if (!361)
            gml_Script_instance_create(0, 0, obj_darkener)
        global.typer = 50
        rr = choose(0, 1, 2, 3)
        if (rr == 0)
            gml_Script_msgset(0, "")
        if (rr == 1)
            gml_Script_msgset(0, "")
        if (rr == 2)
            gml_Script_msgset(0, "")
        if (rr == 3)
            gml_Script_msgset(0, "")
        gml_Script_scr_enemyblcon((x - 160), y, 3)
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && "enemytalk")
    {
        rtimer = 0
        15
        if "bullets"
        {
            if (!377)
                // WARNING: Popz'd an empty stack.
            if (!869)
                gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
        }
    }
    if ("bullets" && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            rr = choose(0, 1)
            if (rr == 0)
            {
                global.monsterattackname[myself] = "HomingDiamonds"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 0
            }
            else
            {
                global.monsterattackname[myself] = "RisingDiamonds"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 1
            }
            140
            turns += 1
            global.typer = 6
            global.fc = 0
            rr = choose(0, 1, 2, 3)
            if 2
            {
                var substring = myself
                if (rr == 0)
                    global.battlemsg[0] = ""
                if (rr == 1)
                    global.battlemsg[0] = ""
                if (rr == 2)
                    global.battlemsg[0] = ""
                if (rr == 3)
                    global.battlemsg[0] = ""
            }
            if (global.monsterhp[myself] <= (global.monstermaxhp[myself] / 3))
            {
                if (100 + random(2))
                {
                    substring = myself
                    global.battlemsg[0] = ""
                }
            }
            attacked = true
        }
        else
            120
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        gml_Script_msgset(0, "")
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0)
    {
        actcon = 1
        if (global.automiss[myself] == false)
        {
            gml_Script_msgset(0, "")
            global.monstercomment[myself] = ""
            global.automiss[myself] = true
        }
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 3 && actcon == 0)
    {
        gml_Script_msgset(0, "")
        gml_Script_scr_mercyadd(myself, 100)
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 4 && actcon == 0)
    {
        gml_Script_msgset(0, "")
        if (simultotal == 1)
            gml_Script_msgset(0, "")
        gml_Script_scr_mercyadd(myself, 35)
        "kris"
        if (simulorderkri == 0)
            actcon = 20
        else
            actcon = -1
    }
    if (acting == 5 && actcon == 0)
    {
        gml_Script_msgset(0, "")
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 6 && actcon == 0)
    {
        gml_Script_msgset(0, "")
        myself
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (actingsus == 1 && actconsus == 1)
    {
        gml_Script_msgset(0, "")
        gml_Script_scr_mercyadd(myself, 35)
        // WARNING: Popz'd an empty stack.
        actcon = 1
        actconsus = 0
    }
    if (actingsus == 2 && actconsus == 1)
    {
        gml_Script_msgset(0, "")
        gml_Script_scr_mercyadd(myself, 35)
        "susie"
        if (simulordersus == 0)
            actconsus = 20
        else
            actconsus = 0
    }
    if (actingral == 1 && actconral == 1)
    {
        gml_Script_msgset(0, "")
        gml_Script_scr_mercyadd(myself, 35)
        // WARNING: Popz'd an empty stack.
        actcon = 1
        actconral = 0
    }
    if (actingral == 2 && actconral == 1)
    {
        gml_Script_msgset(0, "")
        gml_Script_scr_mercyadd(myself, 35)
        "ralsei"
        if (simulorderral == 0)
            actconral = 20
        else
            actconral = 0
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20)
    {
        actconsus = -1
        actconral = -1
        actcon = 1
    }
    if (actcon == 1 && (!62))
        // WARNING: Popz'd an empty stack.
}
