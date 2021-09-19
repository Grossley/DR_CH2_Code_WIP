if (global.monster[myself] == true)
{
    if (gml_Script_scr_isphase("enemytalk") && talked == 0)
    {
        talkcon = 0
        if (gml_Script_scr_sideb_get_phase() == 0)
        {
            if (turns == 0)
                mytarget = 0
            gml_Script_scr_prioritytarget(3, 1, 0)
        }
        else if (global.charcantarget[0] == true)
            global.targeted[0] = true
        else
            gml_Script_scr_randomtarget()
        if (!gml_Script_i_ex(361))
            gml_Script_instance_create(0, 0, obj_darkener)
        if (!hurt_noelle)
        {
            if (global.hp[4] < noelle_hp_start)
                hurt_noelle = 1
            else if (global.hp[4] > noelle_hp_start)
                noelle_hp_start = global.hp[4]
        }
        global.typer = 69
        if sideb_route
            rr = (2 - rr)
        else if (turns == 2 || gml_Script_scr_monsterpop() > 1)
            rr = irandom(2)
        else
            rr = attack_phase
        if (rr == 0)
        {
            chosenattack = 0
            gml_Script_msgsetloc(0, "Partake, Kris!&The Zephyr of&Punishment!", "obj_berdlyb2_enemy_slash_Step_0_gml_41_0")
        }
        if (rr == 1)
        {
            chosenattack = 2
            gml_Script_msgsetloc(0, "See if you can&dodge this, Kris!", "obj_berdlyb2_enemy_slash_Step_0_gml_42_0")
        }
        if (rr == 2)
        {
            chosenattack = 1
            gml_Script_msgsetloc(0, "Holy Halbird!&Grant me strength!", "obj_berdlyb2_enemy_slash_Step_0_gml_40_0")
        }
        if (gml_Script_scr_sideb_get_phase() == 0)
        {
            if (turns <= 5)
            {
                if (turns == 0)
                {
                    gml_Script_msgsetloc(0, "Kris^1! I get it^1!&Your head's gotten big&from solving that puzzle&by DUMB LUCK!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_47_0")
                    talkmax += 30
                    gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                    talked = 1
                    talktimer = 0
                }
                if (turns == 1)
                {
                    if (balloon_con == 0)
                    {
                        balloon_con = 1
                        alarm[7] = 30
                        global.typer = berdlytalk
                        gml_Script_msgsetloc(0, "So now you think&it's your chance to&usurp me at my weakest.../%", "obj_berdlyb2_enemy_slash_Step_0_gml_79_0")
                        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                    }
                    if (balloon_con == 2 && (!gml_Script_i_ex(867)))
                    {
                        balloon_con = 0
                        global.typer = berdlytalk
                        gml_Script_msgsetloc(0, "By taking my most&precious thing..^1. Noelle!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_88_0")
                        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                        talked = 1
                        talktimer = 0
                    }
                }
                if (turns == 2)
                {
                    if (balloon_con == 0)
                    {
                        balloon_con = 1
                        alarm[7] = 30
                        global.typer = berdlytalk
                        gml_Script_msgsetloc(0, "But guess what, Kris!&I have one or more things&you will NEVER have!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_98_0")
                        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                    }
                    else if (balloon_con == 2 && (!gml_Script_i_ex(867)))
                    {
                        balloon_con = 0
                        global.typer = berdlytalk
                        gml_Script_msgsetloc(0, "Behold!!!&Comrades!!!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_128_0")
                        summoning = 1
                        wirewait = 1
                        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                        talked = 1
                        talktimer = 0
                    }
                }
                if (turns == 3)
                {
                    if (balloon_con == 0)
                    {
                        balloon_con = 1
                        alarm[7] = 30
                        global.typer = berdlytalk
                        gml_Script_msgsetloc(0, "That's right, Kris!&Unlike YOU, I have a&LOVING TEAM behind me!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_146_0")
                        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                    }
                    else if (balloon_con == 2 && (!gml_Script_i_ex(867)))
                    {
                        if (gml_Script_scr_monsterpop() == 1)
                            balloon_con = 3
                        else
                            balloon_con = 0
                        global.typer = berdlytalk
                        gml_Script_msgsetloc(0, "And you'll never beat&US fighting alone!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_161_0")
                        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                        if (gml_Script_scr_monsterpop() > 1)
                        {
                            talked = 1
                            talktimer = 0
                        }
                    }
                    else if (balloon_con == 3 && (!gml_Script_i_ex(867)))
                    {
                        balloon_con = 4
                        alarm[7] = 45
                    }
                    else if (balloon_con == 5 && (!gml_Script_i_ex(867)))
                    {
                        balloon_con = 0
                        global.typer = berdlytalk
                        gml_Script_msgsetloc(0, "... h-hey^1, wait^1, where'd&the other guys go!?/%", "obj_berdlyb2_enemy_slash_Step_0_gml_182_0")
                        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                        talked = 1
                        talktimer = 0
                    }
                }
                if (turns == 4)
                {
                    if (balloon_con == 0)
                    {
                        balloon_con = 1
                        alarm[7] = 30
                        global.typer = berdlytalk
                        if (gml_Script_scr_monsterpop() > 1)
                            gml_Script_msgsetloc(0, "Kris..^1. you're outmatched^1!&My team is rich in&natural resources!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_199_0")
                        else
                        {
                            gml_Script_msgsetloc(0, "My..^1. my allies are gone^1?&Ha^1! They're probably just..^1.&Helping Queen search for me!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_202_0")
                            talkmax += 30
                        }
                        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                    }
                    if (balloon_con == 2 && (!gml_Script_i_ex(867)))
                    {
                        balloon_con = 0
                        global.typer = berdlytalk
                        if (gml_Script_scr_monsterpop() > 1)
                            gml_Script_msgsetloc(0, "Intelligence^1, yes^1.&Smarts^1, yes^1.&Nipples^1, future YES./%", "obj_berdlyb2_enemy_slash_Step_0_gml_215_0_b")
                        else
                        {
                            gml_Script_msgsetloc(0, "Sh..^1. shut up^1, Kris^1! Shut up^1!&I don't care if you're not&saying anything!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_218_0_b")
                            talkmax += 60
                        }
                        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                        talked = 1
                        talktimer = 0
                    }
                }
                if (turns == 5)
                {
                    if (balloon_con == 0)
                    {
                        balloon_con = 1
                        if (gml_Script_scr_monsterpop() == 1)
                        {
                            alarm[7] = 30
                            global.typer = berdlytalk
                            gml_Script_msgsetloc(0, "S-summon more guys!^1?&I..^1. I don't need to do that!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_241_0")
                        }
                        else
                        {
                            if (global.hp[4] >= 0)
                                alarm[7] = 30
                            else
                            {
                                talked = 1
                                talktimer = 0
                            }
                            global.typer = berdlytalk
                            gml_Script_msgsetloc(0, "Noelle, this might hurt,&but it's to save you!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_171_0")
                        }
                        gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                    }
                    if (balloon_con == 2 && (!gml_Script_i_ex(867)))
                    {
                        balloon_con = 0
                        if (gml_Script_scr_monsterpop() == 1)
                        {
                            gml_Script_msgsetloc(0, "Just WAIT^1! The original&ones are gonna come&back any minute now!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_266_0_b")
                            gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                        }
                        else
                        {
                            global.typer = noelletalk
                            gml_Script_msgsetloc(0, "(Help.)/%", "obj_berdlyb2_enemy_slash_Step_0_gml_180_0")
                            balloon = gml_Script_scr_heroblcon("noelle")
                        }
                        talked = 1
                        talktimer = 0
                    }
                }
            }
            else
            {
                if (hurt_noelle && (!hurt_noelle_talk))
                {
                    hurt_noelle_talk = 1
                    global.typer = berdlytalk
                    gml_Script_msgsetloc(0, "Don't worry,&it's part&of my&calculations!", "obj_berdlyb2_enemy_slash_Step_0_gml_54_0")
                    gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                    if (global.hp[4] > 0)
                    {
                        global.typer = noelletalk
                        gml_Script_msgsetloc(0, "WHY ARE&YOU HITTING&ME!?", "obj_berdlyb2_enemy_slash_Step_0_gml_57_0")
                        gml_Script_scr_heroblcon("noelle")
                    }
                }
                else
                    gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                talked = 1
                talktimer = 0
            }
        }
        else
        {
            if (global.hp[1] <= 0 && kris_defeat_con < 99)
                kris_defeat_talk = 1
            else
            {
                talked = 1
                talktimer = 0
            }
            if kris_defeat_talk
            {
                if (kris_defeat_con == 0)
                {
                    kris_defeat_con = 1
                    alarm[6] = 30
                    global.typer = berdlytalk
                    gml_Script_msgsetloc(0, "N-Noelle, look!&Kris is down!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_226_0")
                    gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                }
                if (kris_defeat_con == 2 && (!gml_Script_i_ex(867)))
                {
                    kris_defeat_con = 3
                    alarm[6] = 30
                    global.typer = berdlytalk
                    gml_Script_msgsetloc(0, "Now's your chance to&come back over here!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_236_0")
                    gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                }
                if (kris_defeat_con == 4 && (!gml_Script_i_ex(867)))
                {
                    kris_defeat_con = 5
                    alarm[6] = 30
                    global.typer = berdlytalk
                    gml_Script_msgsetloc(0, ".../%", "obj_berdlyb2_enemy_slash_Step_0_gml_247_0")
                    gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                }
                if (kris_defeat_con == 6 && (!gml_Script_i_ex(867)))
                {
                    kris_defeat_con = 7
                    alarm[6] = 30
                    global.typer = berdlytalk
                    gml_Script_msgsetloc(0, "N... Noelle?/%", "obj_berdlyb2_enemy_slash_Step_0_gml_258_0")
                    gml_Script_scr_enemyblcon((x - 10), global.monstery[myself], 10)
                }
                if (kris_defeat_con == 8 && (!gml_Script_i_ex(867)))
                {
                    global.typer = noelletalk
                    gml_Script_msgsetloc(0, "(I can...&still...&hear...&their voice...)/%", "obj_berdlyb2_enemy_slash_Step_0_gml_266_0")
                    gml_Script_scr_heroblcon("noelle")
                    kris_defeat_con = 99
                    talked = 1
                    talktimer = 0
                }
            }
        }
    }
    if summoning
    {
        if (summontimer == 0)
        {
            var _count = (3 - gml_Script_scr_monsterpop())
            repeat _count
            {
                var _newwerewire = gml_Script_scr_monster_add(33, 474)
                with (global.monsterinstance[_newwerewire])
                {
                    skiptext = 1
                    x = (gml_Script_camerax() + 740)
                    y = global.monstermakey[myself]
                    rtimer = 0
                    talkwait = 1
                    gml_Script_scr_move_to_point_over_time(global.monstermakex[myself], global.monstermakey[myself], 20)
                }
            }
        }
        summontimer++
        if (summontimer >= 20)
        {
            talkcon = 1
            summoning = 0
        }
    }
    if (talked == 1 && gml_Script_scr_isphase("enemytalk") && (!summoning))
    {
        talkcon = 1
        rtimer = 0
        if wirewait
        {
            with (obj_werewire_enemy)
                talkwait = 2
            wirewait = 0
        }
        else if (summontimer != 0)
        {
            if gml_Script_i_ex(478)
                summontimer = -1
            else if (summontimer == -1 && (!gml_Script_i_ex(478)))
                summontimer = 0
        }
        else if (!gml_Script_i_ex(62))
            gml_Script_scr_blconskip(-1)
        else
        {
            gml_Script_scr_blconskip(15)
            if (global.mnfight == 2)
                talkmax = default_talkmax
        }
    }
    if (gml_Script_scr_isphase("bullets") && talkcon == 1)
    {
        summontimer = 0
        talkcon = 0
        if (gml_Script_scr_sideb_get_phase() != 0 && global.hp[1] <= 0)
        {
            with (obj_darkener)
                darken = false
            gml_Script_scr_mnendturn()
        }
        else
        {
            difficulty = gml_Script_scr_monsterpop() == 1
            if ((!gml_Script_i_ex(377)) && (!gml_Script_i_ex(628)))
                gml_Script_scr_moveheart()
            if (!gml_Script_i_ex(869))
                gml_Script_instance_create((gml_Script___view_get(0, 0) + 320), (gml_Script___view_get(1, 0) + 170), obj_growtangle)
            if (difficulty == 1 && chosenattack == 0)
                obj_growtangle.target_angle += 45
        }
    }
    if (gml_Script_scr_isphase("bullets") && attacked == false)
    {
        rtimer += 1
        if (rtimer >= 16)
        {
            rtimer = 0
            if (chosenattack == 0)
            {
                global.monsterattackname[myself] = "Tornado"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 8
                dc.difficulty = difficulty
            }
            else if (chosenattack == 1)
            {
                global.monsterattackname[myself] = "SpearBlast"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 9
                dc.difficulty = (sideb_route ? 2 : difficulty)
            }
            else
            {
                global.monsterattackname[myself] = "Chirashi"
                dc = gml_Script_scr_bulletspawner(x, y, 388)
                dc.type = 10
                dc.difficulty = difficulty
            }
            gml_Script_scr_turntimer(260)
            turns += 1
            if ((!sideb_route) && gml_Script_scr_monsterpop() == 1)
                attack_phase = ((attack_phase + 1) % 3)
            global.typer = 6
            global.fc = 0
            rr = choose(0, 1, 2, 3, 4, 5)
            if (rr == 0)
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly thanks Noelle profusely.", "obj_berdlyb2_enemy_slash_Step_0_gml_124_0")
            if (rr == 1)
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly tries to entice Noelle to his side by gyrating his hips!", "obj_berdlyb2_enemy_slash_Step_0_gml_125_0")
            if (rr == 2)
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly preens condescendingly.", "obj_berdlyb2_enemy_slash_Step_0_gml_126_0")
            if (rr == 3)
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly laughs and goes to his mind palace.", "obj_berdlyb2_enemy_slash_Step_0_gml_127_0")
            if (rr == 4)
                global.battlemsg[0] = gml_Script_stringsetloc("* Berdly crushes his Smart Scouter out of frustration.", "obj_berdlyb2_enemy_slash_Step_0_gml_338_0")
            if (rr == 5)
                global.battlemsg[0] = gml_Script_stringsetloc("* Smells like frozen chicken.", "obj_berdlyb2_enemy_slash_Step_0_gml_339_0")
            if (gml_Script_scr_sideb_get_phase() > 0)
                global.battlemsg[0] = gml_Script_stringset(" ")
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
        if (gml_Script_scr_sideb_get_phase() == 0)
            gml_Script_msgsetloc(0, "* BERDLY - He usually only gets this mad when you play games together./%", "obj_berdlyb2_enemy_slash_Step_0_gml_147_0")
        else
            gml_Script_msgsetloc(0, "* Enemy Weakness: ICE&Try your strongest ice spell./%", "obj_berdlyb2_enemy_slash_Step_0_gml_371_0")
        gml_Script_scr_battletext_default()
    }
    if (acting == 2 && actcon == 0)
    {
        kact_count++
        if (!sideb_route)
        {
            mercy_add_amount = 8
            if (kact_count == 1)
            {
                gml_Script_scr_speaker("no_name")
                gml_Script_msgsetloc(0, "* You acted like you were an idiot next to Berdly's genius!/", "obj_berdlyb2_enemy_slash_Step_0_gml_162_0")
                gml_Script_scr_anyface_next("berdly", 0)
                gml_Script_msgnextloc("* Ahh^1, Kris..^1. A shame I must defeat someone so lowly.../%", "obj_berdlyb2_enemy_slash_Step_0_gml_164_0")
            }
            else
            {
                var rand = ((!spill) ? choose(0, 1, 2, 3) : choose(0, 1, 2))
                if (rand == 0)
                {
                    gml_Script_scr_speaker("no_name")
                    gml_Script_msgsetloc(0, "* You did several math problems incorrectly!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_175_0")
                }
                if (rand == 1)
                {
                    gml_Script_scr_speaker("no_name")
                    gml_Script_msgsetloc(0, "* You pretended to knit a home-made dunce cap!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_181_0")
                }
                if (rand == 2)
                {
                    gml_Script_scr_speaker("no_name")
                    gml_Script_msgsetloc(0, "* You grunted like a primitive animal!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_187_0")
                }
                if (rand == 3)
                {
                    spill = 1
                    gml_Script_scr_speaker("no_name")
                    gml_Script_msgsetloc(0, "* You pretended to spill your IQ points on the floor!/", "obj_berdlyb2_enemy_slash_Step_0_gml_194_0")
                    gml_Script_msgnextloc("* You got Noelle to pretend to pick them up!/", "obj_berdlyb2_enemy_slash_Step_0_gml_195_0")
                    gml_Script_scr_anyface_next("noelle", 18)
                    gml_Script_msgnextloc("\\EI* (Why me!?)/%", "obj_berdlyb2_enemy_slash_Step_0_gml_197_0")
                }
            }
            berdly_last_line = gml_Script_stringsetloc("* Berdly liked that!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_201_0")
            actcon = 2
            gml_Script_scr_battletext_default()
        }
        else
        {
            if (kact_count == 1)
            {
                gml_Script_scr_speaker("no_name")
                gml_Script_msgsetloc(0, "* You glared at Berdly!/", "obj_berdlyb2_enemy_slash_Step_0_gml_213_0")
                gml_Script_scr_anyface_next("berdly", 3)
                gml_Script_msgnextloc("\\E3* Wh..^1. what!? Trying to psyche me out^1, Kris!?/", "obj_berdlyb2_enemy_slash_Step_0_gml_215_0")
                gml_Script_msgnextloc("\\ED* W-well..^1. It's not working!!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_216_0")
                berdly_last_line = gml_Script_stringsetloc("* Berdly's DEFENSE dropped!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_218_0")
            }
            else
            {
                gml_Script_scr_speaker("no_name")
                gml_Script_msgsetloc(0, "* You glared at Berdly!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_222_0")
                berdly_last_line = gml_Script_stringsetloc("* His DEFENSE dropped!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_223_0")
            }
            mercy_add_amount = 13
            global.monsterdf[myself] -= 5
            gml_Script_scr_battletext()
            actcon = 2
        }
    }
    if (acting == 3 && actcon == 0)
    {
        nact_count++
        if (!sideb_route)
        {
            mercy_add_amount = 16
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* You encouraged Noelle to use her mind!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_245_0")
            if (nact_count <= 2)
            {
                global.battlemag[1] += 3
                berdly_last_line = gml_Script_stringsetloc("* Her MAGIC increased^1! Berdly found her smarts appealing!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_252_0")
            }
            else
                berdly_last_line = gml_Script_stringsetloc("* Noelle acted smart!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_484_0")
            gml_Script_scr_battletext_default()
            actcon = 2
        }
        else
        {
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* You told Noelle to concentrate!/", "obj_berdlyb2_enemy_slash_Step_0_gml_264_0")
            if (nact_count == 1)
            {
                gml_Script_scr_anyface_next("noelle", "W")
                gml_Script_msgnextloc("\\EW* Concentrate on what...?/", "obj_berdlyb2_enemy_slash_Step_0_gml_269_0")
            }
            if (nact_count <= 10)
            {
                global.battlemag[1] += 3
                gml_Script_scr_anyface_next("no_name", 0)
                gml_Script_msgnextloc("* Her MAGIC increased!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_278_0")
            }
            else
                gml_Script_msgnextloc("* But nothing happened!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_281_0")
            gml_Script_scr_battletext()
            actcon = 1
        }
    }
    if (actingnoe == 1 && actconnoe == 1)
    {
        naction_count++
        mercy_add_amount = 10
        if (!sideb_route)
        {
            if (naction_count == 1)
            {
                gml_Script_scr_speaker("no_name")
                gml_Script_msgsetloc(0, "* Noelle tried to talk to Berdly!/", "obj_berdlyb2_enemy_slash_Step_0_gml_299_0")
                gml_Script_scr_anyface_next("noelle", 18)
                gml_Script_msgnextloc("\\EI* Umm^1, Berdly^1, I'm glad you're trying to help me.../", "obj_berdlyb2_enemy_slash_Step_0_gml_301_0")
                gml_Script_scr_anyface_next("berdly", 19)
                gml_Script_msgnextloc("\\EJ* No need to thank me^1, dearest Noelle!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_303_0")
                gml_Script_scr_battletext()
            }
            berdly_last_line = gml_Script_stringsetloc("* Noelle accidentally complimented Berdly!/%", "obj_berdlyb2_enemy_slash_Step_0_gml_305_0")
        }
        else
        {
            mercy_add_amount = 0
            gml_Script_scr_speaker("no_name")
            gml_Script_msgsetloc(0, "* Noelle tried to talk to Berdly!/", "obj_berdlyb2_enemy_slash_Step_0_gml_299_0")
            berdly_last_line = gml_Script_stringsetloc("* But it failed./%", "obj_berdlyb2_enemy_slash_Step_0_gml_617_0")
        }
        actconnoe = 2
    }
    if ((actcon == 2 || actconnoe == 2) && (!gml_Script_i_ex(62)))
    {
        if (global.mercymod[myself] < global.mercymax[myself])
            gml_Script_scr_mercyadd(myself, mercy_add_amount)
        gml_Script_scr_speaker("no_name")
        gml_Script_msgset(0, berdly_last_line)
        gml_Script_scr_battletext()
        actconnoe = -1
        actcon = 1
    }
    if (actcon == 1 && (!gml_Script_i_ex(62)))
    {
        if (global.mercymod[myself] >= 100)
            gml_Script_scr_wincombat()
        else
            gml_Script_scr_nextact()
    }
    if (actcon == 20 || actconsus == 20 || actconral == 20 || actconnoe == 20)
    {
        if (global.mercymod[myself] >= 100)
            gml_Script_scr_wincombat()
        else if gml_Script_scr_terminate_writer()
        {
            actconsus = -1
            actconral = -1
            actconnoe = -1
            actcon = 1
        }
    }
}
if gml_Script_scr_debug()
{
    if keyboard_check_pressed(ord("B"))
    {
        difficulty = (1 - difficulty)
        if (difficulty == 1)
            gml_Script_scr_debug_print("berdly is PISS")
        else
            gml_Script_scr_debug_print("berdly is not piss")
    }
}
if (global.bmenuno == 99)
{
    if (snowgrave_con == 0)
    {
        snowgrave_con = 2
        snowgrave_timer = 0
        if (global.flag[924] == 0)
        {
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\Ec* S..^1. Snowgrave?/", "obj_berdlyb2_enemy_slash_Step_0_gml_358_0")
            gml_Script_msgnextloc("\\Ee* I..^1. I don't know that spell./", "obj_berdlyb2_enemy_slash_Step_0_gml_359_0")
            gml_Script_scr_anyface_next("none", 0)
            gml_Script_msgnextloc("%%", "obj_berdlyb2_enemy_slash_Step_0_gml_698_0")
        }
        if (global.flag[924] == 1)
        {
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\Ee* I'm telling you^1, I..^1. I.../", "obj_berdlyb2_enemy_slash_Step_0_gml_365_0")
            gml_Script_msgnextloc("\\EW* I don't know what you're talking about./", "obj_berdlyb2_enemy_slash_Step_0_gml_366_0")
            gml_Script_scr_anyface_next("none", 0)
            gml_Script_msgnextloc("%%", "obj_berdlyb2_enemy_slash_Step_0_gml_707_0")
        }
        if (global.flag[924] == 2)
        {
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\EW* I'm telling you^1, stop!/", "obj_berdlyb2_enemy_slash_Step_0_gml_372_0")
            gml_Script_msgnextloc("\\EZ* I... I don't know what you're talking about!/", "obj_berdlyb2_enemy_slash_Step_0_gml_373_0")
            gml_Script_scr_anyface_next("none", 0)
            gml_Script_msgnextloc("%%", "obj_berdlyb2_enemy_slash_Step_0_gml_716_0")
        }
        if (global.flag[924] >= 3)
        {
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\EW* .../", "obj_berdlyb2_enemy_slash_Step_0_gml_722_0")
            gml_Script_msgnextloc("\\EV* Fine^1. You want to see what happens so bad?/", "obj_berdlyb2_enemy_slash_Step_0_gml_379_0")
            gml_Script_msgnextloc("\\Ef* Watch what happens when I cast a spell I don't know!/", "obj_berdlyb2_enemy_slash_Step_0_gml_380_0")
            gml_Script_scr_anyface_next("none", 0)
            gml_Script_msgnextloc("%%", "obj_berdlyb2_enemy_slash_Step_0_gml_726_0")
        }
        global.flag[924] += 1
        with (obj_writer)
            instance_destroy()
        gml_Script_scr_battletext()
    }
    if (snowgrave_con == 2 && (!gml_Script_i_ex(62)))
    {
        snowgrave_timer++
        if (snowgrave_timer >= 10)
        {
            snowgrave_timer = 0
            snowgrave_con = 0
            global.bmenuno = 2
        }
    }
}
if (sidebcon > 0)
{
    if (sidebcon == 1)
    {
        sidebcon = 2
        alarm[5] = 30
    }
    if (sidebcon == 3)
    {
        with (obj_spellphase)
        {
            with (spellwriter)
                instance_destroy()
            instance_destroy()
        }
        sidebcon = 4
        alarm[5] = 150
    }
    if (sidebcon == 5)
    {
        gml_Script_scr_speaker("noelle")
        global.fc = 0
        gml_Script_msgsetloc(0, "* .../%", "obj_berdlyb2_enemy_slash_Step_0_gml_429_0")
        gml_Script_scr_battletext()
        sidebcon = 6
    }
    if (sidebcon == 6 && (!gml_Script_i_ex(62)))
    {
        with (fn)
            gml_Script_scr_flip("h")
        fb.image_alpha = 0.9
        sidebcon = 7
        gml_Script_msgsetloc(0, "* What.../", "obj_berdlyb2_enemy_slash_Step_0_gml_441_0")
        gml_Script_msgnextloc("* What happened?/", "obj_berdlyb2_enemy_slash_Step_0_gml_442_0")
        gml_Script_msgnextloc("* There was so much snow^1, I couldn't see anything.../", "obj_berdlyb2_enemy_slash_Step_0_gml_443_0")
        gml_Script_msgnextloc("* I.../%", "obj_berdlyb2_enemy_slash_Step_0_gml_444_0")
        gml_Script_scr_battletext()
    }
    if (sidebcon == 7 && (!gml_Script_i_ex(62)))
    {
        with (fn)
            gml_Script_scr_flip("h")
        fn.sprite_index = spr_noelle_walk_up_dw
        fn.image_speed = 0
        sidebcon = 8
        fntimer = 0
        alarm[5] = 120
    }
    if (sidebcon == 9)
    {
        sidebcon = 15
        gml_Script_msgsetloc(0, "* I don't feel so good./", "obj_berdlyb2_enemy_slash_Step_0_gml_463_0")
        gml_Script_msgnextloc("* I think/", "obj_berdlyb2_enemy_slash_Step_0_gml_464_0")
        gml_Script_msgnextloc("* I'm going to go home./%", "obj_berdlyb2_enemy_slash_Step_0_gml_465_0")
        gml_Script_scr_battletext()
    }
    if (sidebcon == 15 && (!gml_Script_i_ex(62)))
    {
        sidebcon = 29
        alarm[5] = 320
        fn.image_speed = 0.1
        fn.vspeed = -1
    }
    if (sidebcon == 29)
    {
        fntimer++
        fn.x += (sin((fntimer / 2)) * 0.7)
    }
    if (sidebcon == 30 && (!gml_Script_i_ex(62)))
    {
        global.flag[38] = 1
        global.specialbattle = 1
        global.monstergold[3] = 0
        global.monsterexp[3] = 0
        berdlysign = gml_Script_instance_create(607, 97, obj_npc_sign)
        berdlysign.sprite_index = spr_berdly_ice
        with (fn)
            instance_destroy()
        with (fb)
            instance_destroy()
        gml_Script_scr_losechar()
        with (obj_caterpillarchara)
            instance_destroy()
        sidebcon = 11
        global.flag[915] = 6
        gml_Script_scr_wincombat()
    }
}
