if (global.monster[myself] == true)
{
    if (gml_Script_scr_isphase("enemytalk") && talked == 0)
    {
        gml_Script_scr_randomtarget()
        if (!instance_exists(obj_darkener))
            gml_Script_instance_create(0, 0, obj_darkener)
        global.typer = 50
        rr = choose(0, 1, 2, 3)
        if (rr == 0)
            gml_Script_msgsetloc(0, "(I'm no cheater!&It's just cheese...)", "obj_mauswheel_enemy_slash_Step_0_gml_18_0")
        if (rr == 1)
            gml_Script_msgsetloc(0, "(We are grippable.&We are many.)", "obj_mauswheel_enemy_slash_Step_0_gml_23_0")
        if (rr == 2)
            gml_Script_msgsetloc(0, "(Rolling around at&the speed of mouse...)", "obj_mauswheel_enemy_slash_Step_0_gml_27_0")
        if (rr == 3)
            gml_Script_msgsetloc(0, "(Wired is FASTER!)", "obj_mauswheel_enemy_slash_Step_0_gml_31_0")
        if (global.mercymod[myself] >= global.mercymax[myself])
            gml_Script_msgsetloc(0, "(Well, everyone's captured.)&(What does that make me?)", "obj_mauswheel_enemy_slash_Step_0_gml_36_0")
        gml_Script_scr_enemyblcon((x - 20), global.monstery[myself], 10)
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && gml_Script_scr_isphase("enemytalk"))
    {
        rtimer = 0
        gml_Script_scr_blconskip(15)
        if gml_Script_scr_isphase("bullets")
        {
            if ((!instance_exists(obj_moveheart)) && (!instance_exists(obj_heart)))
                gml_Script_scr_moveheart()
            if (!instance_exists(obj_growtangle))
                gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
        }
    }
    if (gml_Script_scr_isphase("bullets") && attacked == false)
    {
        rtimer += 1
        if (rtimer == 16)
        {
            rr = 0
            if (rr == 0)
                event_user(9)
            else
            {
                global.monsterattackname[myself] = "MausTrail"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 19
                dc.target = mytarget
            }
            gml_Script_scr_turntimer(140)
            turns += 1
            global.typer = 6
            global.fc = 0
            if (global.monsterstatus[myself] == true)
                global.battlemsg[0] = gml_Script_stringsetloc("* Mauswheel's DPI is lowering.", "obj_mauswheel_enemy_slash_Step_0_gml_112_0")
            else if (global.mercymod[myself] >= global.mercymax[myself])
                global.battlemsg[0] = gml_Script_stringsetloc("* Mauswheel is just a spareable husk now.", "obj_mauswheel_enemy_slash_Step_0_gml_115_0")
            else
            {
                rr = choose(0, 1, 2, 3)
                if (rr == 0)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Mauswheel is rolling around with an annoying wheel sound.", "obj_mauswheel_enemy_slash_Step_0_gml_130_0")
                if (rr == 1)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Mauswheel might make a good wreath, as a prank.", "obj_mauswheel_enemy_slash_Step_0_gml_131_0")
                if (rr == 2)
                    global.battlemsg[0] = gml_Script_stringsetloc("* It's a cacophony of clicks.", "obj_mauswheel_enemy_slash_Step_0_gml_132_0")
                if (rr == 3)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Smells like a three-cheese pizza.", "obj_mauswheel_enemy_slash_Step_0_gml_133_0")
            }
            attacked = true
        }
        else
            gml_Script_scr_turntimer(120)
    }
}
if (global.myfight == 3)
{
    xx = gml_Script_camerax()
    yy = gml_Script_cameray()
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* MAUSWHEEL - Two mice are better than one! ... Three^1, maybe not./", "obj_mauswheel_enemy_slash_Step_0_gml_157_0")
        gml_Script_msgnextloc("* The cursor will follow you everywhere^1. Keep moving!/%", "obj_mauswheel_enemy_slash_Step_0_gml_132_0_b")
        gml_Script_scr_battletext_default()
    }
    if (acting == 2 && actcon == 0)
    {
        gml_Script_msgsetsubloc(0, "* Press ~1 To Trap!!!", gml_Script_scr_get_input_name(6), "obj_mauswheel_enemy_slash_Step_0_gml_163_0")
        gml_Script_scr_battletext_default()
        actfailure = 1
        actcon = 15
        basket_size = 0
        alarm[4] = 10
    }
    if (acting == 3 && actcon == 0)
    {
        gml_Script_msgsetsubloc(0, "* Press ~1 To Trap!!!", gml_Script_scr_get_input_name(6), "obj_mauswheel_enemy_slash_Step_0_gml_173_0")
        gml_Script_scr_battletext_default()
        actfailure = 1
        actcon = 15
        basket_size = 1
        alarm[4] = 10
    }
    if (actingsus == 1 && actconsus == 1)
    {
        gml_Script_msgsetloc(0, "* Susie got on all fours and chased the mouse around the room like an animal!!/%", "obj_mauswheel_enemy_slash_Step_0_gml_183_0")
        gml_Script_scr_battletext_default()
        gml_Script_scr_mercyadd(myself, 5)
        actingsus = 0
        actconsus = 0
        actcon = 1
    }
    if (actingral == 1 && actconral == 1 && (!gml_Script_i_ex(62)))
    {
        if (!trappedText)
        {
            trappedText = 1
            global.actsimulral[myself][0] = 1
            gml_Script_msgsetloc(0, "* Ralsei started putting peanut butter on a spoon and put it in a trap!!/%", "obj_mauswheel_enemy_slash_Step_0_gml_202_0")
            gml_Script_scr_mercyadd(myself, 5)
            actconral = 2
            gml_Script_scr_battletext_default()
        }
        else
        {
            var simultext = (simultotal == 1 ? gml_Script_stringsetloc("* Ralsei sang a song about mice!!/%", "obj_mauswheel_enemy_slash_Step_0_gml_212_0") : gml_Script_stringsetloc("* Ralsei sang a mouse song!/%", "obj_mauswheel_enemy_slash_Step_0_gml_212_1"))
            gml_Script_msgset(0, simultext)
            gml_Script_scr_mercyadd(myself, 5)
            gml_Script_scr_battletext_default()
            actingral = 0
            actconral = 0
            actcon = 1
        }
    }
    if (actconral == 2 && (!instance_exists(obj_writer)))
    {
        actconral = 2.5
        basket = gml_Script_instance_create((obj_herosusie.x - 5), (gml_Script_cameray() - 100), obj_maus_basket_susie)
        with (obj_herosusie)
            visible = false
        nise_susie = gml_Script_scr_dark_marker((obj_herosusie.x + 16), (obj_herosusie.y - 1), 996)
        nise_susie.depth = obj_herosusie.depth
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetloc(0, "* Susie was captured!!/%", "obj_mauswheel_enemy_slash_Step_0_gml_209_0")
        gml_Script_scr_battletext_default()
    }
    if (actconral == 2.5 && basket.gravity == 0)
    {
        actconral = 3
        var _temp_local_var_12 = nise_susie
        gml_Script_scr_shakeobj()
    }
    if (actconral == 3 && (!instance_exists(obj_writer)))
    {
        actcon = 1
        actconral = 0
        gml_Script_scr_speaker("ralsei")
        gml_Script_msgsetloc(0, "\\EN* Susie!!!/", "obj_mauswheel_enemy_slash_Step_0_gml_230_0")
        gml_Script_scr_anyface_next("susie", "5")
        gml_Script_msgnextloc("\\E5* The hell you blaming ME for!^1! YOU made the trap!!/%", "obj_mauswheel_enemy_slash_Step_0_gml_243_0")
        gml_Script_scr_battletext()
    }
    if (actcon == 10)
    {
        basket = gml_Script_instance_create(x, y, obj_maus_basket)
        basket.maker = id
        actcon = 11
        actfailure = 1
        cancatch[myself] = basket
        caught[0] = 0
        caught[1] = 0
        caught[2] = 0
        var _temp_local_var_15 = 1
    }
    if (actcon == 12)
    {
        trappingX = 0
        with (obj_writer)
            instance_destroy()
        if (actfailure == 1)
            gml_Script_msgsetloc(0, "* You missed!/%", "obj_mauswheel_enemy_slash_Step_0_gml_269_0")
        else
            gml_Script_msgsetloc(0, "* You caught them!/%", "obj_mauswheel_enemy_slash_Step_0_gml_270_0")
        gml_Script_scr_battletext_default()
        actcon = 13
        alarm[4] = 20
    }
    if (actcon == 14 && (!instance_exists(obj_writer)))
        actcon = 1
    if (actcon == 16)
    {
        gml_Script_instance_create((x + 60), (y + 64), obj_maus_split)
        actcon = 17
    }
    if (actcon == 18)
    {
        with (obj_writer)
            instance_destroy()
        if (actfailure == 1)
            gml_Script_msgsetloc(0, "* You missed!/%", "obj_mauswheel_enemy_slash_Step_0_gml_296_0")
        else
            gml_Script_msgsetloc(0, "* You caught them!/%", "obj_mauswheel_enemy_slash_Step_0_gml_297_0")
        gml_Script_scr_battletext_default()
        actcon = 13
        alarm[4] = 20
    }
    if (actcon == 19)
    {
        with (obj_writer)
            instance_destroy()
        if (global.flag[642] == 1)
            actcon = 22.1
        else
        {
            gml_Script_msgsetloc(0, "* Mauswheel ran out of maice!/%", "obj_mauswheel_enemy_slash_Step_0_gml_312_0")
            gml_Script_scr_battletext_default()
            actcon = 21
            alarm[4] = 20
        }
    }
    if (actcon == 22)
        gml_Script_scr_spare(myself)
    if (actcon == 22.1)
    {
        gml_Script_msgsetloc(0, "* Mauswheel reached 100`% mercy!/%", "obj_mauswheel_enemy_slash_Step_0_gml_317_0")
        gml_Script_scr_battletext_default()
        actcon = 22.2
    }
    if (actcon == 22.2 && (!gml_Script_i_ex(62)))
    {
        gml_Script_msgsetloc(0, "* But, it's still rolling out of control.../%", "obj_mauswheel_enemy_slash_Step_0_gml_324_0")
        gml_Script_scr_battletext_default()
        actcon = 22.3
    }
    if (actcon == 22.3 && (!gml_Script_i_ex(62)))
    {
        gml_Script_msgsetloc(0, "* Suddenly...!/%", "obj_mauswheel_enemy_slash_Step_0_gml_331_0")
        gml_Script_scr_battletext_default()
        actcon = 23
    }
    if (actcon > 22 && actcon < 23 && image_speed < 2)
        image_speed += 0.02
    if (actcon == 23 && (!gml_Script_i_ex(62)))
    {
        gml_Script_instance_create(((gml_Script_camerax() + 315) - 76), (gml_Script_cameray() - 138), obj_mauswheel_tasquemanager)
        gml_Script_instance_create(((gml_Script_camerax() + 435) - 74), (gml_Script_cameray() - 80), obj_mauswheel_tasque)
        actcon = 25
        alarm[4] = 25
    }
    if (actcon == 26)
    {
        gml_Script_msgsetloc(0, "* We'll take it from here!/%", "obj_mauswheel_enemy_slash_Step_0_gml_337_0")
        gml_Script_scr_battletext_default()
        actcon = 27
        alarm[4] = 12
    }
    if (actcon == 28 && (!instance_exists(obj_writer)))
    {
        with (obj_mauswheel_tasquemanager)
            alarm[0] = 30
        with (obj_mauswheel_tasque)
            alarm[0] = 30
        gml_Script_scr_spareanim()
        gml_Script_scr_recruit()
        visible = false
        actcon = 29
        alarm[4] = 60
    }
    if (actcon == 30 && (!instance_exists(obj_mauswheel_tasquemanager)))
    {
        gml_Script_scr_wincombat()
        instance_destroy()
    }
    if (actingnoe == 1 && actconnoe == 1)
    {
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetloc(0, "* Noelle screamed quietly!/%", "obj_mauswheel_enemy_slash_Step_0_gml_360_0")
        gml_Script_scr_mercyadd(myself, 50)
        gml_Script_scr_simultext("noelle")
        actconnoe = (simulordernoe == 0 ? 20 : 0)
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
    {
        gml_Script_scr_act_charsprite_end()
        gml_Script_scr_nextact()
        if remove
        {
            if gml_Script_i_ex(463)
            {
                with (obj_maus_enemy)
                    tasque_joined = 1
            }
            global.monstermakey[myself] = (y - 15)
            global.monstermakex[myself] = tasquemarker.x
            newtasque = gml_Script_scr_monster_change(myself, 32, 446)
            var _temp_local_var_26 = tasquemarker
            instance_destroy()
        }
        if (basket != -4)
        {
            var _temp_local_var_27 = nise_susie
            instance_destroy()
        }
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20 || actconnoe == 20)
    {
        if gml_Script_scr_terminate_writer()
        {
            actconsus = -1
            actconral = -1
            actconnoe = -1
            actcon = 1
        }
    }
}
