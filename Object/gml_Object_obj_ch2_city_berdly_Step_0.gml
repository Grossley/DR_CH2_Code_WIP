if (con == 0.5)
    con = 0.7
if (obj_mainchara.x >= 310 && con == -1)
{
    global.interact = 1
    global.facing = 1
    con = 0.5
}
if (con == 0.7)
{
    con = (gml_Script_scr_sideb_get_phase() == 0 ? 1 : 10)
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    be = (actor_count + 1)
    be_actor = gml_Script_instance_create(660, 145, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_right_dw
    if (con == 10)
        no_actor.sprite_index = spr_noelle_walk_right_dw
}
if (con == 1)
{
    con = 2
    alarm[0] = 30
    if (!shortened)
    {
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\EB* Uh-uh oh--/%", "obj_ch2_city_berdly_slash_Step_0_gml_28_0")
        gml_Script_c_talk_wait()
    }
    gml_Script_c_mus2("volume", 0, 30)
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed_wait(6, 0, 25)
    gml_Script_c_sel(be)
    gml_Script_c_facing("l")
    gml_Script_c_wait(15)
    gml_Script_c_emote("!", 30, 30)
    gml_Script_c_sprite(691)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(716)
    if shortened
    {
        gml_Script_c_wait(30)
        gml_Script_c_waitcustom()
    }
    else
    {
        gml_Script_c_mus2("initloop", "berdly_theme.ogg", 0)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\EN* Noelle!? What are you doing with Kris!?/", "obj_ch2_city_berdly_slash_Step_0_gml_49_0")
        gml_Script_c_facenext("noelle", "2")
        gml_Script_c_msgnextloc("\\E2* Um^1, I..^1. um..^1. I..^1. I.../%", "obj_ch2_city_berdly_slash_Step_0_gml_51_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_facing("r")
        gml_Script_c_sel(be)
        gml_Script_c_facing("l")
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\ER* We..^1. have a truce...?/%", "obj_ch2_city_berdly_slash_Step_0_gml_63_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(be)
        gml_Script_c_sprite(691)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E3* A..^1. truce!? With..^1. Kris?/%", "obj_ch2_city_berdly_slash_Step_0_gml_71_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(be)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(694)
        gml_Script_c_imagespeed(0.1)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E2* Hahaha!^1! That's impossible!/%", "obj_ch2_city_berdly_slash_Step_0_gml_81_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(683)
        gml_Script_c_arg_objectxy(be_actor, -4, 2)
        gml_Script_c_setxy(x, y)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E5* That would be double trucies./%", "obj_ch2_city_berdly_slash_Step_0_gml_90_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_sprite(716)
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E2* Huh?/%", "obj_ch2_city_berdly_slash_Step_0_gml_98_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(be)
        gml_Script_c_autowalk(1)
        gml_Script_c_arg_objectxy(be_actor, 4, -2)
        gml_Script_c_setxy(x, y)
        gml_Script_c_walk("l", 4, 20)
        gml_Script_c_panspeed_wait(-4, 0, 6)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\EF* Worry not^1, my dearest Noelle./", "obj_ch2_city_berdly_slash_Step_0_gml_113_0")
        gml_Script_c_msgnextloc("\\E5* I know what you really want to say./%", "obj_ch2_city_berdly_slash_Step_0_gml_114_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_facing("r")
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E2* You...^1. you do?/%", "obj_ch2_city_berdly_slash_Step_0_gml_122_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(be)
        gml_Script_c_facing("u")
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E0* Going along with all this.../", "obj_ch2_city_berdly_slash_Step_0_gml_130_0")
        gml_Script_c_msgnextloc("\\E8* You feel..^1. forced^1, don't you?/", "obj_ch2_city_berdly_slash_Step_0_gml_131_0")
        gml_Script_c_msgnextloc("\\EG* It's why you're not with Queen right now./%", "obj_ch2_city_berdly_slash_Step_0_gml_132_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_sprite(738)
        gml_Script_c_halt()
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E2* Berdly..^1. you get it?/%", "obj_ch2_city_berdly_slash_Step_0_gml_141_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(be)
        gml_Script_c_walk_wait("l", 4, 10)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E5* Yes!^1! I do!!/%", "obj_ch2_city_berdly_slash_Step_0_gml_149_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_sprite(716)
        gml_Script_c_sel(be)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(683)
        gml_Script_c_imagespeed(0.1)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E6* Kris is FORCING you to be on THEIR side!!/", "obj_ch2_city_berdly_slash_Step_0_gml_163_0")
        gml_Script_c_msgnextloc("\\E2* Kidnapper!^1! Kris^1, our truce..^1. is OVER!!!/%", "obj_ch2_city_berdly_slash_Step_0_gml_164_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(664)
        gml_Script_c_arg_objectxy(be_actor, -64, -24)
        gml_Script_c_setxy(x, y)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_wait(5)
        gml_Script_c_soundplay(139)
        gml_Script_c_wait(30)
        gml_Script_c_sprite(1844)
        gml_Script_c_arg_objectxy(be_actor, 15, 24)
        gml_Script_c_setxy(x, y)
        gml_Script_c_wait(5)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E6* Noelle!^1! This may hurt^1, but it's to help you!!/", "obj_ch2_city_berdly_slash_Step_0_gml_179_0")
        gml_Script_c_facenext("noelle", "E")
        gml_Script_c_msgnextloc("\\EE* W-wait^1, just listen to me---!!!/%", "obj_ch2_city_berdly_slash_Step_0_gml_181_0")
        gml_Script_c_talk_wait()
        gml_Script_c_waitcustom()
    }
}
if (con == 10)
{
    gml_Script_scr_spellget(4, 10)
    global.flag[923] = 1
    if (global.charweapon[4] == 13)
        global.flag[923] = 0
    con = 99
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed_wait(6, 0, 25)
    gml_Script_c_sel(no)
    gml_Script_c_sel(be)
    gml_Script_c_facing("l")
    gml_Script_c_wait(15)
    gml_Script_c_emote("!", 30)
    gml_Script_c_sprite(669)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E5* Noelle^1! There you are!/", "obj_ch2_city_berdly_slash_Step_0_gml_234_0")
    gml_Script_c_msgnextloc("\\E4* Just in time^1! We can both go back to Queen and--/%", "obj_ch2_city_berdly_slash_Step_0_gml_235_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_autowalk(1)
    gml_Script_c_walk_wait("l", 4, 12)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E5* .../", "obj_ch2_city_berdly_slash_Step_0_gml_221_0")
    gml_Script_c_msgnextloc("\\E3* Noelle?/", "obj_ch2_city_berdly_slash_Step_0_gml_222_0")
    gml_Script_c_facenext("noelle", "e")
    gml_Script_c_msgnextloc("\\Ee* Kris^1, it looks like another enemy./", "obj_ch2_city_berdly_slash_Step_0_gml_251_0")
    gml_Script_c_msgnextloc("\\Ed* Should I freeze them?/", "obj_ch2_city_berdly_slash_Step_0_gml_252_0")
    gml_Script_c_facenext("berdly", 23)
    gml_Script_c_msgnextloc("\\EN* N..^1. Noelle?/", "obj_ch2_city_berdly_slash_Step_0_gml_254_0")
    gml_Script_c_msgnextloc("\\EN* Noelle^1, it's me^1, don't you recognize me!?/%", "obj_ch2_city_berdly_slash_Step_0_gml_255_0_b")
    gml_Script_c_talk()
    gml_Script_c_wait_box(2)
    gml_Script_c_sprite(672)
    gml_Script_c_wait_talk()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(732)
    gml_Script_c_emote("!", 30)
    gml_Script_c_wait(60)
    gml_Script_c_mus("free")
    gml_Script_c_wait(1)
    gml_Script_c_mus2("initloop", "d.ogg", 0)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EB* ...!?!?/", "obj_ch2_city_berdly_slash_Step_0_gml_268_0")
    gml_Script_c_msgnextloc("\\EB* B..^1. Berdly!?/", "obj_ch2_city_berdly_slash_Step_0_gml_269_0")
    gml_Script_c_facenext("berdly", 23)
    gml_Script_c_msgnextloc("\\EN* Noelle^1, are you okay...?/", "obj_ch2_city_berdly_slash_Step_0_gml_271_0")
    gml_Script_c_msgnextloc("\\EN* What..^1. what are you doing with Kris?/%", "obj_ch2_city_berdly_slash_Step_0_gml_272_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_wait(60)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\ED* I'm just, we're just.../", "obj_ch2_city_berdly_slash_Step_0_gml_283_0")
    gml_Script_c_msgnextloc("\\Ee* .../", "obj_ch2_city_berdly_slash_Step_0_gml_279_0")
    gml_Script_c_msgnextloc("\\EZ* Getting..^1. stronger./%", "obj_ch2_city_berdly_slash_Step_0_gml_280_0")
    gml_Script_c_talk_wait()
    gml_Script_c_msc(1175)
    gml_Script_c_talk_wait()
}
if (con == 12 && (!gml_Script_d_ex()))
{
    con = 2
    alarm[0] = 30
    gml_Script_c_sel(be)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EN* Wh..^1. what? Proceed..^1. where?/", "obj_ch2_city_berdly_slash_Step_0_gml_285_0")
    gml_Script_c_msgnextloc("\\EN* Noelle^1, what are they talking about!?/", "obj_ch2_city_berdly_slash_Step_0_gml_286_0")
    gml_Script_c_facenext("noelle", "Z")
    gml_Script_c_msgnextloc("\\EZ* .../", "obj_ch2_city_berdly_slash_Step_0_gml_302_0")
    gml_Script_c_facenext("berdly", "9")
    gml_Script_c_msgnextloc("\\E9* Th-that's it^1, Kris^1! I don't know what you're doing.../", "obj_ch2_city_berdly_slash_Step_0_gml_304_0")
    gml_Script_c_msgnextloc("\\EA* But if you're hurting my friend Noelle.../%", "obj_ch2_city_berdly_slash_Step_0_gml_305_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(664)
    gml_Script_c_arg_objectxy(be_actor, -64, -24)
    gml_Script_c_setxy(x, y)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_wait(5)
    gml_Script_c_soundplay(139)
    gml_Script_c_wait(30)
    gml_Script_c_imagespeed(0)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EB* Then I have no choice but to stop you by force!/%", "obj_ch2_city_berdly_slash_Step_0_gml_318_0")
    gml_Script_c_talk_wait()
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_wait(5)
    gml_Script_c_sprite(1844)
    gml_Script_c_arg_objectxy(be_actor, 15, 24)
    gml_Script_c_setxy(x, y)
    gml_Script_c_wait(5)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\EA* Kris^1, ready yourself!!/%", "obj_ch2_city_berdly_slash_Step_0_gml_315_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(732)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EX* W-wait^1, Berdly^1, stop!/", "obj_ch2_city_berdly_slash_Step_0_gml_338_0")
    gml_Script_c_msgnextloc("\\EY* Run away!/%", "obj_ch2_city_berdly_slash_Step_0_gml_339_0")
    gml_Script_c_talk_wait()
    gml_Script_c_pannable(1)
    gml_Script_c_mus("free")
    gml_Script_c_wait(1)
    gml_Script_c_waitcustom()
}
if (con == 14 && (!gml_Script_d_ex()))
{
    con = 2
    alarm[0] = 30
    global.spell[4][3] = 0
    if (global.flag[915] > 0)
        gml_Script_scr_sideb_fail()
    gml_Script_c_mus("free")
    gml_Script_c_sel(be)
    gml_Script_c_sprite(691)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E3* From..^1. me!?/%", "obj_ch2_city_berdly_slash_Step_0_gml_345_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_facing("d")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E2* (Th..^1. that's right^1, what was I thinking just now?)/", "obj_ch2_city_berdly_slash_Step_0_gml_353_0")
    gml_Script_c_msgnextloc("\\E6* (That's right..^1. Kris is my friend^1, right?)/%", "obj_ch2_city_berdly_slash_Step_0_gml_354_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(be)
    gml_Script_c_sprite(697)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E5* What absurdity!!^1! Kris!!/", "obj_ch2_city_berdly_slash_Step_0_gml_362_0")
    gml_Script_c_msgnextloc("\\E7* Did you leave your IQ points at home!?/", "obj_ch2_city_berdly_slash_Step_0_gml_363_0")
    gml_Script_c_msgnextloc("\\E6* Noelle is only going to be protected BY ME!/%", "obj_ch2_city_berdly_slash_Step_0_gml_364_0")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(664)
    gml_Script_c_arg_objectxy(be_actor, -64, -24)
    gml_Script_c_setxy(x, y)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_wait(5)
    gml_Script_c_soundplay(139)
    gml_Script_c_wait(30)
    gml_Script_c_sprite(1844)
    gml_Script_c_arg_objectxy(be_actor, 15, 24)
    gml_Script_c_setxy(x, y)
    gml_Script_c_wait(5)
    gml_Script_c_speaker("berdly")
    gml_Script_c_msgsetloc(0, "\\E7* And I'll FIGHT HER to PROVE IT!/%", "obj_ch2_city_berdly_slash_Step_0_gml_380_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(no)
    gml_Script_c_sprite(716)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EE* W-wait^1, just listen to me---!!!/%", "obj_ch2_city_berdly_slash_Step_0_gml_388_0")
    gml_Script_c_talk_wait()
    gml_Script_c_waitcustom()
}
if (con == 3 && (!gml_Script_d_ex()) && customcon == 1)
{
    con = 4
    alarm[0] = 30
    if (global.tempflag[30] == 0)
        global.tempflag[30] = 1
    var berdly_marker = gml_Script_scr_dark_marker(be_actor.x, be_actor.y, be_actor.sprite_index)
    berdly_marker.image_index = be_actor.image_index
    berdly_marker.image_speed = be_actor.image_speed
    global.flag[9] = 2
    if (gml_Script_scr_sideb_get_phase() == 2)
        global.batmusic[0] = gml_Script_snd_init("berdly_battle_heartbeat_true.ogg")
    else
        global.batmusic[0] = gml_Script_snd_init("berdly_chase.ogg")
    encounterflag = 550
    global.flag[54] = encounterflag
    gml_Script_scr_battle(82, 1, berdly_marker, 0, 0)
    global.flag[9] = 1
    with (obj_actor)
        visible = false
}
if (con == 5 && gml_Script_i_ex(355))
{
    var battle_end = 0
    with (obj_battlecontroller)
    {
        if (intro == 2)
            battle_end = 1
    }
    if battle_end
    {
        con = 6
        alarm[0] = 30
        gml_Script_snd_volume(global.batmusic[1], 0, 25)
    }
}
if (con == 7)
{
    con = 8
    alarm[0] = 30
    if gml_Script_i_ex(865)
    {
        with (obj_battleback)
            destroy = 1
    }
    var used_snowgrave = gml_Script_i_ex(103)
    if (!used_snowgrave)
    {
        obj_mainchara.x = obj_herokris.x
        obj_mainchara.y = obj_herokris.y
        kr_actor.x = obj_herokris.x
        kr_actor.y = obj_herokris.y
        kr_actor.sprite_index = obj_herokris.sprite_index
        no_actor.x = obj_heronoelle.x
        no_actor.y = obj_heronoelle.y
        no_actor.sprite_index = obj_heronoelle.sprite_index
        be_actor.x = (obj_berdlyb2_enemy.x + obj_berdlyb2_enemy.shakex)
        be_actor.y = obj_berdlyb2_enemy.y
        be_actor.sprite_index = spr_berdly_hurt_kneel_battle
        gml_Script_snd_free(global.batmusic[0])
        gml_Script_snd_volume(global.currentsong[1], 0, 0)
        gml_Script_snd_resume(global.currentsong[1])
        gml_Script_snd_volume(global.currentsong[1], 1, 20)
    }
    else
    {
        gml_Script_scr_losechar()
        if gml_Script_i_ex(north_collider)
        {
            with (north_collider)
                instance_destroy()
        }
        dogcone2.x -= 30
        dogcone2.y += 35
        dogcone1.x += 67
        dogcone1.y += 47
        dogcone1.image_angle -= 90
        global.flag[349] = 1
        global.flag[38] = 0
        obj_mainchara.x = 310
        obj_mainchara.y = 140
        gml_Script_instance_create(86, 80, obj_cone)
        gml_Script_instance_create(126, 80, obj_cone)
        gml_Script_instance_create(880, 104, obj_cone)
        gml_Script_instance_create(880, 136, obj_cone)
        gml_Script_instance_create(880, 168, obj_cone)
        gml_Script_instance_create(880, 200, obj_cone)
        kr_actor.x = obj_mainchara.x
        kr_actor.y = obj_mainchara.y
        with (obj_actor)
        {
            if (name != "kris")
                instance_destroy()
        }
        draw_set_alpha(1)
    }
    with (obj_actor)
        visible = true
    if gml_Script_i_ex(390)
    {
        with (obj_monsterparent)
            instance_destroy()
    }
    if gml_Script_i_ex(358)
    {
        with (obj_bulletparent)
            instance_destroy()
    }
    if gml_Script_i_ex(369)
    {
        with (obj_heroparent)
            instance_destroy()
    }
    if gml_Script_i_ex(355)
        instance_destroy(obj_battlecontroller)
}
if (con == 9 && (!gml_Script_i_ex(355)))
{
    if (global.flag[349] == 1)
        con = 30
    else
    {
        con = ((gml_Script_scr_sideb_get_phase() == 0 || global.flag[916] == 1) ? 49 : 19)
        alarm[0] = 30
        gml_Script_c_waitcustom_end()
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\EC* D-damn it!/%", "obj_ch2_city_berdly_slash_Step_0_gml_527_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_sprite(738)
        gml_Script_c_halt()
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E2* Berdly^1, are you okay...?/", "obj_ch2_city_berdly_slash_Step_0_gml_536_0")
        gml_Script_c_msgnextloc("\\E3* Kris^1, maybe we should have gone easier on him.../%", "obj_ch2_city_berdly_slash_Step_0_gml_537_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_facing("r")
        gml_Script_c_sel(be)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(694)
        gml_Script_c_arg_objectxy(be_actor, 50, 0)
        gml_Script_c_setxy(x, y)
        gml_Script_c_imagespeed(0.15)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\E6* Go easier!? Ha^1! Haha^1! Hahaha!/", "obj_ch2_city_berdly_slash_Step_0_gml_550_0")
        gml_Script_c_msgnextloc("\\ED* The only one going easy mode^1, was me!/%", "obj_ch2_city_berdly_slash_Step_0_gml_551_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(no)
        gml_Script_c_sprite(738)
        gml_Script_c_halt()
        gml_Script_c_sel(be)
        gml_Script_c_halt()
        gml_Script_c_speaker("noelle")
        gml_Script_c_msgsetloc(0, "\\E2* You look..^1. Exhausted./%", "obj_ch2_city_berdly_slash_Step_0_gml_563_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(683)
        gml_Script_c_arg_objectxy(be_actor, -4, 2)
        gml_Script_c_setxy(x, y)
        gml_Script_c_imagespeed(0.1)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\ED* I'm only tired of HOLDING BACK MY TRUE POWER!/%", "obj_ch2_city_berdly_slash_Step_0_gml_573_0")
        gml_Script_c_talk_wait()
        gml_Script_c_autowalk(1)
        gml_Script_c_arg_objectxy(be_actor, 4, 2)
        gml_Script_c_setxy(x, y)
        gml_Script_c_walk_wait("r", 6, 6)
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\EE* Ah^1, Noelle. It'd be too simple to save you now./", "obj_ch2_city_berdly_slash_Step_0_gml_583_0")
        gml_Script_c_msgnextloc("\\E7* Kris^1! Go ahead and train your strength values./", "obj_ch2_city_berdly_slash_Step_0_gml_584_0")
        gml_Script_c_msgnextloc("\\E1* Try hard^1, and maybe someday you'll be a worthy rival./%", "obj_ch2_city_berdly_slash_Step_0_gml_585_0")
        gml_Script_c_talk_wait()
        gml_Script_c_facing("u")
        gml_Script_c_speaker("berdly")
        gml_Script_c_msgsetloc(0, "\\EE* Heh^1! Sometimes I can't believe how cool I am.../%", "obj_ch2_city_berdly_slash_Step_0_gml_592_0")
        gml_Script_c_talk_wait()
        gml_Script_c_walk_wait("r", 12, 40)
        gml_Script_c_mus2("volume", 0, 30)
        gml_Script_c_panobj(kr_actor, 30)
        gml_Script_c_wait(31)
        gml_Script_c_pannable(0)
        if (gml_Script_scr_sideb_get_phase() == 0 || global.flag[916] == 1)
        {
            if (global.hp[4] < global.maxhp[4])
            {
                gml_Script_c_speaker("noelle")
                gml_Script_c_msgsetloc(0, "\\EH* (He hit me in the face with a tornado...)/%", "obj_ch2_city_berdly_slash_Step_0_gml_612_0")
                gml_Script_c_talk_wait()
            }
            else
            {
                gml_Script_c_speaker("noelle")
                gml_Script_c_msgsetloc(0, "\\E4* (If he would just listen to me...)/%", "obj_ch2_city_berdly_slash_Step_0_gml_619_0")
                gml_Script_c_talk_wait()
            }
        }
    }
}
if (con == 20)
{
    con = 49
    alarm[0] = 30
    gml_Script_c_sel(no)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\E3* .../", "obj_ch2_city_berdly_slash_Step_0_gml_636_0")
    gml_Script_c_msgnextloc("\\E2* Kris...?/", "obj_ch2_city_berdly_slash_Step_0_gml_637_0")
    gml_Script_c_msgnextloc("\\E3* .../", "obj_ch2_city_berdly_slash_Step_0_gml_638_0")
    gml_Script_c_msgnextloc("\\E2* Umm^1, about just now.../", "obj_ch2_city_berdly_slash_Step_0_gml_639_0")
    gml_Script_c_msgnextloc("\\E3* .../", "obj_ch2_city_berdly_slash_Step_0_gml_640_0")
    gml_Script_c_msgnextloc("\\E5* (Seems like whatever was happening.)/", "obj_ch2_city_berdly_slash_Step_0_gml_641_0")
    gml_Script_c_msgnextloc("\\E8* (They snapped themselves out of it...)/", "obj_ch2_city_berdly_slash_Step_0_gml_642_0")
    gml_Script_c_msgnextloc("\\Ee* (Proceed...)/", "obj_ch2_city_berdly_slash_Step_0_gml_643_0")
    gml_Script_c_msgnextloc("\\Ec* (Why..^1. did they keep saying that...?)/", "obj_ch2_city_berdly_slash_Step_0_gml_644_0")
    gml_Script_c_msgnextloc("\\E4* ..^1. w-wait^1, I get it!/", "obj_ch2_city_berdly_slash_Step_0_gml_645_0")
    gml_Script_c_msgnextloc("\\ES* You were just trying to make Berdly mad^1, weren't you!?/", "obj_ch2_city_berdly_slash_Step_0_gml_646_0")
    gml_Script_c_msgnextloc("\\EQ* Come on^1, that's not nice^1, Kris./", "obj_ch2_city_berdly_slash_Step_0_gml_647_0")
    gml_Script_c_msgnextloc("\\ER* ..^1. Though^1, it's not like I don't understand the feeling./", "obj_ch2_city_berdly_slash_Step_0_gml_648_0")
    gml_Script_c_msgnextloc("\\ES* Fahahaha./", "obj_ch2_city_berdly_slash_Step_0_gml_649_0")
    gml_Script_c_msgnextloc("\\E8* I guess we both kind of got carried away...!/", "obj_ch2_city_berdly_slash_Step_0_gml_650_0")
    gml_Script_c_msgnextloc("\\E8* .../", "obj_ch2_city_berdly_slash_Step_0_gml_651_0")
    gml_Script_c_msgnextloc("\\Ed* (Really though^1, what..^1. was I thinking?)/%", "obj_ch2_city_berdly_slash_Step_0_gml_652_0")
    gml_Script_c_talk_wait()
}
if (con == 30)
{
    con = 49
    alarm[0] = 30
    gml_Script_c_waitcustom_end()
    gml_Script_c_pannable(1)
    gml_Script_c_panobj(kr_actor, 20)
    gml_Script_c_wait(30)
    gml_Script_c_pannable(0)
}
if (con == 50 && (!gml_Script_d_ex()))
{
    con = 60
    gml_Script_c_actortokris()
    if gml_Script_scr_havechar(4)
        gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 60 && (!gml_Script_i_ex(895)))
{
    con = 99
    global.plot = 79
    global.interact = 0
    global.facing = 0
    if (!gml_Script_i_ex(103))
    {
        if (global.flag[915] > 0)
            gml_Script_scr_sideb_fail()
        savepoint = gml_Script_instance_create(460, 100, obj_savepoint)
    }
    else
        savepoint = gml_Script_instance_create(386, 97, obj_savepoint)
    with (savepoint)
        gml_Script_scr_depth()
    gml_Script_snd_free_all()
    gml_Script_scr_tempsave()
    instance_destroy()
}
