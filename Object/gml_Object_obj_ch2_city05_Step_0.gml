var _temp_local_var_1, _temp_local_var_2, _temp_local_var_10, _temp_local_var_11;
if (con == 1.1)
    con = 1.2
if (obj_mainchara.x > 450 && con == -1)
{
    con = 1.1
    global.interact = 1
    global.facing = 1
}
if (con == 1.2)
{
    con = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    sp = 2
    sp_actor = gml_Script_instance_create((gml_Script_camerax() + 1000), 120, obj_actor)
    gml_Script_scr_actor_setup(sp, sp_actor, "spamton")
    sp_actor.sprite_index = spr_cutscene_14_spamton
    du = 3
    du_actor = gml_Script_scr_dark_marker(560, 106, 114)
    gml_Script_scr_actor_setup_nofacing(du, du_actor, "dumpster")
    gml_Script_c_sel(du)
    gml_Script_c_autodepth(0)
    gml_Script_c_depth(6000)
    gml_Script_c_visible(1)
    dumpster.visible = false
    save_object[0] = cutscene_master
    gml_Script_c_sel(sp)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0)
    var _temp_local_var_2 = id
}
if (con == 1 || gml_Script_scr_cutscene_loaded())
{
    con = 2
    gml_Script_c_soundplay(59)
    gml_Script_c_sel(du)
    gml_Script_c_sprite(3009)
    gml_Script_c_autodepth(0)
    gml_Script_c_depth((sp_actor.depth + 100))
    gml_Script_c_shakeobj()
    gml_Script_c_var_instance(id, "open_dumpster", 1)
    gml_Script_c_sel(sp)
    gml_Script_c_setxy(615, 165)
    gml_Script_c_flip("x")
    gml_Script_c_wait(60)
    gml_Script_c_walk_wait("u", 2, 30)
    if (!shortened)
    {
        gml_Script_c_wait(20)
        gml_Script_c_var_instance(id, "play_intro", 1)
        gml_Script_c_msgside("bottom")
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* HEY      EVERY     !^1! IT'S ME!!!/%", "obj_ch2_city05_slash_Step_0_gml_64_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(120)
        gml_Script_c_imagespeed(0)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* EV3RY  BUDDY  'S FAVORITE [[Number 1 Rated Salesman1997]]/%", "obj_ch2_city05_slash_Step_0_gml_71_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(123)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "\\s0* SPAMT%%", "obj_ch2_city05_slash_Step_0_gml_77_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(120)
        gml_Script_c_shakeobj()
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* SPAMTON G. SPAMTON!!/%", "obj_ch2_city05_slash_Step_0_gml_85_0")
        gml_Script_c_talk_wait()
    }
    gml_Script_c_mus2("initloop", "spamton_laugh_noise.ogg", 0)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(120)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_wait(45)
    gml_Script_c_mus("stop")
    if shortened
    {
        gml_Script_c_flip("x")
        gml_Script_c_sel(du)
        gml_Script_c_depth(980000)
        gml_Script_c_sel(sp)
        gml_Script_c_autodepth(0)
        gml_Script_c_depth(0)
        gml_Script_c_sprite(1829)
        gml_Script_c_jump((obj_mainchara.x + 40), obj_mainchara.y, 20, 10)
        gml_Script_c_wait(10)
        gml_Script_c_sprite(123)
        gml_Script_c_pannable(1)
        gml_Script_c_waitcustom()
    }
    else
    {
        gml_Script_c_var_instance(id, "stop_intro", 1)
        gml_Script_c_sprite(123)
        gml_Script_c_wait(30)
        gml_Script_c_flip("x")
        gml_Script_c_wait(5)
        gml_Script_c_emote("!", 20, 24)
        gml_Script_c_wait(20)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* WOAH!^1! IF IT ISN\"T A.../%", "obj_ch2_city05_slash_Step_0_gml_114_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(du)
        gml_Script_c_depth(980000)
        gml_Script_c_sel(sp)
        gml_Script_c_autodepth(0)
        gml_Script_c_depth(0)
        gml_Script_c_sprite(1829)
        gml_Script_c_jump((obj_mainchara.x + 40), 203, 20, 10)
        gml_Script_c_wait(10)
        gml_Script_c_sprite(123)
        gml_Script_c_mus("free_all")
        gml_Script_c_mus2("initloop", "spamton_meeting.ogg", 0)
        gml_Script_c_sel(kr)
        gml_Script_c_autowalk(0)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walk("l", 10, 7.5)
        gml_Script_c_var_lerp("y", obj_mainchara.y, 200, 7.5)
        gml_Script_c_wait(15)
        gml_Script_c_imagespeed(0)
        gml_Script_c_wait(15)
        gml_Script_c_sel(sp)
        gml_Script_c_sprite(120)
        gml_Script_c_var("siner_add0", 0.1)
        gml_Script_c_var_lerp("siner_amplitude0", 0, 10, 20)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* LIGHT nER^1! HEY-HE Y HEY!!!/%", "obj_ch2_city05_slash_Step_0_gml_149_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(123)
        gml_Script_c_var("siner_add0", 0)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* LOOKS LIKE YOU'RE [[All Alone On A Late Night?]]/%", "obj_ch2_city05_slash_Step_0_gml_158_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(133)
        gml_Script_c_var("siner_add0", 0.2)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* ALL YOUR FRIENDS^1, [[Abandoned you for the slime]] YOU ARE?/%", "obj_ch2_city05_slash_Step_0_gml_165_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(130)
        gml_Script_c_var("siner_add0", 0.4)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* SALES^1, GONE DOWN THE [[Drain]] [[Drain]]??/%", "obj_ch2_city05_slash_Step_0_gml_172_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_lerp("siner_amplitude0", 0, 2, 1)
        gml_Script_c_var("siner_add0", 2)
        gml_Script_c_sprite(132)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* LIVING IN A GODDAMN GARBAGE CAN???/%", "obj_ch2_city05_slash_Step_0_gml_180_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var("siner_add0", 0)
        gml_Script_c_imagespeed(1)
        gml_Script_c_sprite(120)
        gml_Script_c_mus2("initloop", "spamton_laugh_noise.ogg", 0)
        gml_Script_c_wait(25)
        gml_Script_c_mus("stop")
        gml_Script_c_imagespeed(0)
        gml_Script_c_wait(20)
        gml_Script_c_flip("x")
        gml_Script_c_walkdirect_wait(lerp((obj_mainchara.x + 40), 620, 0.75), lerp(203, 180, 0.75), 3)
        gml_Script_c_wait(1)
        gml_Script_c_setxy(620, 180)
        gml_Script_c_flip("x")
        gml_Script_c_sprite(127)
        gml_Script_c_shakeobj()
        gml_Script_c_soundplay(59)
        gml_Script_c_shake()
        gml_Script_c_sel(kr)
        gml_Script_c_autowalk(0)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walk("l", 5, 5)
        gml_Script_c_wait(5)
        gml_Script_c_imagespeed(0)
        gml_Script_c_wait(60)
        gml_Script_c_sel(sp)
        gml_Script_c_sprite(123)
        gml_Script_c_sel(sp)
        gml_Script_c_var_lerp("siner_amplitude0", 0, 10, 10)
        gml_Script_c_var("siner_add0", 0.2)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* WELL HAVE I GOT A [[Specil Deal]] FOR LONELY [[Hearts]] LIKE YOU!!/%", "obj_ch2_city05_slash_Step_0_gml_228_0")
        gml_Script_c_talk_wait()
        gml_Script_c_flip("x")
        gml_Script_c_var("siner_add0", 0)
        gml_Script_c_walkdirect((obj_mainchara.x + 220), 203, 10)
        gml_Script_c_wait(10)
        gml_Script_c_sprite(130)
        gml_Script_c_msgsetloc(0, "* IF YOU'VE [[Lost Control Of Your Life]]/%", "obj_ch2_city05_slash_Step_0_gml_237_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(124)
        gml_Script_c_flip("x")
        gml_Script_c_shakeobj()
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* THEN YOU JUST GOTTA GRAB IT BY THE [[Silly Strings]]/%", "obj_ch2_city05_slash_Step_0_gml_245_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_lerp("siner_amplitude0", 0, 1, 1)
        gml_Script_c_var("siner_add0", 1.5)
        gml_Script_c_walkdirect((obj_mainchara.x + 120), 203, 10)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* WHY BE THE [[Little Sponge]] WHO HATES ITS [[$4.99]] LIFE/%", "obj_ch2_city05_slash_Step_0_gml_253_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var("siner_add0", 0)
        gml_Script_c_walkdirect((obj_mainchara.x + 80), 203, 15)
        gml_Script_c_sprite(125)
        gml_Script_c_msgsetloc(0, "* WHEN YOU CAN BE A/%", "obj_ch2_city05_slash_Step_0_gml_260_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var("siner_add0", 0)
        gml_Script_c_sprite(121)
        gml_Script_c_imagespeed(0)
        gml_Script_c_imageindex(0)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* [[BIG SHOT!!!]]/%", "obj_ch2_city05_slash_Step_0_gml_270_0")
        gml_Script_c_talk_wait()
        gml_Script_c_imageindex(1)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* [[BIG SHOT!!!!]]/%", "obj_ch2_city05_slash_Step_0_gml_276_0")
        gml_Script_c_talk_wait()
        gml_Script_c_imageindex(2)
        gml_Script_c_shakeobj()
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* [[BIG SHOT!!!!!]]/%", "obj_ch2_city05_slash_Step_0_gml_283_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(128)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* THAT'S RIGHT!^1! NOW'S YOUR CHANCE TO BE A [[BIG SHOT]]!!/%", "obj_ch2_city05_slash_Step_0_gml_288_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(128)
        gml_Script_c_walk("l", 6, 5)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* AND I HAVE JUST./%", "obj_ch2_city05_slash_Step_0_gml_296_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(128)
        gml_Script_c_walk("l", 6, 5)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* THE THING./%", "obj_ch2_city05_slash_Step_0_gml_304_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(128)
        gml_Script_c_walk("l", 6, 5)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* YOU NEED./%", "obj_ch2_city05_slash_Step_0_gml_312_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(123)
        gml_Script_c_walk("l", 6, 5)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* THAT'S/%", "obj_ch2_city05_slash_Step_0_gml_320_0")
        gml_Script_c_talk_wait()
        gml_Script_c_walk("l", 1.75, 15)
        gml_Script_c_wait(30)
        gml_Script_c_sprite(118)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* [[Hyperlink Blocked]]./%", "obj_ch2_city05_slash_Step_0_gml_328_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(sp)
        gml_Script_c_sprite(119)
        gml_Script_c_imageindex(0)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walkdirect((obj_mainchara.x + 80), 203, 6)
        gml_Script_c_soundplay(297)
        gml_Script_c_wait(30)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* YOU WANT IT.&* YOU WANT [[Hyperlink Blocked]]^1, DON'T YOU./%", "obj_ch2_city05_slash_Step_0_gml_347_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(120)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_var_lerp("siner_amplitude0", 0, 10, 10)
        gml_Script_c_var("siner_add0", 0.2)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* WELL HAVE I GOT A DEAL FOR YOU!!/%", "obj_ch2_city05_slash_Step_0_gml_359_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(123)
        gml_Script_c_halt()
        gml_Script_c_var("siner_add0", 0)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* ALL YOU HAVE TO DO IS SHOW ME./%", "obj_ch2_city05_slash_Step_0_gml_389_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(130)
        gml_Script_c_walk("l", 4, 5)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* YOUR [[HeartShapedObject]]./%", "obj_ch2_city05_slash_Step_0_gml_397_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(kr)
        gml_Script_c_autowalk(0)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walk("l", 3, 10)
        gml_Script_c_sel(sp)
        gml_Script_c_walk("l", 3, 10)
        gml_Script_c_sprite(123)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* YOU'RE  LIGHT neR< AREN'T YOU?/%", "obj_ch2_city05_slash_Step_0_gml_413_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(132)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* YOU'VE GOT THE [[LIGHT.]^1]&* WHY DON'T YO^1U&* [[Show it off?]]/%", "obj_ch2_city05_slash_Step_0_gml_419_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(sp)
        gml_Script_c_sprite(119)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_mus("stop")
        gml_Script_c_mus2("initloop", "spamton_laugh_noise.ogg", 0)
        gml_Script_c_speaker("spamton")
        gml_Script_c_msgsetloc(0, "* HAEAHAEAHAEAHAEAH!!/%", "obj_ch2_city05_slash_Step_0_gml_443_0")
        gml_Script_c_talk_wait()
        gml_Script_c_mus("free_all")
        gml_Script_c_pannable(1)
        gml_Script_c_waitcustom()
    }
}
if (con == 2 && customcon == 1)
{
    con = 3
    alarm[0] = 30
    if (global.tempflag[29] == 0)
        global.tempflag[29] = 1
    var spamton_marker = gml_Script_scr_dark_marker(sp_actor.x, sp_actor.y, sp_actor.sprite_index)
    global.flag[9] = 2
    global.batmusic[0] = gml_Script_snd_init("spamton_battle.ogg")
    encounterflag = 549
    global.flag[54] = encounterflag
    gml_Script_scr_battle(60, 1, spamton_marker, 0, 0)
    global.flag[9] = 1
    with (obj_actor)
        visible = false
}
if (con == 4 && gml_Script_i_ex(355))
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
    con = (global.flag[309] == 1 ? 9 : 19)
    alarm[0] = 5
    customcon = 0
    obj_mainchara.x = obj_herokris.x
    obj_mainchara.y = obj_herokris.y
    kr_actor.x = obj_herokris.x
    kr_actor.y = obj_herokris.y
    kr_actor.sprite_index = obj_herokris.sprite_index
    sp_actor.x = obj_spamton_enemy.x
    sp_actor.y = obj_spamton_enemy.y
    sp_actor.sprite_index = spr_cutscene_14_spamton
    sp_actor.image_index = 0
    sp_actor.image_speed = 0
    with (obj_actor)
        visible = true
    gml_Script_snd_free(global.batmusic[0])
    gml_Script_snd_volume(global.currentsong[1], 0, 0)
    gml_Script_snd_resume(global.currentsong[1])
    gml_Script_snd_volume(global.currentsong[1], 1, 20)
    with (obj_monsterparent)
        instance_destroy()
    with (obj_bulletparent)
        instance_destroy()
    with (obj_heroparent)
        instance_destroy()
    if gml_Script_i_ex(865)
    {
        with (obj_battleback)
            destroy = 1
    }
    if gml_Script_i_ex(355)
        instance_destroy(obj_battlecontroller)
}
if (con == 10 && (!gml_Script_i_ex(355)))
{
    con = 39
    alarm[0] = 30
    global.fighting = false
    gml_Script_c_waitcustom_end()
    gml_Script_c_sel(kr)
    gml_Script_c_var_lerp("x", kr_actor.x, 317, 10)
    gml_Script_c_var_lerp("y", kr_actor.y, 183, 10)
    gml_Script_c_sel(sp)
    gml_Script_c_var("siner_add0", 0.1)
    gml_Script_c_var_lerp("siner_amplitude0", 0, 10, 20)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("spamton")
    gml_Script_c_msgsetloc(0, "* NOW ON TO THE NEXT STEP.../", "obj_ch2_city05_slash_Step_0_gml_551_0")
    gml_Script_c_msgnextloc("* I'LL BE WAITING AT MY [[Home-made Storefront Site]]/", "obj_ch2_city05_slash_Step_0_gml_553_0")
    gml_Script_c_msgnextloc("* IN THE [[Trash Area Closed For Repairs.]]/%", "obj_ch2_city05_slash_Step_0_gml_554_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(118)
    gml_Script_c_var("siner_add0", 0)
    gml_Script_c_speaker("spamton")
    gml_Script_c_msgsetloc(0, "* COME..^1. ALONE./%", "obj_ch2_city05_slash_Step_0_gml_564_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(120)
    gml_Script_c_halt()
    gml_Script_c_var("siner_add0", 0.1)
    gml_Script_c_speaker("spamton")
    gml_Script_c_msgsetloc(0, "* AND DON'T..^1. FORGET!/%", "obj_ch2_city05_slash_Step_0_gml_574_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(123)
    gml_Script_c_halt()
    gml_Script_c_speaker("spamton")
    gml_Script_c_msgsetloc(0, "* TO [[Like and Subscribe]] FOR MORE [[Hyperlink Blocked.]]/%", "obj_ch2_city05_slash_Step_0_gml_582_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sprite(119)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_walk("r", 5, 90)
    gml_Script_c_speaker("spamton")
    gml_Script_c_msgsetloc(0, "* HAEAHAEAHAEAHAEAH!!/%", "obj_ch2_city05_slash_Step_0_gml_591_0")
    gml_Script_c_talk_wait()
    gml_Script_c_pannable(1)
    gml_Script_c_panobj(kr_actor, 30)
    gml_Script_c_wait(60)
    gml_Script_c_pannable(0)
}
if (con == 20)
{
    con = 39
    alarm[0] = 30
    gml_Script_c_waitcustom_end()
    gml_Script_c_sel(kr)
    gml_Script_c_var_lerp("x", kr_actor.x, 317, 10)
    gml_Script_c_var_lerp("y", kr_actor.y, 183, 10)
    gml_Script_c_sel(sp)
    gml_Script_c_sprite(1835)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_var("siner_add0", 0.4)
    gml_Script_c_wait(30)
    gml_Script_c_speaker("spamton")
    gml_Script_c_msgsetloc(0, "* HEY!!^1! DIDN'T YOU EVER HEAR THE PHRASE^1, &* [Make Money^1, Not War]!/", "obj_ch2_city05_slash_Step_0_gml_612_0")
    gml_Script_c_msgnextloc("* HOW'S AN INNOCENT [Guy] LIKE ME SUPPOSED TO [Rip People Off]/", "obj_ch2_city05_slash_Step_0_gml_614_0")
    gml_Script_c_msgnextloc("* WHEN KIDS LIKE YOU ARE [Beating People Up]^1,/%", "obj_ch2_city05_slash_Step_0_gml_615_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(2)
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(166)
    gml_Script_c_var("siner_add0", 0.6)
    gml_Script_c_waittalk()
    gml_Script_c_speaker("spamton")
    gml_Script_c_msgsetloc(0, "* [Spitting] IN THEIR EYES^1, THROWING SAND IN THEIR [Face],/", "obj_ch2_city05_slash_Step_0_gml_621_0")
    gml_Script_c_msgnextloc("* [Stomping] ON THEIR TOES^1, YANKING THEIR [Noses]/", "obj_ch2_city05_slash_Step_0_gml_623_0")
    gml_Script_c_msgnextloc("* AND NOT EVEN GIVING THEM A SINGLE CENT FOR IT!?/", "obj_ch2_city05_slash_Step_0_gml_625_0")
    if gml_Script_scr_weaponcheck_inventory(13)
    {
        gml_Script_c_msgnextloc("* IT DOESN'T MEAN YOU CAN BEAT ME UP^1,/", "obj_ch2_city05_slash_Step_0_gml_629_0")
        gml_Script_c_msgnextloc("* JUST BECAUSE YOU BOUGHT MY [Commemorative Ring]!/", "obj_ch2_city05_slash_Step_0_gml_630_0")
        gml_Script_c_msgnextloc("* AT LEAST BUY [2]!/", "obj_ch2_city05_slash_Step_0_gml_631_0")
    }
    else
    {
        gml_Script_c_msgnextloc("* YOU SHOULD HAVE DONE ALL THAT EARLIER!/", "obj_ch2_city05_slash_Step_0_gml_634_0")
        gml_Script_c_msgnextloc("* AND BEEN THE FIRST TO OWN MY [Commemorative Ring]/", "obj_ch2_city05_slash_Step_0_gml_635_0")
    }
    gml_Script_c_msgnextloc("* TOO BAD^1! SEE YOU KID!/%", "obj_ch2_city05_slash_Step_0_gml_638_0")
    gml_Script_c_talk()
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(166)
    gml_Script_c_var("siner_add0", 0.8)
    gml_Script_c_wait_box(1)
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(166)
    gml_Script_c_var("siner_add0", 1)
    gml_Script_c_wait_box(2)
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(166)
    gml_Script_c_var("siner_add0", 1.2)
    gml_Script_c_wait_box(3)
    gml_Script_c_shakeobj()
    gml_Script_c_soundplay(166)
    gml_Script_c_var("siner_add0", 1.5)
    gml_Script_c_wait_box(4)
    gml_Script_c_sprite(124)
    gml_Script_c_soundplay(172)
    gml_Script_c_var("siner_add0", 0)
    gml_Script_c_wait_box(5)
    gml_Script_c_sprite(133)
    gml_Script_c_waittalk()
    gml_Script_c_halt()
    gml_Script_c_flip("x")
    gml_Script_c_walk("r", 5, 90)
    gml_Script_c_pannable(1)
    gml_Script_c_panobj(kr_actor, 30)
    gml_Script_c_wait(60)
    gml_Script_c_pannable(0)
}
if (con == 40 && (!gml_Script_d_ex()))
{
    con = 50
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 50 && (!gml_Script_i_ex(895)))
{
    con = 0
    global.plot = 85
    global.interact = 0
    global.facing = 0
    var dumpster_npc = gml_Script_instance_create(560, 106, obj_npc_sign)
    dumpster_npc.sprite_index = spr_cutscene_14_dumpster_open
    var _temp_local_var_10 = dumpster_npc
    gml_Script_scr_depth()
}
if play_intro
{
    play_intro = 0
    intro[0] = gml_Script_snd_init("spamton_meeting_intro.ogg")
    intro[1] = gml_Script_mus_loop(intro[0])
}
if stop_intro
{
    stop_timer++
    if (stop_timer == 1)
        audio_sound_gain(intro[1], 0, 1000)
    if (stop_timer >= 31)
    {
        stop_intro = 0
        gml_Script_snd_free(intro[0])
    }
}
if open_dumpster
{
    open_dumpster = 0
    dumpster_nakami.visible = true
    dumpster_nakami.depth = 95000
    var _temp_local_var_11 = dumpster_nakami
    gml_Script_scr_shakeobj()
}
