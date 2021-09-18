var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_6, _temp_local_var_8, _temp_local_var_9, _temp_local_var_19, _temp_local_var_20, _temp_local_var_22, _temp_local_var_37, _temp_local_var_39, _temp_local_var_61;
if (global.monster[myself] == true)
{
    if ("enemytalk" && talked == 0)
    {
        // WARNING: Popz'd an empty stack.
        if (!361)
            gml_Script_instance_create(0, 0, obj_darkener)
        global.typer = 50
        if (!omawaroid_battle_init)
        {
            omawaroid_battle_init = 1
            omawaroid_battle = 409
        }
        rr = choose(0, 1, 2, 3)
        if (rr == 0)
            gml_Script_msgsetloc(0, "I'm the fever,&I'm the chill.", "obj_virovirokun_enemy_slash_Step_0_gml_24_0")
        if (rr == 1)
            gml_Script_msgsetloc(0, "Don't let&this bug ya!", "obj_virovirokun_enemy_slash_Step_0_gml_25_0")
        if (rr == 2)
            gml_Script_msgsetloc(0, "Happy new&year 1997!", "obj_virovirokun_enemy_slash_Step_0_gml_26_0")
        if (rr == 3)
            gml_Script_msgsetloc(0, "I've got a love&letter for you.", "obj_virovirokun_enemy_slash_Step_0_gml_27_0")
        if (ambushed == true)
        {
            gml_Script_msgsetloc(0, "Got your nose!", "obj_virovirokun_enemy_slash_Step_0_gml_30_0")
            ambushed = false
        }
        if omawaroid_battle
        {
            if (turns == 0)
                gml_Script_msgsetloc(0, "This shrink's&out of control!", "obj_virovirokun_enemy_slash_Step_0_gml_40_0")
            if (!409)
                gml_Script_msgsetloc(0, "Yaha, I'm&home free!", "obj_virovirokun_enemy_slash_Step_0_gml_46_0")
        }
        if (global.mercymod[myself] >= global.mercymax[myself])
        {
            // WARNING: Popz'd an empty stack.
            var dialogue = (100 >= 50 ? gml_Script_stringsetloc("Kindness is&contagious!", "obj_virovirokun_enemy_slash_Step_0_gml_54_0") : gml_Script_stringsetloc("Just what the&doctor ordered!", "obj_virovirokun_enemy_slash_Step_0_gml_54_1"))
            gml_Script_msgset(0, dialogue)
        }
        if (noelle_splat == 1)
            gml_Script_msgsetloc(0, "Nice", "obj_virovirokun_enemy_slash_Step_0_gml_58_0")
        noelle_splat = 0
        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
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
        if (rtimer == 16)
        {
            rr = choose(0, 1)
            if (rr == 0)
            {
                global.monsterattackname[myself] = "Invader"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 13
            }
            else
            {
                global.monsterattackname[myself] = "Viruses"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 14
            }
            140
            turns += 1
            global.typer = 6
            global.fc = 0
            if (global.monsterstatus[myself] == true)
                global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun looks extra sick.", "obj_virovirokun_enemy_slash_Step_0_gml_114_0")
            else if (global.mercymod[myself] >= global.mercymax[myself])
                global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun looks healthy.", "obj_virovirokun_enemy_slash_Step_0_gml_117_0")
            else if (100 >= 98)
                global.battlemsg[0] = gml_Script_stringsetloc("* Smells like cherry syrup.", "obj_virovirokun_enemy_slash_Step_0_gml_122_0")
            else
            {
                rr = choose(0, 1, 2, 3)
                if (rr == 0)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun is poking round things with a spear.", "obj_virovirokun_enemy_slash_Step_0_gml_126_0")
                if (rr == 1)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun uses a text document as a tissue.", "obj_virovirokun_enemy_slash_Step_0_gml_127_0")
                if (rr == 2)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun is sweating suspiciously.", "obj_virovirokun_enemy_slash_Step_0_gml_128_0")
                if (rr == 3)
                    global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun is beeping a criminal tune.", "obj_virovirokun_enemy_slash_Step_0_gml_129_0")
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
        gml_Script_msgsetloc(0, "* VIROVIROKUN - This sick virus needs affordable healthcare./%", "obj_virovirokun_enemy_slash_Step_0_gml_154_0")
        // WARNING: Popz'd an empty stack.
    }
    if (acting == 2 && actcon == 0)
    {
        gml_Script_scr_act_charsprite("kris", choose(1424, 1423), 0, 0)
        if (global.mercymod[myself] < global.mercymax[myself])
            gml_Script_scr_mercyadd(myself, 100)
        gml_Script_msgsetloc(0, "* You treated Virovirokun with care! It's no longer infectious!/%", "obj_virovirokun_enemy_slash_Step_0_gml_163_0")
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 3 && actcon == 0)
    {
        if (noelle_special == 0)
        {
            gml_Script_scr_act_charsprite("kris", choose(1424, 1423), 0, 0)
            if (!4)
            {
                gml_Script_scr_act_charsprite("ralsei", 1496, 0, 0)
                gml_Script_scr_act_charsprite("susie", 1452, 0, 0)
                gml_Script_msgsetloc(0, "* Everyone treated the enemy with tender loving care!! All the enemies felt great!!/%", "obj_virovirokun_enemy_slash_Step_0_gml_179_0")
            }
            else
            {
                if 2
                {
                    noelle_fall = 1
                    noelle_fall_timer = 0
                    var _temp_local_var_37 = object_index
                    noelle_splat = 1
                }
                gml_Script_msgsetloc(0, "* You and Noelle showed the enemy tender loving care!/%", "obj_virovirokun_enemy_slash_Step_0_gml_183_0")
            }
            with (obj_monsterparent)
            {
                if (global.mercymod[myself] < global.mercymax[myself])
                {
                    if (global.monstertype[myself] == 35)
                        gml_Script_scr_mercyadd(myself, 100)
                    else
                        gml_Script_scr_mercyadd(myself, 50)
                }
            }
            // WARNING: Popz'd an empty stack.
            actcon = 1
        }
        else
        {
            if (noelle_special_con == 0)
            {
                noelle_special_con = 1
                alarm[5] = 30
                "noelle"
                gml_Script_msgsetloc(0, "\\E2* H..^1. huh? What are you telling me to do? ACT...?/", "obj_virovirokun_enemy_slash_Step_0_gml_198_0")
                gml_Script_msgnextloc("\\E8* Can someone please explain what's going on?!/%", "obj_virovirokun_enemy_slash_Step_0_gml_199_0")
                // WARNING: Popz'd an empty stack.
            }
            if (noelle_special_con == 2 && (!62))
            {
                noelle_special_con = 3
                alarm[5] = 30
                "no_name"
                global.typer = 50
                gml_Script_msgsetloc(0, "Oh boy, is this&your first time&in a battle?", "obj_virovirokun_enemy_slash_Step_0_gml_209_0")
                balloon = gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
            }
            if (noelle_special_con == 4)
            {
            }
            else
                var _temp_local_var_61 = 0
            noelle_special_con = 5
            alarm[5] = 30
            var _temp_local_var_39 = balloon
        }
    }
    if noelle_fall
    {
        noelle_fall_timer++
        if (noelle_fall_timer == 1)
        {
            with (obj_heronoelle)
            {
                visible = true
                image_alpha = 0
            }
            nise_noelle = gml_Script_scr_dark_marker(obj_heronoelle.x, obj_heronoelle.y, 1530)
            var _temp_local_var_8 = nise_noelle
            depth = (20 - (gml_Script___view_get(1, 0) / 40))
            a = 
            a.hspeed = 2.5
            a.depth = (depth + 1)
            b = 
            b.image_alpha = 0.6
            b.hspeed = 5
            b.depth = (depth + 2)
        }
        if (noelle_fall_timer == 30)
        {
            nise_noelle.image_index = 1
            64
            var _temp_local_var_9 = nise_noelle
        }
        if (noelle_fall_timer == 50)
        {
            gml_Script_snd_play_x(40, 0.6, 0.8)
            nise_noelle.image_index = 2
            nise_noelle.hspeed = 6
            nise_noelle.friction = 0.75
        }
        if (noelle_fall_timer > 80)
        {
            noelle_fall = 0
            noelle_fall_timer = 0
        }
    }
    if (acting == 4 && actcon == 0)
    {
        gml_Script_msgsetloc(0, "* Ralsei cooked up a cure./", "obj_virovirokun_enemy_slash_Step_0_gml_428_0")
        30
        gml_Script_scr_anyface_next("ralsei", "H")
        gml_Script_msgnextloc("\\EH* If you're sick, shouldn't you have some soup? Say \"aah\"~!/", "obj_virovirokun_enemy_slash_Step_0_gml_433_0")
        gml_Script_scr_anyface_next("none", 0)
        gml_Script_msgnextloc("* Sickness was cured! Everyone's HP up!/%", "obj_virovirokun_enemy_slash_Step_0_gml_436_0")
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (acting == 5 && actcon == 0)
    {
        gml_Script_msgsetloc(0, "* Susie cooked up a cure!/", "obj_virovirokun_enemy_slash_Step_0_gml_444_0")
        gml_Script_scr_anyface_next("susie", 2)
        gml_Script_msgnextloc("\\E2* What, you want me to cook something!?/", "obj_virovirokun_enemy_slash_Step_0_gml_447_0")
        gml_Script_scr_anyface_next("none", 0)
        gml_Script_msgnextloc("* Susie put a hot dog in the microwave!/%", "obj_virovirokun_enemy_slash_Step_0_gml_450_0")
        // WARNING: Popz'd an empty stack.
        actcon = 5
    }
    if (actcon == 5 && (!62))
    {
        explosion = gml_Script_instance_create((obj_herosusie.x + 25), (obj_herosusie.y + 15), obj_animation)
        188
        explosion.sprite_index = spr_realisticexplosion
        for (var i = 0; i < 3; i++)
        {
            if (global.monster[i] == true && global.monsterhp[i] >= 10)
            {
                global.hittarget[i] = 0
                caster = 2
                gml_Script_scr_damage_enemy(i, (global.monsterhp[i] * 0.75))
            }
        }
        gml_Script_msgsetloc(0, "* She forgot to poke holes in it! The hot dog exploded!/%", "obj_virovirokun_enemy_slash_Step_0_gml_472_0")
        // WARNING: Popz'd an empty stack.
        actcon = 1
    }
    if (actingsus == 1 && actconsus == 1)
    {
        gml_Script_scr_mercyadd(myself, 50)
        if (simultotal == 1)
        {
            gml_Script_msgsetloc(0, "* Susie commiserated with the enemy!/", "obj_virovirokun_enemy_slash_Step_0_gml_484_0")
            gml_Script_scr_anyface_next("susie", "2")
            gml_Script_msgnextloc("\\E2* Stick it to the man^1, dude./", "obj_virovirokun_enemy_slash_Step_0_gml_486_0")
            gml_Script_msgnextloc("\\E2* Even if that means cloning yourself^1, or whatever./%", "obj_virovirokun_enemy_slash_Step_0_gml_487_0")
            // WARNING: Popz'd an empty stack.
            actcon = 1
            actconsus = 0
        }
        else
        {
            gml_Script_msgsetloc(0, "* Susie encouraged evil!/%", "obj_virovirokun_enemy_slash_Step_0_gml_492_0")
            "susie"
            actconsus = (simulordersus == 0 ? 20 : 0)
        }
    }
    if (actingral == 1 && actconral == 1)
    {
        if (global.mercymod[myself] < global.mercymax[myself])
            gml_Script_scr_mercyadd(myself, 50)
        if (simultotal == 1)
        {
            gml_Script_msgsetloc(0, "* Ralsei tried to steer the enemy down the right path./", "obj_virovirokun_enemy_slash_Step_0_gml_504_0")
            gml_Script_scr_anyface_next("ralsei", "0")
            gml_Script_msgnextloc("\\E0* Not everybody knows this^1, but.../", "obj_virovirokun_enemy_slash_Step_0_gml_506_0")
            gml_Script_msgnextloc("\\E2* Crimes are bad. ..^1. Did you know that?/%", "obj_virovirokun_enemy_slash_Step_0_gml_507_0")
            // WARNING: Popz'd an empty stack.
            actcon = 1
            actconral = 0
        }
        else
        {
            gml_Script_msgsetloc(0, "* Ralsei tried to rehabilitate!/%", "obj_virovirokun_enemy_slash_Step_0_gml_512_0")
            "ralsei"
            actconral = (simulorderral == 0 ? 20 : 0)
        }
    }
    if (actingnoe == 1 && actconnoe == 1)
    {
        if (noelle_special == 0)
        {
            if (global.mercymod[myself] < global.mercymax[myself])
                gml_Script_scr_mercyadd(myself, 50)
            if (simultotal == 1)
            {
                gml_Script_msgsetloc(0, "* Noelle offered a cold compress!/%", "obj_virovirokun_enemy_slash_Step_0_gml_527_0")
                // WARNING: Popz'd an empty stack.
                actcon = 1
                actconnoe = 0
            }
            else
            {
                gml_Script_msgsetloc(0, "* Noelle tried her best!/%", "obj_virovirokun_enemy_slash_Step_0_gml_532_0")
                "noelle"
                actconnoe = (simulordernoe == 0 ? 20 : 0)
            }
        }
        else
        {
            actconnoe = 20
            gml_Script_msgsetloc(0, "* Noelle was clueless!/%", "obj_virovirokun_enemy_slash_Step_0_gml_540_0")
            // WARNING: Popz'd an empty stack.
        }
    }
    if (actcon == 1 && (!62))
    {
        if (!noelle_fall)
        {
            if nise_noelle
                var _temp_local_var_19 = nise_noelle
            if (explosion != -4)
                var _temp_local_var_20 = explosion
            noelle_fall = 0
            noelle_fall_timer = 0
            // WARNING: Popz'd an empty stack.
            // WARNING: Popz'd an empty stack.
        }
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20 || actconnoe == 20)
    {
        if (!noelle_fall)
        {
            if nise_noelle
                var _temp_local_var_22 = nise_noelle
            actconsus = -1
            actconral = -1
            actconnoe = -1
            actcon = 1
        }
    }
}
