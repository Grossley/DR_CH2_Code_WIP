if gml_Script_scr_debug()
{
}
if (global.monster[myself] == true)
{
    if (gml_Script_scr_isphase("enemytalk") && talked == 0)
    {
        gml_Script_scr_randomtarget()
        if (!instance_exists(obj_darkener))
            gml_Script_instance_create(0, 0, obj_darkener)
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && gml_Script_scr_isphase("enemytalk"))
    {
        rtimer = 0
        gml_Script_scr_blconskip(-1)
        if gml_Script_scr_isphase("bullets")
        {
            if ((!instance_exists(obj_moveheart)) && (!gml_Script_i_ex(628)))
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
                global.monsterattackname[myself] = "PipisExplosion"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 50
                dc.damage = 50
                dc.btimer = (35 - random(30))
                dc.creatorid = id
            }
            gml_Script_scr_turntimer(90)
            turns += 1
            global.typer = 6
            global.fc = 0
            if gml_Script_scr_messagepriority(random(2))
                global.battlemsg[0] = gml_Script_stringsetloc("* Pipis", "obj_pipis_enemy_slash_Step_0_gml_73_0")
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
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        var randomnumber = irandom_range(42, 5555)
        var smallfacetext = gml_Script_stringsetsubloc("~1 liked this!  ", string(randomnumber), "obj_pipis_enemy_slash_Step_0_gml_97_0")
        gml_Script_scr_smallface(0, "empty", 0, "right", "bottom", smallfacetext)
        gml_Script_msgsetloc(0, "PIPIS - ''The Original'' An invasive species of freshwater clam. \\f0 /%", "obj_pipis_enemy_slash_Step_0_gml_100_0")
        gml_Script_scr_battletext_default()
    }
    if ((actingsus == 1 && actconsus == 1) || (actingral == 1 && actconral == 1))
    {
        gml_Script_msgsetloc(0, "* Nothing happened!/%", "obj_pipis_enemy_slash_Step_0_gml_110_0")
        gml_Script_scr_battletext_default()
        if (actingsus == 1 && actconsus == 1)
        {
            actcon = 1
            actconsus = 0
        }
        if (actingral == 1 && actconral == 1)
        {
            actcon = 1
            actconral = 0
        }
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20)
    {
        if gml_Script_scr_terminate_writer()
        {
            actconsus = -1
            actconral = -1
            actcon = 1
        }
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
        gml_Script_scr_nextact()
}
