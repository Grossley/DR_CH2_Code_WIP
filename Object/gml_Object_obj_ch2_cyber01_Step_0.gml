var xpos, ypos;
if (keyboard_check_pressed(ord("P")) && gml_Script_scr_debug())
    audio_sound_set_track_position(global.currentsong[1], 15.67)
if (obj_mainchara.x > (x - 80) && con == -1)
{
    var _temp_local_var_3 = nisesweet
    x -= 5
}
if (con == 10)
{
    var _temp_local_var_5 = nisesweet
    x = (gml_Script_camerax() + 520)
}
if (con == 20)
{
    con = 21
    global.interact = 1
    global.facing = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    save_object[0] = cutscene_master
    gml_Script_scr_maincharacters_actors()
    sw = 5
    sw_actor = gml_Script_instance_create(nisesweet.x, nisesweet.y, obj_actor)
    gml_Script_scr_actor_setup(sw, sw_actor, "sweet")
    sw_actor.sprite_index = spr_sweet_idle
    gml_Script_c_sel(sw)
    gml_Script_c_autowalk(0)
    nisesweet.visible = false
    hg = 6
    hg_actor = gml_Script_instance_create(2200, (gml_Script_cameray() - 80), obj_actor)
    hg_actor.y = (gml_Script_cameray() - 800)
    gml_Script_scr_actor_setup(hg, hg_actor, "hatguy")
    hg_actor.sprite_index = spr_hatguy_idle
    gml_Script_c_sel(hg)
    gml_Script_c_autowalk(0)
    nisekk.x = 2200
    nisekk.y = (gml_Script_cameray() - 400)
    var _temp_local_var_9 = nisekk
    var _temp_local_var_13 = id
    depth = 95000
}
if (con == 21)
{
    con = 22
    alarm[0] = 30
    gml_Script_c_mus2("volume", 0, 30)
    gml_Script_c_soundplay(61)
    gml_Script_c_shake()
    gml_Script_c_sel(sw)
    gml_Script_c_jump(2156, 175, 40, 10)
    gml_Script_c_wait(8)
    gml_Script_c_soundplay(64)
    gml_Script_c_sprite(500)
    gml_Script_c_shakeobj()
    gml_Script_c_wait(10)
    gml_Script_c_var_instance(djtable, "sprite_index", 499)
    gml_Script_c_var_lerp_instance(djtable, "y", djtable.y, (gml_Script_cameray() - 100), 30)
    gml_Script_c_wait(40)
    gml_Script_c_sprite(1774)
    gml_Script_c_shakeobj()
    gml_Script_c_imagespeed(0.25)
    if shortened
    {
        gml_Script_c_var_instance(nisekk, "y", (gml_Script_cameray() - 180))
        gml_Script_c_var_instance(hg_actor, "y", (gml_Script_cameray() - 80))
        con = 99
        tempcon = 0
        gml_Script_c_waitcustom()
    }
    else
    {
        gml_Script_c_mus2("initloop", "music_guys_intro.ogg", 0)
        gml_Script_c_msgside("bottom")
        gml_Script_scr_miniface_init_sweet()
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m1        *D-dead end...!/%", "obj_ch2_cyber01_slash_Step_0_gml_83_0")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(nisekk, "y", (gml_Script_cameray() - 180))
        gml_Script_c_var_instance(hg_actor, "y", (gml_Script_cameray() - 80))
        gml_Script_c_sel(kr)
        gml_Script_c_walkdirect(2080, 182, 15)
        gml_Script_c_delayfacing(16, "r")
        gml_Script_c_sel(su)
        gml_Script_c_walkdirect(2105, 220, 15)
        gml_Script_c_delayfacing(16, "r")
        gml_Script_c_sel(ra)
        gml_Script_c_walkdirect(2039, 130, 15)
        gml_Script_c_delayfacing(16, "r")
        gml_Script_c_sel(sw)
        gml_Script_c_walk("r", 4, 15)
        gml_Script_c_wait(30)
        gml_Script_scr_smallface(0, "ralsei", 19, "left", "bottom", gml_Script_stringsetloc("Oh, like \"suite?\"", "obj_ch2_cyber01_slash_Step_0_gml_104_0"))
        gml_Script_scr_smallface(1, "susie", 11, "right", "bottom", gml_Script_stringsetloc("Oh, like... sweets?", "obj_ch2_cyber01_slash_Step_0_gml_105_0"))
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\E5* Alright^1, what's the deal^1, twerp!/", "obj_ch2_cyber01_slash_Step_0_gml_108_0")
        gml_Script_c_facenext("no_name", 0)
        gml_Script_c_msgnextloc("\\m1        *Who's a twerp!? The name's&    Sweet!\\f0\\f1/%", "obj_ch2_cyber01_slash_Step_0_gml_110_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(sw)
        gml_Script_c_sprite(1770)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m1        *Don't tell me you haven't&    heard of the Sweet Cap'n&    Cakes?!?/", "obj_ch2_cyber01_slash_Step_0_gml_118_0")
        gml_Script_c_facenext("ralsei", "J")
        gml_Script_c_msgnextloc("\\EJ* Um^1, doesn't ring a bell.../%", "obj_ch2_cyber01_slash_Step_0_gml_120_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(sw)
        gml_Script_c_sprite(1773)
        gml_Script_c_shakeobj()
        gml_Script_c_soundplay(51)
        gml_Script_c_wait(5)
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m1        *G-Guess our act's still a bit&    underground.../%", "obj_ch2_cyber01_slash_Step_0_gml_129_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(sw)
        gml_Script_c_sprite(1770)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m1        *Sweet Cap'n Cakes^1! Not only&    are we Cyber Field's BEST&    musical trio.../", "obj_ch2_cyber01_slash_Step_0_gml_137_0")
        gml_Script_c_msgnextloc("\\m1        *We're also the last resistance&    against the big bad Queen and&    all her crew!/", "obj_ch2_cyber01_slash_Step_0_gml_138_0")
        gml_Script_c_msgnextloc("\\m1        *And that starts with resisting&    YOU!/%", "obj_ch2_cyber01_slash_Step_0_gml_139_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sprite(1774)
        gml_Script_c_sel(su)
        gml_Script_c_sprite(45)
        gml_Script_c_shakeobj()
        gml_Script_c_speaker("susie")
        gml_Script_c_msgsetloc(0, "\\EH* What!? We're fighting Queen^1, too!/", "obj_ch2_cyber01_slash_Step_0_gml_151_0")
        gml_Script_c_facenext("no_name", 0)
        gml_Script_c_msgnextloc("\\m1        *Nuh-uh-uh^1! Cap'n saw you help&    her kidnap some girl!/", "obj_ch2_cyber01_slash_Step_0_gml_153_0")
        gml_Script_c_msgnextloc("\\m1        *Hey^1! Hey^1, Cap!/%", "obj_ch2_cyber01_slash_Step_0_gml_154_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(sw)
        gml_Script_c_autowalk(0)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walk("l", 10, 10)
        gml_Script_c_sel(hg)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_soundplay(186)
        gml_Script_c_walkdirect_wait(2200, 110, 15)
        gml_Script_c_soundplay(61)
        gml_Script_c_shake()
        gml_Script_c_sel(kr)
        gml_Script_c_autofacing(0)
        gml_Script_c_walk("l", 6, 10)
        gml_Script_c_sel(ra)
        gml_Script_c_autofacing(0)
        gml_Script_c_walk("l", 6, 10)
        gml_Script_c_sel(su)
        gml_Script_c_facing("r")
        gml_Script_c_autofacing(0)
        gml_Script_c_walk("l", 6, 10)
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m3        *We won't let anyone lay a&    finger on madamoizels.../%", "obj_ch2_cyber01_slash_Step_0_gml_170_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(sw)
        gml_Script_c_sprite(500)
        gml_Script_c_soundplay(51)
        gml_Script_c_shakeobj()
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m3        *Except us^2!&\\m1    That's not the point^1, Cap'n!!/%", "obj_ch2_cyber01_slash_Step_0_gml_179_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(hg)
        gml_Script_c_flip("x")
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m3        *It's like half the point. 60`%?&    55..^2.&\\m1    We're rebels^1, not players!/%", "obj_ch2_cyber01_slash_Step_0_gml_186_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(hg)
        gml_Script_c_flip("x")
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m3        *We're rebels that play^2.&\\m1    We don't play!^1! We don't&    play!!/", "obj_ch2_cyber01_slash_Step_0_gml_193_0")
        gml_Script_c_msgnextloc("\\m3        *That's it!^1! K_K!!^1! Get over&    here!!/%", "obj_ch2_cyber01_slash_Step_0_gml_194_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(sw)
        gml_Script_c_sprite(1774)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walk("l", 4, 10)
        gml_Script_c_sel(hg)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_walk_wait("l", 4, 10)
        gml_Script_c_sel(sw)
        gml_Script_c_flip("x")
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_sel(hg)
        gml_Script_c_flip("x")
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_var_lerp_instance(nisekk, "y", nisekk.y, 175, 15)
        gml_Script_c_wait(15)
        gml_Script_c_soundplay(61)
        gml_Script_c_shake()
        gml_Script_c_wait(30)
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m3        *K_K^1, are we players!^2?&\\m2    .../", "obj_ch2_cyber01_slash_Step_0_gml_223_0")
        gml_Script_c_msgnextloc("\\m2        *I'm a CD player./%", "obj_ch2_cyber01_slash_Step_0_gml_224_0")
        gml_Script_c_talk_wait()
        gml_Script_c_mus("pause")
        gml_Script_c_mus2("initloop", "music_guys.ogg", 0)
        gml_Script_c_sel(sw)
        gml_Script_c_sprite(1770)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_sel(hg)
        gml_Script_c_sprite(1752)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_var_instance(nisekk, "dancing", 1)
        gml_Script_c_wait(60)
        gml_Script_c_sel(kr)
        gml_Script_c_sel(ra)
        gml_Script_c_emote("...", 30)
        gml_Script_c_sel(su)
        gml_Script_c_emote("...", 30)
        gml_Script_c_wait(60)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("l")
        gml_Script_c_delaywalk(16, "l", 1, 80)
        gml_Script_c_sel(ra)
        gml_Script_c_facing("l")
        gml_Script_c_delaywalk(16, "l", 1, 80)
        gml_Script_c_sel(su)
        gml_Script_c_facing("l")
        gml_Script_c_delaywalk(16, "l", 1, 80)
        gml_Script_c_wait(80)
        gml_Script_c_sel(sw)
        gml_Script_c_flip("x")
        gml_Script_c_sprite(1773)
        gml_Script_c_imagespeed(0)
        gml_Script_c_sel(kr)
        gml_Script_c_halt()
        gml_Script_c_sel(ra)
        gml_Script_c_halt()
        gml_Script_c_sel(su)
        gml_Script_c_halt()
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m1        *Wait^1! They're getting away!/%", "obj_ch2_cyber01_slash_Step_0_gml_279_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(sw)
        gml_Script_c_sprite(1774)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("r")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("r")
        gml_Script_c_sel(su)
        gml_Script_c_facing("r")
        gml_Script_c_sel(hg)
        gml_Script_c_imagespeed(0.25)
        gml_Script_c_flip("x")
        gml_Script_c_sprite(1754)
        gml_Script_c_wait(10)
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m3        *Sweet^1, chill. There'll be&    other bad guys^2!&\\m1    No^1, this is our chance!/", "obj_ch2_cyber01_slash_Step_0_gml_301_0")
        gml_Script_c_msgnextloc("\\m1        *Are you ready!? Let's fight!!/%", "obj_ch2_cyber01_slash_Step_0_gml_302_0")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(90)
        gml_Script_c_sel(sw)
        gml_Script_c_flip("x")
        gml_Script_c_sel(hg)
        gml_Script_c_flip("x")
        gml_Script_c_speaker("no_name")
        gml_Script_c_msgsetloc(0, "\\m3        *..^1. K_K.&\\m2    Yeah?/", "obj_ch2_cyber01_slash_Step_0_gml_336_0")
        gml_Script_c_msgnextloc("\\m1        *Play some battle music^2!&\\m2    OK^2!/%", "obj_ch2_cyber01_slash_Step_0_gml_337_0")
        gml_Script_c_talk_wait()
        gml_Script_c_sel(sw)
        gml_Script_c_flip("x")
        gml_Script_c_sel(hg)
        gml_Script_c_flip("x")
        gml_Script_c_mus("stop")
        gml_Script_c_mus("free_all")
        gml_Script_c_var_instance(nisekk, "dancing", 0)
        gml_Script_c_waitcustom()
    }
}
if (tempcon == 0 && customcon == 1)
{
    tempcon = 1
    con = 23
}
if (con == 23 && customcon == 1)
{
    with (obj_actor)
        visible = false
    con = 29
    alarm[0] = 30
    if (global.tempflag[27] == 0)
        global.tempflag[27] = 1
    var sweet_marker = gml_Script_scr_dark_marker(sw_actor.x, sw_actor.y, sw_actor.sprite_index)
    var hg_marker = gml_Script_scr_dark_marker(hg_actor.x, hg_actor.y, hg_actor.sprite_index)
    var kk_marker = gml_Script_instance_create(x, y, obj_marker)
    kk_marker_fake = gml_Script_scr_dark_marker(((((nisekk.sprite_index.room_height - 176) - 109).room_width - 442) + 92), id, null)
    nisekk.visible = false
    encounterflag = 552
    global.flag[54] = encounterflag
    obj_mainchara.cutscene = true
    obj_mainchara.x = kr_actor.x
    obj_mainchara.y = kr_actor.y
    global.cinstance[0].x = su_actor.x
    global.cinstance[0].y = su_actor.y
    global.cinstance[1].x = ra_actor.x
    global.cinstance[1].y = ra_actor.y
    global.flag[9] = 2
    global.batmusic[0] = -1
    gml_Script_snd_init("spamton_neo_mix_ex_wip.ogg")
    gml_Script_scr_battle(62, 1, sweet_marker, kk_marker, hg_marker)
    var _temp_local_var_8 = kk_marker_fake
    gml_Script_scr_move_to_point_over_time((gml_Script_camerax() + 520), (gml_Script_cameray() + 110), 20)
    __doom = gml_Script_instance_create(x, y, obj_doom)
    __doom.target = id
    alarm[0] = __doom
    _temp_local_var_13 = 25
}
if (con == 30 && gml_Script_i_ex(355))
{
    var battle_end = 0
    with (obj_battlecontroller)
    {
        if (intro == 2)
            battle_end = 1
    }
    if battle_end
    {
        con = 32
        nisekk.visible = true
        gml_Script_snd_volume(global.batmusic[1], 0, 25)
    }
}
if (con == 32)
{
    con = 34
    customcon = 0
    kr_actor.x = obj_herokris.x
    kr_actor.y = obj_herokris.y
    kr_actor.sprite_index = spr_krisr_dark
    su_actor.x = obj_herosusie.x
    su_actor.y = obj_herosusie.y
    su_actor.sprite_index = spr_susie_walk_right_dw
    ra_actor.x = obj_heroralsei.x
    ra_actor.y = obj_heroralsei.y
    ra_actor.sprite_index = spr_ralsei_walk_right
    sw_actor.x = obj_sweet_enemy.x
    sw_actor.y = obj_sweet_enemy.y
    sw_actor.sprite_index = obj_sweet_enemy.sprite_index
    hg_actor.x = obj_hatguy_enemy.x
    hg_actor.y = obj_hatguy_enemy.y
    hg_actor.sprite_index = spr_hatguy_idle
    nisekk.x = obj_kk_enemy.x
    nisekk.y = obj_kk_enemy.y
    nisekk.dancing = 1
    var _temp_local_var_15 = nisekk
    gml_Script_scr_depth()
}
if (con == 34 && (!gml_Script_i_ex(355)))
{
    con = 35
    global.interact = 1
    with (obj_actor)
        visible = true
    with (obj_mainchara)
        visible = false
    with (obj_caterpillarchara)
        visible = false
    gml_Script_c_mus2("initloop", "music_guys_intro.ogg", 0)
    gml_Script_c_waitcustom_end()
    gml_Script_c_pannable(1)
}
if (con == 35)
{
    con = 49
    if (!gml_Script_i_ex(355))
        global.fighting = false
    alarm[0] = 30
    if (!gml_Script_i_ex(djtableb))
    {
        djtableb = gml_Script_scr_dark_marker(((obj_queenmansion_bg).room_width + 120), 499, nisekk)
        djtableb.depth = 500000
        djtableb.image_speed = 0.25
    }
    save_object[1] = cutscene_master
    save_object[2] = cutscene_master
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(1960, 116, 15)
    gml_Script_c_delayfacing(16, "r")
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(2003, 145, 15)
    gml_Script_c_delayfacing(16, "r")
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(1961, 210, 15)
    gml_Script_c_delayfacing(16, "r")
    gml_Script_c_sel(sw)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(2145, 85, 15)
    gml_Script_c_sel(hg)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(2262, 221, 15)
    gml_Script_c_var_lerp_instance(nisekk, "y", nisekk.y, 167, 15)
    gml_Script_c_var_lerp_instance(nisekk, "x", nisekk.x, 2120, 15)
    gml_Script_scr_miniface_init_sweet()
    gml_Script_c_msgside("bottom")
    gml_Script_c_speaker("sweet")
    gml_Script_c_msgsetloc(0, "\\m1        *Feel the beat^2!&\\m3    Watch my moves^2!&\\m2    Dance^1, dance!!/", "obj_ch2_cyber01_slash_Step_0_gml_538_0")
    gml_Script_c_facenext("susie", "2")
    gml_Script_c_msgnextloc("\\E2* Hey^1, losers!^1! Wrap it up!^1! Battle's over!!/%", "obj_ch2_cyber01_slash_Step_0_gml_540_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(1)
    gml_Script_c_sel(su)
    gml_Script_c_sprite(230)
    gml_Script_c_addxy(8, 58)
    gml_Script_c_shakeobj()
    gml_Script_c_wait_talk()
    gml_Script_c_addxy(-8, -58)
    gml_Script_c_facing("r")
    gml_Script_c_var_instance(nisekk, "dancing", 0)
    gml_Script_c_sel(sw)
    gml_Script_c_emote("!", 30)
    gml_Script_c_imagespeed(0)
    gml_Script_c_sel(hg)
    gml_Script_c_emote("!", 30)
    gml_Script_c_imagespeed(0)
    gml_Script_c_wait(30)
    gml_Script_c_sel(sw)
    gml_Script_c_sprite(1774)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sel(hg)
    gml_Script_c_sprite(1754)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_wait(10)
    gml_Script_scr_smallface(0, "susie", 17, "left", "bottom", gml_Script_stringsetloc("WE ARE the good side!!!", "obj_ch2_cyber01_slash_Step_0_gml_566_0"))
    gml_Script_scr_smallface(1, "ralsei", 26, 300, "bottom", gml_Script_stringsetloc("Just go with it, Susie...", "obj_ch2_cyber01_slash_Step_0_gml_567_0"))
    gml_Script_c_speaker("k_k")
    gml_Script_c_msgsetloc(0, "\\m2        *Over^2?&\\m3    In other-type words...&\\m1    We lost!?/", "obj_ch2_cyber01_slash_Step_0_gml_570_0")
    gml_Script_c_msgnextloc("\\m1        *..^2.&\\m3    ..^2.&\\m2    .../", "obj_ch2_cyber01_slash_Step_0_gml_571_0")
    gml_Script_c_msgnextloc("\\m2        *Does that mean we can be&    friends^2?&\\m1    K_K!^1! No!!/", "obj_ch2_cyber01_slash_Step_0_gml_572_0")
    gml_Script_c_msgnextloc("\\m3        *Fighting's not really my style&    anyways..^2.&\\m1    Yeah^1! Because you're a coward!/", "obj_ch2_cyber01_slash_Step_0_gml_573_0")
    gml_Script_c_msgnextloc("\\m1        *..^1. I mean^1, it was fun&    dancing^1, but..^2.&\\m2    Sweet. Don't worry./", "obj_ch2_cyber01_slash_Step_0_gml_574_0")
    gml_Script_c_msgnextloc("\\m2        *I think our dancing beat them^2.&\\m1    Beat them...^2?&\\m3    Yeah^1, all mercy-like./", "obj_ch2_cyber01_slash_Step_0_gml_575_0")
    gml_Script_c_msgnextloc("\\m3        *See^1, when we danced with them^1,&    it convinced them we're cool^2.&\\m1    Now they're on our side?/", "obj_ch2_cyber01_slash_Step_0_gml_576_0")
    gml_Script_c_msgnextloc("\\m2        *Yes./", "obj_ch2_cyber01_slash_Step_0_gml_577_0")
    gml_Script_c_msgnextloc("\\m1        *Hey!^1! You three!^1! Welcome to&    the good side!!\\f0\\f1/", "obj_ch2_cyber01_slash_Step_0_gml_578_0")
    gml_Script_c_msgnextloc("\\m3        *Let's ronday-voo at our Junk&    Shop..^2./", "obj_ch2_cyber01_slash_Step_0_gml_579_0")
    gml_Script_c_msgnextloc("\\m1        *We jammed the door shut^1, but&    we'll kick it open!/", "obj_ch2_cyber01_slash_Step_0_gml_580_0")
    gml_Script_c_msgnextloc("\\m3        *Alright everyone^1, let's go!/%", "obj_ch2_cyber01_slash_Step_0_gml_581_0")
    gml_Script_c_sel(sw)
    gml_Script_c_sprite(500)
    gml_Script_c_soundplay(51)
    gml_Script_c_shakeobj()
    gml_Script_c_talk()
    gml_Script_c_wait_box(2)
    gml_Script_c_sel(sw)
    gml_Script_c_sprite(1774)
    gml_Script_c_flip("x")
    gml_Script_c_wait_box(3)
    gml_Script_c_sel(hg)
    gml_Script_c_flip("x")
    gml_Script_c_wait_box(8)
    gml_Script_c_sel(sw)
    gml_Script_c_flip("x")
    gml_Script_c_sprite(1770)
    gml_Script_c_sel(hg)
    gml_Script_c_flip("x")
    gml_Script_c_wait_talk()
    gml_Script_c_var_lerp_instance(djtableb, "x", djtableb.x, 2216, 15)
    gml_Script_c_var_lerp_instance(djtableb, "y", djtableb.y, 260, 15)
    gml_Script_c_wait(10)
    gml_Script_c_sel(sw)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect(2235, 188, 10)
    gml_Script_c_sel(hg)
    gml_Script_c_autowalk(0)
    gml_Script_c_walkdirect_wait(2274, 197, 10)
    gml_Script_c_var_instance(nisekk, "depth", 10000)
    gml_Script_c_var_lerp_instance(nisekk, "x", 2120, 2226, 15)
    gml_Script_c_var_lerp_instance(nisekk, "y", 167, 71, 15)
    gml_Script_c_wait(45)
    gml_Script_c_wait(10)
    gml_Script_c_mus("stop")
    gml_Script_c_mus2("initloop", "music_guys.ogg", 0)
    gml_Script_c_wait(10)
    gml_Script_c_var_lerp_instance(sw_actor, "vspeed", 0, -10, 60)
    gml_Script_c_var_lerp_instance(hg_actor, "vspeed", 0, -10, 60)
    gml_Script_c_var_lerp_instance(nisekk, "vspeed", 0, -10, 60)
    gml_Script_c_var_lerp_instance(djtableb, "vspeed", 0, -10, 60)
    gml_Script_c_mus2("volume", 0, 90)
    gml_Script_c_wait(60)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("r")
    gml_Script_c_walkdirect(2005, 102, 30)
    gml_Script_c_delayfacing(31, "l")
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("r")
    gml_Script_c_walkdirect(2057, 107, 30)
    gml_Script_c_delayfacing(31, "l")
    gml_Script_c_pannable(1)
    gml_Script_c_panobj(kr_actor, 30)
    gml_Script_c_wait(35)
    gml_Script_c_pannable(0)
    gml_Script_c_mus("free_all")
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
    var _temp_local_var_17 = djtableb
    var _temp_local_var_18 = nisekk
}
if (con == 50 && (!gml_Script_i_ex(895)))
{
    gml_Script_snd_free_all()
    con = 0
    global.interact = 0
    global.encounterno = 52
    global.facing = 0
    global.plot = 60
    global.flag[34] = 0
}
