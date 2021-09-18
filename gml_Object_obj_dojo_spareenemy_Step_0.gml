var _cut, _temp_local_var_1, _temp_local_var_12;
if (ambushed == false)
{
    // WARNING: Popz'd an empty stack.
    ambushed = true
}
if (global.monster[myself] == true)
{
    if ("enemytalk" && talked == 0)
    {
        global.typer = 50
        if (checkreact == 1)
        {
            checkreact = 0
            gml_Script_msgsetloc(0, "\\M2Boss^1! Don't listen to&that^1! That's the wrong&ACT!^1! The wrong ACT!^1!/%", "obj_dojo_spareenemy_slash_Step_0_gml_19_0")
        }
        else if (sparecon == 1)
            gml_Script_msgsetloc(0, "Ohhhh, boss,&you're sparing&me!?/%", "obj_dojo_spareenemy_slash_Step_0_gml_23_0")
        else if (pacifycon == 1)
        {
            gml_Script_msgsetloc(0, "You did it, Boss!^1&If you can manage to SPARE enemies right away.../", "obj_dojo_spareenemy_slash_Step_0_gml_27_0")
            gml_Script_msgnextloc("Battles will go&a lot faster!&That's all!/%", "obj_dojo_spareenemy_slash_Step_0_gml_28_0")
        }
        else if (battlestate == 0)
        {
            gml_Script_msgsetloc(0, "Boss!/", "obj_dojo_spareenemy_slash_Step_0_gml_32_0")
            gml_Script_msgnextloc("You can ACT&and SPARE on&the same turn!/", "obj_dojo_spareenemy_slash_Step_0_gml_33_0")
            gml_Script_msgnextloc("If you know Kris's&ACT will give an&enemy 100`% mercy.../", "obj_dojo_spareenemy_slash_Step_0_gml_34_0")
            gml_Script_msgnextloc("SPARE them on&the same turn&with Susie&or Ralsei!/%", "obj_dojo_spareenemy_slash_Step_0_gml_35_0")
            battlestate = 1
        }
        else if (battlestate <= 1)
        {
            global.battlemsg[0] = gml_Script_stringsetloc("* Jigsaw Joe looks vulnerable to ACTING and SPARING on the same turn.", "obj_dojo_spareenemy_slash_Step_0_gml_40_0")
            if (sparecon == -1)
            {
                if (beardcount < 99)
                    beardcount++
                gml_Script_msgsetsubloc(0, "\\M2Ah!! It's my&~1 o'clock shadow!/%", string(beardcount), "obj_dojo_spareenemy_slash_Step_0_gml_44_0")
                sparecon = 0
            }
            else if (global.mercymod[myself] > 0)
            {
                gml_Script_scr_mercyadd(myself, (-global.mercymod[myself]))
                shaved = 0
                gml_Script_msgsetloc(0, "\\M1* Jigsaw Joe's stubble regrew!/%", "obj_dojo_spareenemy_slash_Step_0_gml_51_0")
                // WARNING: Popz'd an empty stack.
                sparecon = -1
            }
            else
                gml_Script_msgsetloc(0, "Boss^1!&You gotta ACT&and SPARE on&the same turn!/%", "obj_dojo_spareenemy_slash_Step_0_gml_56_0")
        }
        else if (battlestate == 2)
        {
            global.battlemsg[0] = gml_Script_stringsetloc("* Jigsaw Joe looks like he could use a bedtime story.", "obj_dojo_spareenemy_slash_Step_0_gml_60_0")
            global.mercymod[myself] = 0
            gml_Script_msgsetloc(0, "\\M2WAIT A SECOND!!!^1&I got something else&to remind you of!/", "obj_dojo_spareenemy_slash_Step_0_gml_63_0")
            gml_Script_msgnextloc("\\M0Boss!/", "obj_dojo_spareenemy_slash_Step_0_gml_64_0")
            gml_Script_msgnextloc("It works the&same with making&an enemy TIRED!/", "obj_dojo_spareenemy_slash_Step_0_gml_65_0")
            gml_Script_msgnextloc("If an ACT&will make an&enemy TIRED.../", "obj_dojo_spareenemy_slash_Step_0_gml_66_0")
            if (global.tension >= 40)
                gml_Script_msgnextloc("Use Ralsei's PACIFY&right away!/%", "obj_dojo_spareenemy_slash_Step_0_gml_67_0")
            else
            {
                gml_Script_msgnextloc("Use Ralsei's PACIFY&right away!/", "obj_dojo_spareenemy_slash_Step_0_gml_74_0")
                gml_Script_msgnextloc("Of course, PACIFY is MAGIC,&so you'll need TP./", "obj_dojo_spareenemy_slash_Step_0_gml_75_0")
                gml_Script_msgnextloc("Spend a turn&DEFENDING to gain TP&if you have to, boss!/%", "obj_dojo_spareenemy_slash_Step_0_gml_76_0")
            }
            battlestate = 3
            global.actactor[myself][1] = 2
            global.actname[myself][1] = gml_Script_stringsetloc("SleepyStory", "obj_dojo_spareenemy_slash_Step_0_gml_70_0")
            global.actdesc[myself][1] = " "
            global.actsimul[myself][1] = 1
        }
        else if (battlestate == 3)
        {
            if (global.monsterstatus[myself] == true)
            {
                pacifycon = -1
                global.monstercomment[myself] = gml_Script_stringsetloc("", "obj_dojo_spareenemy_slash_Step_0_gml_79_0")
                global.monsterstatus[myself] = false
                image_speed *= 2
                gml_Script_msgsetloc(0, "* Jigsaw Joe drank coffee^1! Jigsaw Joe stopped being TIRED!/%", "obj_dojo_spareenemy_slash_Step_0_gml_82_0")
                // WARNING: Popz'd an empty stack.
            }
            else
            {
                pacifycon = 0
                if (global.tension < 40 && pacifycon != -2)
                    gml_Script_msgsetloc(0, "Boss^1! If you don't&have the TP to use&PACIFY^1, DEFENDing&will give you TP!/%", "obj_dojo_spareenemy_slash_Step_0_gml_89_0")
                else
                    gml_Script_msgsetloc(0, "Boss^1! You're putting me&to SLEEP^1! I mean, you&AREN'T^1! Make me TIRED&and PACIFY me, boss!/%", "obj_dojo_spareenemy_slash_Step_0_gml_91_0")
            }
        }
        else
            gml_Script_msgsetloc(0, "Boss!!/%", "obj_dojo_spareenemy_slash_Step_0_gml_95_0")
        if (sparecon != -1 && pacifycon != -1)
            gml_Script_scr_enemyblcon((x - 10), (y + 30), 10)
        if (pacifycon == -1)
            talked = -1
        else
            talked = 1
        talktimer = 0
    }
    if (talked == -1 && "enemytalk")
    {
        if (talktimer < 15)
            talktimer++
        else if (!62)
            talked = 0
    }
    if (talked == 1 && "enemytalk")
    {
        rtimer = 0
        if (talktimer < 15)
            talktimer++
        if ((!62) && talktimer >= 15)
        {
            global.flag[20] = 0
            if (sparecon == -1)
            {
                talked = 0
                return;
            }
            if (sparecon == 1)
            {
                sparecon = 0
                // WARNING: Popz'd an empty stack.
                battlestate = 2
                fakespare = 1
                alarm[0] = 90
                talked = 0
                global.mnfight = 8
                global.mercymod[myself] = 0
            }
            else if (pacifycon == 1)
            {
                // WARNING: Popz'd an empty stack.
                // WARNING: Popz'd an empty stack.
                // WARNING: Popz'd an empty stack.
                // WARNING: Popz'd an empty stack.
                // WARNING: Popz'd an empty stack.
                with (obj_darkener)
                    darken = false
            }
            else
            {
                with (obj_darkener)
                    darken = false
                // WARNING: Popz'd an empty stack.
            }
        }
    }
    if (global.mnfight == 8)
        return;
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* JIGSAW JOE - Beat him up to earn his life savings!/%", "obj_dojo_spareenemy_slash_Step_0_gml_177_0")
        checkreact = 1
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0 && battlestate < 2)
    {
        shavesprite = gml_Script_scr_act_charsprite("kris", 1412, 0, 0)
        gml_Script_msgsetloc(0, "* (You shaved Jigsaw Joe's stubble!)/%", "obj_dojo_spareenemy_slash_Step_0_gml_187_0")
        // WARNING: Popz'd an empty stack.
        actcon = 2
    }
    if (acting == 2 && actcon == 0 && battlestate >= 2)
    {
        gml_Script_msgsetloc(0, "* Susie told the enemy a bedtime story about beating them up!^1&* The enemy became TIRED!/%", "obj_dojo_spareenemy_slash_Step_0_gml_195_0")
        image_speed /= 2
        104
        // WARNING: Popz'd an empty stack.
        actcon = 1
        myself
    }
    if (acting == 1 && actconsus == 1)
    {
        gml_Script_msgsetloc(0, "* Susie acted!/%", "obj_dojograzeenemy_slash_Step_0_gml_97_0")
        // WARNING: Popz'd an empty stack.
        actcon = 1
        actconsus = 0
    }
    if (acting == 1 && actconral == 1)
    {
        gml_Script_msgsetloc(0, "* Ralsei acted!/%", "obj_dojograzeenemy_slash_Step_0_gml_106_0")
        // WARNING: Popz'd an empty stack.
        actcon = 1
        actconral = 0
    }
    if (actcon == 2 && (!62))
    {
        actcon = 3
        var _temp_local_var_12 = shavesprite
        sprite_index = spr_krisb_attack
        gml_Script_scr_animate(0, 0, 1)
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
    {
    }
}
