var _temp_local_var_1, _temp_local_var_2, _temp_local_var_12, _temp_local_var_20;
if (global.monster[myself] == true)
{
    if (global.monstercomment[myself] == "(Tired)")
    {
        global.monstercomment[myself] = " "
        global.monsterstatus[myself] = false
    }
    solotimer = round((audio_sound_get_track_position(solo_music) * 30))
    sweetdanceprev = obj_sweet_enemy.dancing
    capndanceprev = obj_hatguy_enemy.dancing
    kkdanceprev = obj_kk_enemy.dancing
    if (gml_Script_scr_isphase("enemytalk") && talked == 0)
    {
        gml_Script_scr_randomtarget()
        if (!instance_exists(obj_darkener))
            gml_Script_instance_create(0, 0, obj_darkener)
        postattackscene = 0
        heal = 0
        groove = 0
        obj_musical_controller.scon = 0
        simultotal_funny = 0
        global.typer = 50
        rr = choose(0, 1, 2, 3)
        if (dancing == 1)
            gml_Script_msgsetloc(0, "Hey^1, I love&this song!!", "obj_sweet_enemy_slash_Step_0_gml_27_0")
        else
        {
            if (rr == 0)
                gml_Script_msgsetloc(0, "Feel the beat^1,&feel the beatdown!", "obj_sweet_enemy_slash_Step_0_gml_30_0")
            if (rr == 1)
                gml_Script_msgsetloc(0, "Boom^1, du-boom^1,&du-boom,", "obj_sweet_enemy_slash_Step_0_gml_31_0")
            if (rr == 2)
                gml_Script_msgsetloc(0, "Get mixed^1,&get remixed!", "obj_sweet_enemy_slash_Step_0_gml_32_0")
            if (rr == 3)
                gml_Script_msgsetloc(0, "Taste the rhythm^1,&prism!", "obj_sweet_enemy_slash_Step_0_gml_33_0")
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
            else if (obj_sweet_enemy.learnedhowtoact == 1)
            {
                postattackscene = 1
                with (obj_battlecontroller)
                    noreturn = true
                with (obj_musical_controller)
                    event_user(0)
                with (obj_heroparent)
                    darkify = false
                with (obj_darkener)
                    instance_destroy()
            }
            else
            {
                if (!instance_exists(obj_growtangle))
                    gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 206), obj_growtangle)
                if (!instance_exists(obj_moveheart))
                    gml_Script_scr_moveheart()
                with (obj_growtangle)
                {
                    maxxscale = 2
                    maxyscale = 2.5
                }
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
            rr = choose(0, 1, 2, 3)
            if (rr == 0)
                global.battlemsg[0] = gml_Script_stringsetloc("* Sweet shimmies defiantly.", "obj_sweet_enemy_slash_Step_0_gml_110_0")
            if (rr == 1)
                global.battlemsg[0] = gml_Script_stringsetloc("* Cap'n spins his cap around.", "obj_sweet_enemy_slash_Step_0_gml_111_0")
            if (rr == 2)
                global.battlemsg[0] = gml_Script_stringsetloc("* K_K is a CD player.", "obj_sweet_enemy_slash_Step_0_gml_112_0")
            if (rr == 3)
                global.battlemsg[0] = gml_Script_stringsetloc("* Smells like music.", "obj_sweet_enemy_slash_Step_0_gml_113_0")
            attacked = true
        }
        else
            gml_Script_scr_turntimer(120)
    }
    if (global.mnfight == 2 && dancecon < 5)
    {
        if (global.turntimer <= 1 && postattackscene == 0)
        {
            if ((!learnedAct) && gml_Script_scr_monsterpop() == 3)
            {
                if (letsdance && (!stoppeddance) && turns == 3 && actCounter < 3)
                {
                    stoppeddance = 1
                    postattackscene = 1
                    with (obj_battlecontroller)
                        noreturn = true
                    with (obj_musical_controller)
                    {
                        event_user(0)
                        theystoppeddancing = 1
                    }
                }
            }
            if (obj_battlecontroller.noreturn == false)
            {
                postattackscene = 1
                with (obj_battlecontroller)
                    noreturn = true
                with (obj_musical_controller)
                    event_user(0)
            }
        }
    }
}
if (dancecon == 1)
{
    learnedAct = 1
    with (obj_hatguy_enemy)
        learnedAct = 1
    with (obj_kk_enemy)
        learnedAct = 1
    if (global.hp[1] <= 0)
    {
        gml_Script_scr_speaker("susie")
        gml_Script_msgsetloc(0, "\\EZ* K... Kris!? Hey, Kris!/", "obj_sweet_enemy_slash_Step_0_gml_184_0")
        gml_Script_msgnextloc("\\EK* ...The hell do we do now!?/", "obj_sweet_enemy_slash_Step_0_gml_185_0")
        gml_Script_msgnextloc("\\EC* ...We can't ACT if Kris is down!/", "obj_sweet_enemy_slash_Step_0_gml_186_0")
        gml_Script_scr_anyface_next("ralsei", "2")
        gml_Script_msgnextloc("\\E2* Don't worry^1, Susie! I'll just heal them, and.../", "obj_sweet_enemy_slash_Step_0_gml_188_0")
        gml_Script_scr_anyface_next("susie", "L")
        gml_Script_msgnextloc("\\EL* ... hey, wait^1. Why can't we ACT without Kris?/", "obj_sweet_enemy_slash_Step_0_gml_190_0")
    }
    else
    {
        gml_Script_scr_speaker("susie")
        gml_Script_msgsetloc(0, "\\EK* Hey, is this really working!?/", "obj_sweet_enemy_slash_Step_0_gml_280_0")
        gml_Script_scr_anyface_next("ralsei", "L")
        gml_Script_msgnextloc("\\EL* Maybe if Kris... um.../", "obj_sweet_enemy_slash_Step_0_gml_198_0")
        gml_Script_msgnextloc("\\EK* Maybe if we tried ballroom dancing instead?/", "obj_sweet_enemy_slash_Step_0_gml_199_0")
        gml_Script_scr_anyface_next("susie", "H")
        gml_Script_msgnextloc("\\EH* Hey^1, why the hell do we need Kris to ACT?/", "obj_sweet_enemy_slash_Step_0_gml_201_0")
    }
    gml_Script_scr_anyface_next("ralsei", "Q")
    gml_Script_msgnextloc("\\EQ* B-because that's um^1, Kris's unique talent, so.../", "obj_sweet_enemy_slash_Step_0_gml_204_0")
    gml_Script_scr_anyface_next("susie", "5")
    gml_Script_msgnextloc("\\E5* You think I'm too stupid to dance by myself!?/%", "obj_sweet_enemy_slash_Step_0_gml_206_0")
    gml_Script_scr_battletext()
    dancecon = 1.1
}
if (dancecon == 1.1 && (!instance_exists(obj_writer)))
{
    susi = gml_Script_scr_act_charsprite("susie", 817, 0.16, 1)
    susi.depth = (obj_heroralsei.depth + 1)
    with (obj_afterimage)
        instance_destroy()
    with (obj_oflash)
        instance_destroy()
    global.flag[34] = 0
    learnedhowtoact = 1
    global.canact[myself][2] = false
    global.actname[myself][2] = ""
    global.actcost[myself][2] = 0
    global.actactor[myself][2] = 0
    global.canact[obj_kk_enemy.myself][2] = false
    global.actname[obj_kk_enemy.myself][2] = ""
    global.actcost[obj_kk_enemy.myself][2] = 0
    global.actactor[obj_kk_enemy.myself][2] = 0
    global.canact[obj_hatguy_enemy.myself][2] = false
    global.actname[obj_hatguy_enemy.myself][2] = ""
    global.actcost[obj_hatguy_enemy.myself][2] = 0
    global.actactor[obj_hatguy_enemy.myself][2] = 0
    gml_Script_scr_spellmenu_setup()
    gml_Script_scr_speaker("none")
    gml_Script_msgsetloc(0, "* Susie learned \\cSS-Action\\cW! She can ACT from her \\cYMAGIC\\cW menu!/", "obj_sweet_enemy_slash_Step_0_gml_266_0")
    gml_Script_scr_anyface_next("ralsei", "L")
    gml_Script_msgnextloc("\\EL* S-Susie^1, I-I don't think you should.../%", "obj_sweet_enemy_slash_Step_0_gml_268_0")
    gml_Script_scr_battletext()
    dancecon = 1.15
}
if (dancecon == 1.15 && (!instance_exists(obj_writer)))
{
    var _temp_local_var_12 = susi
    move_towards_point((obj_heroralsei.x + 100), (obj_heroralsei.y + 5), 10)
}
if (dancecon == 1.2 || (dancescenetimer > 0 && dancescenetimer <= 146))
{
    dancescenetimer++
    if (dancescenetimer == 1)
    {
        gml_Script_scr_act_charsprite_end()
        susi = gml_Script_scr_act_charsprite("susie", 817, 0.5, 1)
        susi.depth = (obj_heroralsei.depth + 1)
        with (obj_afterimage)
            instance_destroy()
        with (obj_oflash)
            instance_destroy()
        susi.hspeed = -5
        susi.x = (obj_heroralsei.x + 100)
        susi.y = (obj_heroralsei.y + 5)
    }
    if (dancescenetimer == 10)
    {
        susi.hspeed = 10
        dancescenetimer2 = 1
        rals = gml_Script_scr_act_charsprite("ralsei", 1508, 0.16, 1)
        with (obj_afterimage)
            instance_destroy()
        with (obj_oflash)
            instance_destroy()
    }
    if (dancescenetimer == 15)
        susi.hspeed = -5
    if (dancescenetimer == 25)
    {
        susi.hspeed = 10
        dancescenetimer2 = 1
        gml_Script_scr_speaker("susie")
        gml_Script_msgsetloc(0, "\\EH* Happy feet dumbass!/%", "obj_sweet_enemy_slash_Step_0_gml_307_0")
        gml_Script_scr_battletext()
    }
    if (dancescenetimer == 30)
        susi.hspeed = -5
    if (dancescenetimer == 40)
    {
        susi.hspeed = 10
        dancescenetimer2 = 1
        dancescenetimer = 25
    }
    if (dancescenetimer2 > 0)
    {
        dancescenetimer2++
        if (dancescenetimer2 > 1 && dancescenetimer2 <= 6)
        {
            rals.x = (obj_heroralsei.x + random_range(((6 - dancescenetimer2) * -1), (6 - dancescenetimer2)))
            rals.y = (obj_heroralsei.y + random_range(((6 - dancescenetimer2) * -1), (6 - dancescenetimer2)))
        }
        if (dancescenetimer2 == 7)
        {
            rals.x = obj_heroralsei.x
            rals.y = obj_heroralsei.y
        }
        if (dancescenetimer2 > 6 && dancescenetimer2 < 12)
        {
        }
        if (dancescenetimer2 == 12)
            dancescenetimer2 = 0
    }
    if (dancescenetimer >= 36 && (!instance_exists(obj_writer)))
    {
        dancescenetimer = 0
        susi.hspeed = 0
        rals.image_xscale = 2
        rals.image_yscale = 2
        dancecon = 2.3
    }
}
if (dancecon == 2.3 && (!instance_exists(obj_writer)))
{
    gml_Script_scr_act_charsprite_end()
    susi = gml_Script_scr_act_charsprite("susie", 817, 0.5, 1)
    susi.x = (obj_heroralsei.x + 80)
    susi.y = (obj_heroralsei.y + 5)
    gml_Script_scr_act_charsprite("ralsei", 1508, 0.16, 1)
    with (obj_afterimage)
        instance_destroy()
    with (obj_oflash)
        instance_destroy()
    dancecon = 2.4
}
if (dancecon == 2.4 && (!instance_exists(obj_writer)))
{
    gml_Script_scr_act_charsprite_end()
    gml_Script_scr_speaker("none")
    susi = gml_Script_scr_act_charsprite("susie", 817, 0.16, 1)
    susi.x = (obj_heroralsei.x + 100)
    susi.y = (obj_heroralsei.y + 5)
    gml_Script_scr_act_charsprite("ralsei", 777, 0.16, 1)
    gml_Script_msgsetloc(0, "* (Susie made Ralsei learn \\cVR-Action\\cW even though he didn't want to!)/", "obj_sweet_enemy_slash_Step_0_gml_354_0")
    gml_Script_scr_anyface_next("ralsei", "U")
    gml_Script_msgnextloc("\\EU* (I... I'm sorry^1, Kris!!!)/%", "obj_sweet_enemy_slash_Step_0_gml_356_0")
    gml_Script_scr_battletext()
    with (obj_musical_controller)
        happyfeetscene = 1
    if (danceCounter > 1)
        danceCounter = 1
    if (obj_hatguy_enemy.danceCounter > 1)
        obj_hatguy_enemy.danceCounter = 1
    if (obj_kk_enemy.danceCounter > 1)
        obj_kk_enemy.danceCounter = 1
    happyfeetscenejusthappened = 1
    with (obj_afterimage)
        instance_destroy()
    with (obj_oflash)
        instance_destroy()
    global.flag[34] = 0
    dancecon = 2.5
}
if (dancecon == 2.5 && (!instance_exists(obj_writer)))
{
    var _temp_local_var_20 = susi
    move_towards_point(obj_herosusie.x, obj_herosusie.y, 10)
    depth = (obj_heroralsei.depth + 1)
}
if (dancecon == 4 && (!instance_exists(obj_writer)))
{
    gml_Script_scr_act_charsprite_end()
    dancecon = 0
    with (obj_musical_controller)
        event_user(0)
    gml_Script_scr_speaker("none")
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == 1 && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* SWEET - The energetic one. Looks up to K_K./%", "obj_sweet_enemy_slash_Step_0_gml_403_0")
        gml_Script_scr_battletext_default()
    }
    if (acting == 2 && actcon == 0)
    {
        actCounter++
        danceCounter = 1
        gml_Script_scr_act_charsprite("kris", 861, 0.16, 1)
        if (simultotal == 1 || (global.lang == "ja" && simultotal_funny == 1))
        {
            gml_Script_msgsetloc(0, "* You danced!/", "obj_sweet_enemy_slash_Step_0_gml_422_0")
            gml_Script_msgnextloc("* Sweet got lost in the groove!/%", "obj_sweet_enemy_slash_Step_0_gml_423_0")
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
                    gml_Script_msgsetloc(0, "* You danced with Sweet!/", "obj_sweet_enemy_slash_Step_0_gml_435_0")
                    gml_Script_msgnextloc("* Sweet got lost in the groove!/%", "obj_sweet_enemy_slash_Step_0_gml_436_0")
                }
                else
                    gml_Script_msgsetloc(0, "* You danced with Sweet!/%", "obj_sweet_enemy_slash_Step_0_gml_534_0")
                groove = 1
            }
            else
                gml_Script_msgsetloc(0, "* You danced with Sweet!/%", "obj_sweet_enemy_slash_Step_0_gml_441_0")
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
        actCounter++
        danceCounter = 2
        gml_Script_scr_act_charsprite("kris", 861, 0.16, 1)
        gml_Script_scr_act_charsprite("ralsei", 777, 0.16, 1)
        gml_Script_scr_act_charsprite("susie", 817, 0.16, 1)
        gml_Script_msgsetloc(0, "* Everyone danced with Sweet! They're totally lost in the groove!/%", "obj_sweet_enemy_slash_Step_0_gml_470_0")
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
                gml_Script_msgsetloc(0, "* Susie danced with Sweet!/", "obj_sweet_enemy_slash_Step_0_gml_495_0")
                gml_Script_msgnextloc("* Sweet got lost in the groove!/%", "obj_sweet_enemy_slash_Step_0_gml_496_0")
            }
            else
                gml_Script_msgsetloc(0, "* Susie danced with Sweet!/%", "obj_sweet_enemy_slash_Step_0_gml_501_0")
            groove = 1
        }
        else
            gml_Script_msgsetloc(0, "* Susie danced with Sweet!/%", "obj_sweet_enemy_slash_Step_0_gml_501_0")
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
                gml_Script_msgsetloc(0, "* Ralsei danced with Sweet!/", "obj_sweet_enemy_slash_Step_0_gml_532_0")
                gml_Script_msgnextloc("* Sweet got lost in the groove!/%", "obj_sweet_enemy_slash_Step_0_gml_533_0")
            }
            else
                gml_Script_msgsetloc(0, "* Ralsei danced with Sweet!/%", "obj_sweet_enemy_slash_Step_0_gml_538_0")
            groove = 1
        }
        else
            gml_Script_msgsetloc(0, "* Ralsei danced with Sweet!/%", "obj_sweet_enemy_slash_Step_0_gml_538_0")
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
        if (obj_sweet_enemy.dancing == 1 && obj_kk_enemy.dancing == 1 && obj_hatguy_enemy.dancing == 1 && endcon == 0)
            endcon = 1
        else if (endcon == 0)
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
            gml_Script_scr_nextact()
        }
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20)
    {
        if gml_Script_scr_terminate_writer()
        {
            if (obj_sweet_enemy.dancing == 1 && obj_kk_enemy.dancing == 1 && obj_hatguy_enemy.dancing == 1 && endcon == 0)
                endcon = 1
            else if (endcon == 0)
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
if (endcon == 1)
{
    endcon = 1.5
    var a = "                            "
    var b = gml_Script_stringsetloc("* Everyone is dancing!", "obj_sweet_enemy_slash_Step_0_gml_699_0")
    gml_Script_msgset(0, (b + a))
    gml_Script_scr_battletext_default()
    with (obj_writer)
    {
        rate = 3
        skippable = false
    }
    gml_Script_snd_volume(125, 0, 15)
    gml_Script_snd_volume(129, 0, 15)
}
if (endcon == 1.5)
{
    endtimer++
    if (endtimer > 150)
        endcon = 2
}
if (endcon == 2)
{
    with (obj_writer)
        instance_destroy()
    gml_Script_instance_create(x, y, obj_musical_battle_end)
    endcon = 3
}
if (endcon == 4)
{
    endcon = 5
    with (obj_kk_enemy)
        gml_Script_scr_act_charsprite_end()
    with (obj_hatguy_enemy)
        gml_Script_scr_act_charsprite_end()
    gml_Script_scr_act_charsprite_end()
    obj_battlecontroller.skipvictory = true
    gml_Script_scr_wincombat()
}
if gml_Script_scr_debug()
{
    if keyboard_check_pressed(ord("M"))
    {
        if songplaying
        {
            songtime = audio_sound_get_track_position(global.batmusic[1])
            audio_pause_sound(global.batmusic[1])
            songplaying = 0
        }
    }
}