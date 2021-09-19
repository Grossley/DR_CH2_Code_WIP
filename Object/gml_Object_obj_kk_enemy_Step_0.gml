if (global.monstercomment[myself] == gml_Script_stringsetloc("(Tired)", "obj_kk_enemy_slash_Step_0_gml_3_0"))
{
    global.monstercomment[myself] = " "
    global.monsterstatus[myself] = false
}
if (global.monster[myself] == true)
{
    if (gml_Script_scr_isphase("enemytalk") && talked == 0)
    {
        gml_Script_scr_randomtarget()
        if (!instance_exists(obj_darkener))
            gml_Script_instance_create(0, 0, obj_darkener)
        postattackscene = 0
        heal = 0
        groove = 0
        global.typer = 50
        var a = 0
        if (instance_exists(obj_sweet_enemy) && global.monsterhp[obj_sweet_enemy.myself] < global.monstermaxhp[obj_sweet_enemy.myself])
            a = 1
        if (instance_exists(obj_hatguy_enemy) && global.monsterhp[obj_hatguy_enemy.myself] < global.monstermaxhp[obj_hatguy_enemy.myself])
            a = 1
        rr = choose(0, 1, 2, 3)
        if (dancing == 1)
            gml_Script_msgsetloc(0, "Dance! Dance!&Everybody dance!", "obj_kk_enemy_slash_Step_0_gml_35_0")
        else
        {
            if (rr == 0)
                gml_Script_msgsetloc(0, "I like this song.", "obj_kk_enemy_slash_Step_0_gml_38_0")
            if (rr == 1)
                gml_Script_msgsetloc(0, "Can we dance?", "obj_kk_enemy_slash_Step_0_gml_39_0")
            if (rr == 2)
                gml_Script_msgsetloc(0, "Ring-a-ding-dong.", "obj_kk_enemy_slash_Step_0_gml_40_0")
            if (rr == 3 && a == 0)
                gml_Script_msgsetloc(0, "Are we having fun?", "obj_kk_enemy_slash_Step_0_gml_41_0")
            if (rr == 3 && a == 1)
                gml_Script_msgsetloc(0, "Does anyone want&this milk I found?", "obj_kk_enemy_slash_Step_0_gml_42_0")
        }
        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
        talked = 1
        talktimer = 0
    }
    if (talked == 1 && gml_Script_scr_isphase("enemytalk"))
    {
        rtimer = 0
        gml_Script_scr_blconskip(15)
        if gml_Script_scr_isphase("bullets")
        {
            if ((instance_exists(obj_sweet_enemy) && global.monsterhp[obj_sweet_enemy.myself] <= 2) || (instance_exists(obj_kk_enemy) && global.monsterhp[obj_kk_enemy.myself] <= 2) || (instance_exists(obj_hatguy_enemy) && global.monsterhp[obj_hatguy_enemy.myself] <= 2))
            {
                if (obj_musical_controller.scon == 0)
                    obj_musical_controller.scon = 1
                with (obj_sweet_enemy)
                    heal = 1
                with (obj_kk_enemy)
                    heal = 1
                with (obj_hatguy_enemy)
                    heal = 1
            }
            else
            {
                if (!instance_exists(obj_growtangle))
                    gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 206), obj_growtangle)
                if (!instance_exists(obj_moveheart))
                    gml_Script_scr_moveheart()
            }
        }
    }
    if (gml_Script_scr_isphase("bullets") && attacked == false)
    {
        rtimer += 1
        if (rtimer == 12)
        {
            rr = choose(0, 1)
            if (heal == 1)
            {
                if (obj_musical_controller.scon == 0)
                    obj_musical_controller.scon = 1
            }
            else if (!dancing)
            {
                global.monsterattackname[myself] = "musical bullets"
                if (!instance_exists(obj_musicalbullet_controller))
                {
                    dc = gml_Script_instance_create(x, y, obj_musicalbullet_controller)
                    dc.damage = (global.monsterat[myself] * 5)
                    dc.target = mytarget
                    boombox = gml_Script_instance_create((obj_growtangle.x - 115), (obj_growtangle.y + 80), obj_musicenemy_boombox)
                    boombox.damage = (global.monsterat[myself] * 5)
                    boombox.target = mytarget
                    boombox = gml_Script_instance_create((obj_growtangle.x + 115), (obj_growtangle.y + 80), obj_musicenemy_boombox)
                    boombox.image_xscale = -1
                    boombox.damage = (global.monsterat[myself] * 5)
                    boombox.target = mytarget
                    dancer = gml_Script_instance_create((obj_growtangle.x - 60), (obj_growtangle.y - 100), obj_musicenemy_dancer)
                    dancer.damage = (global.monsterat[myself] * 5)
                    dancer.target = mytarget
                    dancer = gml_Script_instance_create((obj_growtangle.x - 20), (obj_growtangle.y - 100), obj_musicenemy_dancer)
                    dancer.damage = (global.monsterat[myself] * 5)
                    dancer.target = mytarget
                    dancer = gml_Script_instance_create((obj_growtangle.x + 20), (obj_growtangle.y - 100), obj_musicenemy_dancer)
                    dancer.damage = (global.monsterat[myself] * 5)
                    dancer.target = mytarget
                }
                else
                    obj_musicalbullet_controller.enemy_count += 1
            }
            gml_Script_scr_turntimer(235)
            turns += 1
            global.typer = 6
            global.fc = 0
            event_user(1)
            attacked = true
        }
        else
            gml_Script_scr_turntimer(120)
    }
    if ((!instance_exists(obj_sweet_enemy)) && global.mnfight == 2 && global.turntimer <= 1 && postattackscene == 0)
    {
        with (obj_battlecontroller)
            noreturn = true
        with (obj_musical_controller)
            event_user(0)
        postattackscene = 1
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* K_K - The silly one. Looks up to the other two./%", "obj_kk_enemy_slash_Step_0_gml_151_0")
        gml_Script_scr_battletext_default()
    }
    if (acting == 2 && actcon == 0)
    {
        if instance_exists(obj_sweet_enemy)
        {
            with (obj_sweet_enemy)
                actCounter++
        }
        danceCounter = 1
        gml_Script_scr_act_charsprite("kris", 861, 0.16, 1)
        if (simultotal == 1 || (global.lang == "ja" && obj_sweet_enemy.simultotal_funny == 1))
        {
            gml_Script_msgsetloc(0, "* You danced!/", "obj_kk_enemy_slash_Step_0_gml_172_0")
            gml_Script_msgnextloc("* K_K got lost in the groove!/%", "obj_kk_enemy_slash_Step_0_gml_173_0")
            gml_Script_scr_battletext_default()
            actcon = 4
            alarm[4] = 10
        }
        else
        {
            dancing = 1
            if (groove == 0)
            {
                if (global.lang == "ja")
                {
                    gml_Script_msgsetloc(0, "* You danced with K_K!/", "obj_kk_enemy_slash_Step_0_gml_184_0")
                    gml_Script_msgnextloc("* K_K  got lost in the groove!/%", "obj_kk_enemy_slash_Step_0_gml_185_0")
                }
                else
                    gml_Script_msgsetloc(0, "* You danced with K_K!/%", "obj_kk_enemy_slash_Step_0_gml_190_0")
                groove = 1
            }
            else
                gml_Script_msgsetloc(0, "* You danced with K_K!/%", "obj_kk_enemy_slash_Step_0_gml_190_0")
            if (global.lang == "ja")
            {
                gml_Script_scr_battletext_default()
                actcon = 20
            }
            else
            {
                gml_Script_scr_simultext("kris")
                if (simulorderkri == 0)
                    actcon = 20
                else
                    actcon = 0
            }
        }
    }
    if (acting == 3 && actcon == 0)
    {
        if instance_exists(obj_sweet_enemy)
        {
            with (obj_sweet_enemy)
                actCounter++
        }
        danceCounter = 2
        gml_Script_scr_act_charsprite("kris", 861, 0.16, 1)
        gml_Script_scr_act_charsprite("ralsei", 777, 0.16, 1)
        gml_Script_scr_act_charsprite("susie", 817, 0.16, 1)
        gml_Script_msgsetloc(0, "* Everyone danced with K_K! They're totally lost in the groove!/%", "obj_kk_enemy_slash_Step_0_gml_221_0")
        gml_Script_scr_battletext_default()
        actcon = 4
        alarm[4] = 10
    }
    if (actcon == 5)
    {
        dancing = 1
        actcon = 1
    }
    if (actingsus == 1 && actconsus == 1)
    {
        dancing = 1
        danceCounter = 1
        gml_Script_scr_act_charsprite("susie", 817, 0.16, 1)
        if (groove == 0)
        {
            if (global.lang == "ja")
            {
                gml_Script_msgsetloc(0, "* Susie danced with K_K!/", "obj_kk_enemy_slash_Step_0_gml_248_0")
                gml_Script_msgnextloc("* K_K got lost in the groove!/%", "obj_kk_enemy_slash_Step_0_gml_249_0")
            }
            else
                gml_Script_msgsetloc(0, "* Susie danced with K_K!/%", "obj_kk_enemy_slash_Step_0_gml_254_0")
            groove = 1
        }
        else
            gml_Script_msgsetloc(0, "* Susie danced with K_K!/%", "obj_kk_enemy_slash_Step_0_gml_254_0")
        if (global.lang == "ja")
        {
            gml_Script_scr_battletext_default()
            actconsus = 20
        }
        else
        {
            gml_Script_scr_simultext("susie")
            if (simulordersus == 0)
                actconsus = 20
            else
                actconsus = 0
        }
    }
    if (actingral == 1 && actconral == 1)
    {
        dancing = 1
        danceCounter = 1
        gml_Script_scr_act_charsprite("ralsei", 777, 0.16, 1)
        if (groove == 0)
        {
            if (global.lang == "ja")
            {
                gml_Script_msgsetloc(0, "* Ralsei danced with K_K!/", "obj_kk_enemy_slash_Step_0_gml_287_0")
                gml_Script_msgnextloc("* K_K got lost in the groove!/%", "obj_kk_enemy_slash_Step_0_gml_288_0")
            }
            else
                gml_Script_msgsetloc(0, "* Ralsei danced with K_K!/%", "obj_kk_enemy_slash_Step_0_gml_293_0")
            groove = 1
        }
        else
            gml_Script_msgsetloc(0, "* Ralsei danced with K_K!/%", "obj_kk_enemy_slash_Step_0_gml_293_0")
        if (global.lang == "ja")
        {
            gml_Script_scr_battletext_default()
            actconral = 20
        }
        else
        {
            gml_Script_scr_simultext("ralsei")
            if (simulorderral == 0)
                actconral = 20
            else
                actconral = 0
        }
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
    {
        if (obj_sweet_enemy.dancing == 1 && obj_kk_enemy.dancing == 1 && obj_hatguy_enemy.dancing == 1 && obj_sweet_enemy.endcon == 0)
            obj_sweet_enemy.endcon = 1
        else if (obj_sweet_enemy.endcon == 0)
        {
            actcon = 0
            acting = 0
            with (obj_marker)
            {
                if (sprite_index == spr_kris_dance || sprite_index == spr_susie_dance || sprite_index == spr_ralsei_dance)
                {
                    instance_destroy()
                    with (obj_heroparent)
                    {
                        if (image_alpha == 0)
                        {
                            image_alpha = 1
                            acttimer = 0
                            state = 0
                            global.faceaction[myself] = 0
                        }
                    }
                }
            }
            gml_Script_scr_nextact()
        }
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20)
    {
        if gml_Script_scr_terminate_writer()
        {
            if (obj_sweet_enemy.dancing == 1 && obj_kk_enemy.dancing == 1 && obj_hatguy_enemy.dancing == 1 && obj_sweet_enemy.endcon == 0)
                obj_sweet_enemy.endcon = 1
            else if (obj_sweet_enemy.endcon == 0)
            {
                with (obj_marker)
                {
                    if (sprite_index == spr_kris_dance || sprite_index == spr_susie_dance || sprite_index == spr_ralsei_dance)
                    {
                        instance_destroy()
                        with (obj_heroparent)
                        {
                            if (image_alpha == 0)
                            {
                                image_alpha = 1
                                acttimer = 0
                                state = 0
                                global.faceaction[myself] = 0
                            }
                        }
                    }
                }
                actconsus = -1
                actconral = -1
                actcon = 1
            }
        }
    }
}