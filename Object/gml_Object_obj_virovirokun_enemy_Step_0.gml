if (global.monster[myself] == true)
{
    if (gml_Script_scr_isphase("enemytalk") && talked == false)
    {
        gml_Script_scr_randomtarget()
        if (!instance_exists(obj_darkener))
            gml_Script_instance_create(0, 0, obj_darkener)
        global.typer = 50
        if (!omawaroid_battle_init)
        {
            omawaroid_battle_init = 1
            omawaroid_battle = gml_Script_i_ex(obj_omawaroid_enemy)
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
            if (!gml_Script_i_ex(obj_omawaroid_enemy))
                gml_Script_msgsetloc(0, "Yaha, I'm&home free!", "obj_virovirokun_enemy_slash_Step_0_gml_46_0")
        }
        if (global.mercymod[myself] >= global.mercymax[myself])
        {
            randomize()
            var dialogue = (random(100) >= 50 ? gml_Script_stringsetloc("Kindness is&contagious!", "obj_virovirokun_enemy_slash_Step_0_gml_54_0") : gml_Script_stringsetloc("Just what the&doctor ordered!", "obj_virovirokun_enemy_slash_Step_0_gml_54_1"))
            gml_Script_msgset(0, dialogue)
        }
        if (noelle_splat == 1)
            gml_Script_msgsetloc(0, "Nice", "obj_virovirokun_enemy_slash_Step_0_gml_58_0")
        noelle_splat = 0
        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
        talked = true
        talktimer = 0
    }
    if (talked == true && gml_Script_scr_isphase("enemytalk"))
    {
        rtimer = 0
        gml_Script_scr_blconskip(15)
        if gml_Script_scr_isphase("bullets")
        {
            if (!instance_exists(obj_moveheart))
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
            rr = choose(0, 1)
            if (rr == 0)
            {
                global.monsterattackname[myself] = "Invader"
                dc = gml_Script_scr_bulletspawner(x, y, obj_dbulletcontroller)
                dc.type = 13
            }
            else
            {
                global.monsterattackname[myself] = "Viruses"
                dc = gml_Script_scr_bulletspawner(x, y, obj_dbulletcontroller)
                dc.type = 14
            }
            gml_Script_scr_turntimer(140)
            turns += 1
            global.typer = 6
            global.fc = 0
            if (global.monsterstatus[myself] == true)
                global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun looks extra sick.", "obj_virovirokun_enemy_slash_Step_0_gml_114_0")
            else if (global.mercymod[myself] >= global.mercymax[myself])
                global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun looks healthy.", "obj_virovirokun_enemy_slash_Step_0_gml_117_0")
            else if (random(100) >= 98)
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
            gml_Script_scr_turntimer(120)
    }
}
if (global.myfight == 3)
{
    xx = gml_Script___view_get(0, 0)
    yy = gml_Script___view_get(1, 0)
    if (acting == true && actcon == 0)
    {
        actcon = 1
        gml_Script_msgsetloc(0, "* VIROVIROKUN - This sick virus needs affordable healthcare./%", "obj_virovirokun_enemy_slash_Step_0_gml_154_0")
        gml_Script_scr_battletext_default()
    }
    if (acting == 2 && actcon == 0)
    {
        gml_Script_scr_act_charsprite("kris", choose(1425, 1424), 0, false)
        if (global.mercymod[myself] < global.mercymax[myself])
            gml_Script_scr_mercyadd(myself, 100)
        gml_Script_msgsetloc(0, "* You treated Virovirokun with care! It's no longer infectious!/%", "obj_virovirokun_enemy_slash_Step_0_gml_163_0")
        gml_Script_scr_battletext_default()
        actcon = 1
    }
    if (acting == 3 && actcon == 0)
    {
        if (noelle_special == 0)
        {
            gml_Script_scr_act_charsprite("kris", choose(1425, 1424), 0, false)
            if (!gml_Script_scr_havechar(4))
            {
                gml_Script_scr_act_charsprite("ralsei", spr_ralseib_virokun, 0, false)
                gml_Script_scr_act_charsprite("susie", spr_susieb_virokun, 0, false)
                gml_Script_msgsetloc(0, "* Everyone treated the enemy with tender loving care!! All the enemies felt great!!/%", "obj_virovirokun_enemy_slash_Step_0_gml_179_0")
            }
            else
            {
                if (gml_Script_scr_sideb_get_phase() < 2)
                {
                    noelle_fall = 1
                    noelle_fall_timer = 0
                    with (object_index)
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
            gml_Script_scr_battletext_default()
            actcon = 1
        }
        else
        {
            if (noelle_special_con == 0)
            {
                noelle_special_con = 1
                alarm[5] = 30
                gml_Script_scr_speaker("noelle")
                gml_Script_msgsetloc(0, "\\E2* H..^1. huh? What are you telling me to do? ACT...?/", "obj_virovirokun_enemy_slash_Step_0_gml_198_0")
                gml_Script_msgnextloc("\\E8* Can someone please explain what's going on?!/%", "obj_virovirokun_enemy_slash_Step_0_gml_199_0")
                gml_Script_scr_battletext()
            }
            if (noelle_special_con == 2 && (!gml_Script_i_ex(obj_writer)))
            {
                noelle_special_con = 3
                alarm[5] = 30
                gml_Script_scr_speaker("no_name")
                global.typer = 50
                gml_Script_msgsetloc(0, "Oh boy, is this&your first time&in a battle?", "obj_virovirokun_enemy_slash_Step_0_gml_209_0")
                balloon = gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
            }
            if (noelle_special_con == 4 && gml_Script_button1_p())
            {
                noelle_special_con = 5
                alarm[5] = 30
                with (balloon)
                    instance_destroy()
                with (obj_writer)
                    instance_destroy()
                gml_Script_scr_speaker("noelle")
                gml_Script_msgsetloc(0, "\\E6* Uh... well... um... yes./%", "obj_virovirokun_enemy_slash_Step_0_gml_222_0")
                gml_Script_scr_battletext()
            }
            if (noelle_special_con == 6 && (!gml_Script_i_ex(obj_writer)))
            {
                noelle_special_con = 7
                alarm[5] = 30
                global.typer = 50
                gml_Script_msgsetloc(0, "Oh boy...", "obj_virovirokun_enemy_slash_Step_0_gml_232_0")
                balloon = gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
            }
            if (noelle_special_con == 8 && gml_Script_button1_p())
            {
                noelle_special_con = 9
                alarm[5] = 30
                with (balloon)
                    instance_destroy()
                audio_pause_sound(global.batmusic[0])
                fadeout = gml_Script_instance_create(0, 0, obj_fadeout)
                fadeout.depth = 0
            }
            if (noelle_special_con == 10)
            {
                global.typer = 6
                gml_Script_scr_speaker("no_name")
                gml_Script_msgsetloc(0, "* You and Virovirokun explained how battles work to Noelle./%", "obj_virovirokun_enemy_slash_Step_0_gml_256_0")
                viro_talk = gml_Script_d_make()
                viro_talk.depth = (fadeout.depth - 10)
                noelle_special_con = 11
                alarm[5] = 30
            }
            if (noelle_special_con >= 11 && noelle_special_con < 13)
            {
                if (viro_talk != noone)
                {
                    with (viro_talk)
                    {
                        if gml_Script_i_ex(writer)
                            writer.depth = (depth - 100)
                    }
                }
            }
            if (noelle_special_con == 12 && gml_Script_button1_p())
            {
                noelle_special_con = 13
                alarm[5] = 15
                instance_destroy(obj_writer)
                gml_Script_instance_create(0, 0, obj_fadein)
                with (fadeout)
                    instance_destroy()
            }
            if (noelle_special_con == 14 && (!gml_Script_i_ex(obj_writer)))
            {
                noelle_special_con = 15
                alarm[5] = 15
                gml_Script_scr_speaker("noelle")
                gml_Script_msgsetloc(0, "\\E4* I get it! It's kind of like Dragon Blazers!/", "obj_virovirokun_enemy_slash_Step_0_gml_296_0")
                gml_Script_msgnextloc("\\E0* And if we're nice to you, we can win through mercy?/%", "obj_virovirokun_enemy_slash_Step_0_gml_297_0")
                gml_Script_scr_battletext()
            }
            if (noelle_special_con == 16 && (!gml_Script_i_ex(obj_writer)))
            {
                noelle_special_con = 17
                alarm[5] = 15
                global.typer = 50
                gml_Script_msgsetloc(0, "Yeah", "obj_virovirokun_enemy_slash_Step_0_gml_307_0")
                balloon = gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
            }
            if (noelle_special_con == 18 && gml_Script_button1_p())
            {
                noelle_special_con = 19
                alarm[5] = 15
                with (balloon)
                    instance_destroy()
                with (obj_writer)
                    instance_destroy()
                gml_Script_scr_speaker("noelle")
                gml_Script_msgsetloc(0, "\\E2* And the way I have to do that is.../", "obj_virovirokun_enemy_slash_Step_0_gml_320_0")
                gml_Script_msgnextloc("\\EH* Dressing up in a weird costume./%", "obj_virovirokun_enemy_slash_Step_0_gml_321_0")
                gml_Script_scr_battletext()
            }
            if (noelle_special_con == 20 && (!gml_Script_i_ex(obj_writer)))
            {
                noelle_special_con = 21
                alarm[5] = 15
                global.typer = 50
                gml_Script_msgsetloc(0, "Yeah", "obj_virovirokun_enemy_slash_Step_0_gml_331_0")
                balloon = gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
            }
            if (noelle_special_con == 22 && gml_Script_button1_p())
            {
                noelle_special_con = 23
                alarm[5] = 15
                with (balloon)
                    instance_destroy()
                with (obj_writer)
                    instance_destroy()
                gml_Script_scr_speaker("noelle")
                gml_Script_msgsetloc(0, "\\EH* .../%", "obj_virovirokun_enemy_slash_Step_0_gml_344_0")
                gml_Script_scr_battletext()
                gml_Script_scr_speaker("no_one")
            }
            if (noelle_special_con == 24 && (!gml_Script_i_ex(obj_writer)))
            {
                noelle_special_con = 99
                audio_resume_sound(global.batmusic[0])
                noelle_special = 0
            }
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
            nise_noelle = gml_Script_scr_dark_marker(obj_heronoelle.x, obj_heronoelle.y, spr_noelleb_act_nurse)
            with (nise_noelle)
            {
                depth = (20 - (gml_Script___view_get(1, 0) / 40))
                gml_Script_scr_oflash()
                a = gml_Script_scr_afterimage()
                a.hspeed = 2.5
                a.depth = (depth + 1)
                b = gml_Script_scr_afterimage()
                b.image_alpha = 0.6
                b.hspeed = 5
                b.depth = (depth + 2)
            }
            nise_noelle.image_speed = 0
        }
        if (noelle_fall_timer == 30)
        {
            nise_noelle.image_index = 1
            gml_Script_snd_play(snd_noise)
            with (nise_noelle)
                gml_Script_scr_shakeobj()
        }
        if (noelle_fall_timer == 50)
        {
            gml_Script_snd_play_x(snd_splat, 0.6, 0.8)
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
        gml_Script_scr_healallitemspell(30)
        gml_Script_scr_anyface_next("ralsei", "H")
        gml_Script_msgnextloc("\\EH* If you're sick, shouldn't you have some soup? Say \"aah\"~!/", "obj_virovirokun_enemy_slash_Step_0_gml_433_0")
        gml_Script_scr_anyface_next("none", 0)
        gml_Script_msgnextloc("* Sickness was cured! Everyone's HP up!/%", "obj_virovirokun_enemy_slash_Step_0_gml_436_0")
        gml_Script_scr_battletext_default()
        actcon = 1
    }
    if (acting == 5 && actcon == 0)
    {
        gml_Script_msgsetloc(0, "* Susie cooked up a cure!/", "obj_virovirokun_enemy_slash_Step_0_gml_444_0")
        gml_Script_scr_anyface_next("susie", 2)
        gml_Script_msgnextloc("\\E2* What, you want me to cook something!?/", "obj_virovirokun_enemy_slash_Step_0_gml_447_0")
        gml_Script_scr_anyface_next("none", 0)
        gml_Script_msgnextloc("* Susie put a hot dog in the microwave!/%", "obj_virovirokun_enemy_slash_Step_0_gml_450_0")
        gml_Script_scr_battletext_default()
        actcon = 5
    }
    if (actcon == 5 && (!instance_exists(obj_writer)))
    {
        explosion = gml_Script_instance_create((obj_herosusie.x + 25), (obj_herosusie.y + 15), obj_animation)
        gml_Script_snd_play(snd_badexplosion)
        explosion.sprite_index = spr_realisticexplosion
        for (var i = 0; i < 3; i++)
        {
            if (global.monster[i] == true && global.monsterhp[i] >= 10)
            {
                global.hittarget[i] = 0
                caster = gml_Script_scr_findchar(2)
                gml_Script_scr_damage_enemy(i, floor((global.monsterhp[i] * 0.75)))
            }
        }
        gml_Script_msgsetloc(0, "* She forgot to poke holes in it! The hot dog exploded!/%", "obj_virovirokun_enemy_slash_Step_0_gml_472_0")
        gml_Script_scr_battletext_default()
        actcon = 1
    }
    if (actingsus == true && actconsus == 1)
    {
        gml_Script_scr_mercyadd(myself, 50)
        if (simultotal == 1)
        {
            gml_Script_msgsetloc(0, "* Susie commiserated with the enemy!/", "obj_virovirokun_enemy_slash_Step_0_gml_484_0")
            gml_Script_scr_anyface_next("susie", "2")
            gml_Script_msgnextloc("\\E2* Stick it to the man^1, dude./", "obj_virovirokun_enemy_slash_Step_0_gml_486_0")
            gml_Script_msgnextloc("\\E2* Even if that means cloning yourself^1, or whatever./%", "obj_virovirokun_enemy_slash_Step_0_gml_487_0")
            gml_Script_scr_battletext_default()
            actcon = 1
            actconsus = 0
        }
        else
        {
            gml_Script_msgsetloc(0, "* Susie encouraged evil!/%", "obj_virovirokun_enemy_slash_Step_0_gml_492_0")
            gml_Script_scr_simultext("susie")
            actconsus = (simulordersus == 0 ? 20 : 0)
        }
    }
    if (actingral == true && actconral == 1)
    {
        if (global.mercymod[myself] < global.mercymax[myself])
            gml_Script_scr_mercyadd(myself, 50)
        if (simultotal == 1)
        {
            gml_Script_msgsetloc(0, "* Ralsei tried to steer the enemy down the right path./", "obj_virovirokun_enemy_slash_Step_0_gml_504_0")
            gml_Script_scr_anyface_next("ralsei", "0")
            gml_Script_msgnextloc("\\E0* Not everybody knows this^1, but.../", "obj_virovirokun_enemy_slash_Step_0_gml_506_0")
            gml_Script_msgnextloc("\\E2* Crimes are bad. ..^1. Did you know that?/%", "obj_virovirokun_enemy_slash_Step_0_gml_507_0")
            gml_Script_scr_battletext_default()
            actcon = 1
            actconral = 0
        }
        else
        {
            gml_Script_msgsetloc(0, "* Ralsei tried to rehabilitate!/%", "obj_virovirokun_enemy_slash_Step_0_gml_512_0")
            gml_Script_scr_simultext("ralsei")
            actconral = (simulorderral == 0 ? 20 : 0)
        }
    }
    if (actingnoe == true && actconnoe == 1)
    {
        if (noelle_special == 0)
        {
            if (global.mercymod[myself] < global.mercymax[myself])
                gml_Script_scr_mercyadd(myself, 50)
            if (simultotal == 1)
            {
                gml_Script_msgsetloc(0, "* Noelle offered a cold compress!/%", "obj_virovirokun_enemy_slash_Step_0_gml_527_0")
                gml_Script_scr_battletext_default()
                actcon = 1
                actconnoe = 0
            }
            else
            {
                gml_Script_msgsetloc(0, "* Noelle tried her best!/%", "obj_virovirokun_enemy_slash_Step_0_gml_532_0")
                gml_Script_scr_simultext("noelle")
                actconnoe = (simulordernoe == 0 ? 20 : 0)
            }
        }
        else
        {
            actconnoe = 20
            gml_Script_msgsetloc(0, "* Noelle was clueless!/%", "obj_virovirokun_enemy_slash_Step_0_gml_540_0")
            gml_Script_scr_battletext_default()
        }
    }
    if (actcon == 1 && (!instance_exists(obj_writer)))
    {
        if (!noelle_fall)
        {
            if gml_Script_i_ex(nise_noelle)
            {
                with (nise_noelle)
                    instance_destroy()
                with (obj_heronoelle)
                    image_alpha = 1
            }
            if (explosion != noone)
            {
                with (explosion)
                    instance_destroy()
            }
            noelle_fall = 0
            noelle_fall_timer = 0
            gml_Script_scr_act_charsprite_end()
            gml_Script_scr_nextact()
        }
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20 || actconnoe == 20)
    {
        if (!noelle_fall)
        {
            if gml_Script_i_ex(nise_noelle)
            {
                with (nise_noelle)
                    instance_destroy()
                with (obj_heronoelle)
                    image_alpha = 1
            }
            if gml_Script_scr_terminate_writer()
            {
                actconsus = -1
                actconral = -1
                actconnoe = -1
                actcon = 1
            }
        }
    }
}
