if (con == 1 && obj_mainchara.x >= 540)
{
    con = 99
    global.interact = 1
}
if (con == 99 && obj_mainchara.x >= 540)
{
    global.interact = 1
    global.facing = 2
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    kr_actor.sprite_index = spr_krisr_dark
    su_actor.sprite_index = spr_susie_walk_right_dw
    no = (actor_count + 1)
    no_actor = gml_Script_instance_create(950, 208, obj_actor)
    gml_Script_scr_actor_setup(no, no_actor, "noelle")
    no_actor.sprite_index = spr_noelle_kneel
    specialsprite[5] = no_actor
    specialsprite[6] = no_actor
    qu = (actor_count + 2)
    qu_actor = gml_Script_instance_create(725, 273, obj_actor_queenchair)
    gml_Script_scr_actor_setup_nofacing(qu, qu_actor, "queen")
    qu_actor.visible = false
    qu_actor.shadow = 0
    qu_actor.auto_depth = 0
    qu_actor.depth = 1000300
    var _temp_local_var_3 = qu_actor
    var _temp_local_var_4 = 716
    var _temp_local_var_5 = 713
    fakeshadow.visible = false
}
if (screencon == 1)
{
    with (obj_queenscreen)
        dismiss = 1
    screencon = 2
}
if (susieattackcon == 1)
{
    if (su_actor.image_index == 1)
        gml_Script_snd_play(174)
}
if (customcon == 1 && con == 2)
{
    ca_actor.depth = 5000
    ca_actor.hspeed = -8
    if (ca_actor.x <= (no_actor.x - 12))
    {
        ca_actor.x = (no_actor.x - 16)
        var _temp_local_var_9 = ca_actor
        hspeed = 0
        con = 1
    }
}
if (customcon == 2 && con == 2)
{
    customtimer++
    if (customtimer == 14)
    {
        var _temp_local_var_11 = su_actor
        sprite_index = spr_susie_shock_r
    }
    if (customtimer == 49)
    {
        gml_Script_snd_play(46)
        var _temp_local_var_13 = ca_actor
        gravity = -1
    }
}
if (funcon == 1)
{
    global.encounterno = 53
    gml_Script_scr_encountersetup(global.encounterno)
    funcon = 2
}
if (wirecon == 1)
{
    with (obj_marker)
    {
        if (sprite_index == spr_plugboy_cower)
            sprite_index = spr_plugboy_shock
        if (sprite_index == spr_plugboy_plug)
            sprite_index = spr_werewire_plug_vertical
        image_index = 1
    }
    wire1_actor.x = (npc1_actor.x + 20)
    wire1_actor.y = (npc1_actor.y - 300)
    wire2_actor.x = (npc2_actor.x + 20)
    wire2_actor.y = (npc2_actor.y - 300)
    var _temp_local_var_15 = wire1_actor
    gravity = 1
    depth = -400
}
if (wirecon == 2)
{
    if (wire1_actor.y >= (npc1_actor.y + 10))
    {
        wire1_actor.gravity = 0
        wire1_actor.vspeed = 0
        wire2_actor.gravity = 0
        wire2_actor.vspeed = 0
        wire1_actor.y = (npc1_actor.y + 20)
        wire2_actor.y = (npc2_actor.y + 20)
        gml_Script_snd_play(60)
        var _temp_local_var_17 = npc1_actor
        gml_Script_scr_shakeobj()
    }
}
if (wirecon == 3)
{
    wiretimer++
    if (wiretimer >= 8)
    {
        with (obj_marker)
            gravity = -2
        wirecon = 4
        wiretimer = 0
    }
}
if (wirecon == 4)
{
    if (wire1_actor.y <= -140)
    {
        with (obj_marker)
        {
            vspeed = 0
            gravity = 0
            if (sprite_index == spr_werewire_plug_vertical)
                sprite_index = spr_plugboy_plug
            if (sprite_index == spr_plugboy_shock)
                sprite_index = spr_plugboy_transform
        }
        wirecon = 5
        wiretimer = 0
    }
}
if (wirecon == 5)
{
    wiretimer++
    if (wiretimer == 70)
    {
        gml_Script_snd_play(219)
        wiretimer = 0
        wirecon++
    }
}
if (con == 2 && (!instance_exists(obj_cutscene_master)))
{
    global.specialbattle = 3
    global.flag[9] = 1
    global.batmusic[0] = gml_Script_snd_init("battle.ogg")
    gml_Script_instance_create(0, 0, obj_battleback)
    gml_Script_instance_create(0, 0, obj_encounterbasic)
    encounterflag = 552
    global.flag[54] = encounterflag
    global.encounterno = 53
    gml_Script_scr_encountersetup(global.encounterno)
    with (obj_actor)
    {
        if (name == "queen")
        {
            sprite_index = spr_queen_chair_ohoho_1
            hspeed = 6
        }
    }
    var _temp_local_var_20 = npc1_actor
    depth = -100
    gml_Script_scr_move_to_point_over_time((global.monstermakex[0] - 2), (global.monstermakey[0] - 34), 15)
    depth += 20
}
if (con == 4)
{
    with (obj_actor)
        instance_destroy()
    with (obj_marker)
        instance_destroy()
    con = 5
    alarm[4] = 30
}
if (con == 6 && (!instance_exists(obj_battlecontroller)))
{
    global.interact = 1
    con = 8.5
    alarm[4] = 30
    obj_mainchara.cutscene = true
    obj_mainchara.x = 707
    obj_mainchara.y = 194
    obj_caterpillarchara.x = 814
    obj_caterpillarchara.y = 176
    gml_Script_camerax_set(620)
    gml_Script_scr_losechar()
    gml_Script_scr_getchar(2)
    gml_Script_scr_getchar(3)
    global.cinstance[1] = gml_Script_scr_makecaterpillar(540, 180, 3, 1)
}
if (con == 9.5)
{
    con = 9.6
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    kr_actor.sprite_index = spr_krisr_dark
    su_actor.sprite_index = spr_susie_walk_left_dw
    ra_actor.sprite_index = spr_ralsei_walk_right
}
if (con == 9.6 || gml_Script_scr_cutscene_loaded())
{
    con = 10
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E9* Phew^1, nice fighting again after so long!/%", "obj_ch2_scene9_slash_Step_0_gml_639_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Now let's go catch up to Queen!/%", "obj_ch2_scene9_slash_Step_0_gml_645_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "wirecon", 10)
    gml_Script_c_wait(30)
    gml_Script_c_sprite(996)
    gml_Script_c_shakeobj()
    gml_Script_c_wait(30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EZ* ..^1. or not!/%", "obj_ch2_scene9_slash_Step_0_gml_657_0")
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "wirecon", 15)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E6* Huh? They calmed down...?/%", "obj_ch2_scene9_slash_Step_0_gml_663_0")
    gml_Script_c_facing("r")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("l")
    gml_Script_c_sel(kr)
    gml_Script_c_facing("l")
    gml_Script_c_sel(ra)
    gml_Script_c_panspeed(-8, 0, 25)
    gml_Script_c_walk_wait("r", 3, 20)
    gml_Script_c_wait(10)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\EH* I just used my PACIFY spell to put them into \"Sleep Mode\"!/", "obj_ch2_scene9_slash_Step_0_gml_675_0")
    gml_Script_c_facenext("susie", 7)
    gml_Script_c_msgnextloc("\\E7* Ralsei! You're here!/%", "obj_ch2_scene9_slash_Step_0_gml_677_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(0)
    gml_Script_c_specialsprite(0)
    gml_Script_c_autofacing(0)
    gml_Script_c_sel(kr)
    gml_Script_c_walk("u", 4, 10)
    gml_Script_c_sel(ra)
    gml_Script_c_walk("r", 4, 15)
    gml_Script_c_sel(1)
    gml_Script_c_walk_wait("l", 8, 9)
    gml_Script_c_wait(15)
    gml_Script_c_sel(ra)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E0* I felt a dark presence and hurried over!/%", "obj_ch2_scene9_slash_Step_0_gml_692_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_msgsetloc(0, "\\E9* It seems that a new Dark Fountain has appeared.../%", "obj_ch2_scene9_slash_Step_0_gml_695_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_sel(su)
    gml_Script_c_facing("susieunhappy")
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\ER* Ralsei..^1. they got Noelle!/%", "obj_ch2_scene9_slash_Step_0_gml_704_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(45)
    gml_Script_c_shakeobj()
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EN* Damn^1, what was she THINKING messing in our Dark World!?/%", "obj_ch2_scene9_slash_Step_0_gml_710_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_wait(5)
    gml_Script_c_msgsetloc(0, "\\EO* If we don't do something^1, she might be.../%", "obj_ch2_scene9_slash_Step_0_gml_714_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("l")
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E0* Worry not^1, Susie^1! All we have to do is seal the Fountain!/", "obj_ch2_scene9_slash_Step_0_gml_719_0")
    gml_Script_c_facenext("susie", 26)
    gml_Script_c_msgnextloc("\\EQ* ..^1. yeah. Yeah!/%", "obj_ch2_scene9_slash_Step_0_gml_721_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("susiehappy")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EA* Can't be mad about another adventure^1, right!?/%", "obj_ch2_scene9_slash_Step_0_gml_726_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("u")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E9* C'mon^1, Kris!/%", "obj_ch2_scene9_slash_Step_0_gml_735_0")
    gml_Script_c_talk_wait()
    gml_Script_c_soundplay(159)
    gml_Script_c_sel(kr)
    gml_Script_c_jump_sprite(720, 193, 12, 17, 536, 540)
    gml_Script_c_delayfacing(16, "r")
    gml_Script_c_sel(su)
    gml_Script_c_delayfacing(16, "r")
    gml_Script_c_jump_sprite(635, 178, 12, 17, 534, 548)
    gml_Script_c_sel(ra)
    gml_Script_c_delayfacing(16, "r")
    gml_Script_c_jump_sprite(564, 184, 12, 17, 779, 2558)
    gml_Script_c_wait(20)
    gml_Script_c_soundplay(61)
    gml_Script_c_wait(16)
    gml_Script_c_soundplay(154)
    gml_Script_c_sel(kr)
    gml_Script_c_spin(2)
    gml_Script_c_sel(su)
    gml_Script_c_spin(2)
    gml_Script_c_sel(ra)
    gml_Script_c_spin(2)
    gml_Script_c_wait(16)
    gml_Script_c_soundplay(39)
    gml_Script_c_sel(kr)
    gml_Script_c_sprite(860)
    gml_Script_c_addxy(-2, -2)
    gml_Script_c_spin(0)
    gml_Script_c_sel(su)
    gml_Script_c_sprite(832)
    gml_Script_c_addxy(2, 2)
    gml_Script_c_spin(0)
    gml_Script_c_sel(ra)
    gml_Script_c_sprite(789)
    gml_Script_c_addxy(-10, 0)
    gml_Script_c_spin(0)
    gml_Script_c_wait(15)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Let's go!/%", "obj_ch2_scene9_slash_Step_0_gml_778_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_addxy(10, 0)
    gml_Script_c_sel(kr)
    gml_Script_c_addxy(2, 2)
    gml_Script_c_sel(su)
    gml_Script_c_addxy(-2, -2)
    gml_Script_c_pannable(0)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
}
if (wirecon == 10)
{
    xx = gml_Script_camerax()
    global.encounterno = 53
    gml_Script_scr_encountersetup(global.encounterno)
    global.monsterstatus[0] = false
    global.monsterstatus[1] = false
    monster1 = gml_Script_instance_create(global.monstermakex[0], global.monstermakey[0], obj_werewire_enemy)
    monster1.x = ((xx + 480) - 200)
    monster1.y = -280
    monster1.myself = 0
    var _temp_local_var_26 = monster1
    event_user(12)
}
if (wirecon == 11)
{
    if (monster1.y >= 120 && landeda == 0)
    {
        landeda = 1
        gml_Script_instance_create(0, 0, obj_shake)
        gml_Script_snd_play(61)
        monster1.gravity = 0
        monster1.speed = 0
    }
    if (monster2.y >= 170 && landedb == 0)
    {
        landedb = 1
        gml_Script_snd_play(61)
        monster2.speed = 0
        monster2.gravity = 0
    }
}
if (wirecon == 15)
{
    gml_Script_snd_play(329)
    with (obj_monsterparent)
    {
        gml_Script_instance_create((x + 36), ((y - 42) + 46), obj_visualEffect_pacify)
        gml_Script_instance_create(x, (y - 42), obj_werewire_spare)
        instance_destroy()
    }
    wirecon = 16
}
if (con == 10 && (!instance_exists(obj_cutscene_master)))
{
    global.interact = 0
    con = 11
    global.plot = 51
    gml_Script_scr_tempsave()
}
