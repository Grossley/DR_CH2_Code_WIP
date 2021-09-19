if (con == 0)
{
    if (!shortened)
    {
        JA_XOFF = 0
        con = 1
        alarm[4] = 220
    }
    else
    {
        con = 9
        y -= 220
    }
}
if (con == 1)
{
    y -= 1
    image_index = imageanimator
    imageanimator += 0.1
    global.interact = 1
}
if (con == 2)
{
    image_index = 0
    con = 3
    alarm[4] = 60
}
if (con == 4)
{
    con = 5
    global.typer = 42
    global.msg[0] = gml_Script_stringsetloc("(It was as if your very SOUL was glowing...)/%", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_36_0")
    gml_Script_instance_create((80 + JA_XOFF), 80, obj_writer)
}
if (con == 5 && (!instance_exists(obj_writer)))
{
    con = 7
    alarm[4] = 60
}
if (con == 8)
{
    con = 9
    gml_Script_scr_speaker("sneo")
    gml_Script_msgsetloc(0, "* NOT!!!/%", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_53_0")
    var d = gml_Script_d_make()
    d.side = 0
}
if (con == 9 && (!gml_Script_d_ex()))
{
    con = 10
    obj_mainchara.x = x
    obj_mainchara.y = y
    if (sneo == noone)
    {
        sneo = gml_Script_instance_create(255, (gml_Script_cameray() - 300), obj_spamton_neo_enemy)
        sneo.myself = 1
        sneo.facing = 1
        sneo.gravity = 4
        sneo.shadow_amount = 1
        sneo.partmode = 30
    }
}
if (con == 10)
{
    if (sneo.y >= (y - 140))
    {
        con = 12
        alarm[4] = 60
        gml_Script_snd_play(170)
        gml_Script_snd_play(166)
        var _temp_local_var_3 = sneo
        gravity = 0
        vspeed = 0
    }
}
if (con == 13)
{
    if (!shortened)
    {
        if (sneo.gravity == 0)
            gml_Script_snd_play_x(154, 1, 0.5)
        var _temp_local_var_4 = sneo
        gravity = -2
    }
    else
    {
        con = 15
        alarm[4] = 60
        sneo.partmode = 33
        gml_Script_scr_lerpvar_instance(sneo, "x", sneo.x, (sneo.x + 200), 15, 1, "out")
    }
}
if (con == 14)
{
    sneo.gravity = 4
    if (!sneo_fall_sfx)
    {
        sneo_fall_timer++
        if (sneo_fall_timer == 15)
        {
            sneo_fall_sfx = 1
            gml_Script_snd_play_x(154, 1, 0.5)
        }
    }
    if (sneo.y >= (y - 140))
    {
        con = 15
        alarm[4] = 60
        gml_Script_snd_play(61)
        var _temp_local_var_5 = sneo
        gravity = 0
        vspeed = 0
    }
}
if (con == 16)
{
    con = 17
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    gml_Script_c_mus("free_all")
    gml_Script_c_mus2("initloop", "spamton_neo_meeting.ogg", 0)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_var_lerp_instance(sneo, "shadow_amount", 1, 0, 30)
    gml_Script_c_var_instance(sneo, "partmode", 1)
    gml_Script_c_var_instance(sneo, "headforceframe", 1)
    if (!shortened)
    {
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* LET ME SAY/", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_193_0")
        gml_Script_c_msgnextloc("* LET ME SAY [Thanks ]/", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_194_0")
        gml_Script_c_msgnextloc("* THANKS TO YOUR [Total Jackass stunts] I HAVE [Becomed] NEO./", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_195_0")
        gml_Script_c_msgnextloc("* AND NOW IT'S MY [Mansion]^1! MY [City]^1! MY [World]!/%", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_196_0")
        gml_Script_c_msgside("top")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 22)
        gml_Script_c_var_instance(sneo, "headforceframe", 2)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* SO WHY ARE YOU [Stealing] THE [Fountain]!?/", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_205_0")
        gml_Script_c_msgnextloc("* TO [$!$!] ME OVER RIGHT AT THE [Good part]!? WHAT ARE YOU^1, A [Gameshow Host]!?/%", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_206_0")
        gml_Script_c_msgside("top")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 1)
        gml_Script_c_var_instance(sneo, "headforceframe", 1)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* AH^1, KID^1, FORGET IT. I'M AN [HonestMan]./", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_215_0")
        gml_Script_c_msgnextloc("* I'LL LET YOU [Pay] YOUR WAY OUT OF THIS ONE!!/%", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_216_0")
        gml_Script_c_msgside("top")
        gml_Script_c_talk_wait()
        gml_Script_c_var_instance(sneo, "partmode", 1)
        gml_Script_c_var_instance(sneo, "headforceframe", 2)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* [Pay].../%", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_225_0")
        gml_Script_c_msgside("top")
        gml_Script_c_talk_wait()
        gml_Script_c_wait(15)
        gml_Script_c_var_instance(sneo, "partmode", 3)
        gml_Script_c_var_instance(sneo, "headforceframe", 1)
        gml_Script_c_wait(45)
        gml_Script_c_speaker("sneo")
        gml_Script_c_msgsetloc(0, "* WITH YOUR [Rapidly-Shrinking] LIFE!!!/%", "obj_fountainkris_ch2_sideb_slash_Step_0_gml_238_0")
        gml_Script_c_talk_wait()
    }
    if shortened
    {
        gml_Script_c_var_instance(sneo, "partmode", 3)
        gml_Script_c_var_instance(sneo, "headforceframe", 1)
    }
    gml_Script_c_wait(15)
    gml_Script_c_var_instance(sneo, "partmode", 41)
    gml_Script_c_soundplay(248)
    var _n = 0
    repeat (10)
    {
        gml_Script_c_mus2("pitch", (1.3 + (_n / 15)), 0)
        gml_Script_c_wait(12)
        _n++
    }
    gml_Script_c_mus("free")
    gml_Script_c_wait(30)
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
if (con == 17 && (!gml_Script_i_ex(895)))
{
    con = 19
    alarm[0] = 120
    with (obj_mainchara)
        visible = false
    savekrisx = obj_mainchara.x
    savekrisy = obj_mainchara.y
    draw_fountain = 0
    if gml_Script_i_ex(230)
    {
        with (obj_darkfountain)
            adjust = 3
    }
    if (gml_Script_scr_debug() && debug_skip_battle == 1)
    {
        con = 21
        return;
    }
    if (global.tempflag[34] == 0)
        global.tempflag[34] = 1
    global.flag[9] = 2
    global.batmusic[0] = gml_Script_snd_init("spamton_neo_mix_ex_wip.ogg")
    global.flag[54] = 571
    gml_Script_scr_battle(61, 1, sneo, 0, 0)
    if shortened
    {
    }
    with (obj_battleback)
        instance_destroy()
    global.flag[9] = 1
}
if (con == 21 || (con == 21 && forcend == 1))
{
    con = 22
    alarm[4] = 90
    global.flag[309] = 9
    global.flag[456] = 1
    with (obj_heroparent)
        instance_destroy()
    instance_deactivate_object(obj_darkfountain)
    savekrisx = obj_mainchara.x
    savekrisy = obj_mainchara.y
    with (obj_spamton_neo_enemy)
        x = 9999
    gml_Script_scr_weaponget(21)
    if (noroom == true)
        global.flag[468] = 2
    gml_Script_scr_keyitemget(13)
}
if (con == 23 && (!gml_Script_d_ex()))
{
    con = 99
    gml_Script_snd_free_all()
    _event = gml_Script_instance_create((x + (sprite_width / 2)), ((y + (sprite_width / 2)) + 20), obj_darkfountain_event)
    _event.depth = (blackall.depth - 1)
}
