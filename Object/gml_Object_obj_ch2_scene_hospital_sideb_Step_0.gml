if (con == 1)
{
    with (blackscreen)
        depth = 500
    timer = 0
    global.interact = 1
    con = 2
    right_press = 0
}
if (con == 2)
{
    global.interact = 1
    timer++
    if (timer > 120)
    {
        timer = 0
        con = 3
    }
}
if (con == 3)
{
    global.msc = 1215
    gml_Script_scr_text(global.msc)
    d = gml_Script_d_make()
    global.currentsong[0] = gml_Script_snd_init("flashback_excerpt.ogg")
    global.currentsong[1] = gml_Script_mus_loop(global.currentsong[0])
    gml_Script_snd_pitch(global.currentsong[1], 0.95)
    con = 4
}
if (con == 5 && gml_Script_d_ex())
{
    if (global.msc == 1217 && global.flag[928] == 2)
    {
        if (gml_Script_right_p() && gml_Script_scr_getmsgno() < 5)
        {
            remcon = 5
            con = -10
            maked = 1
            global.msc = 1218
            steptimer = -30
            gml_Script_snd_play(snd_step1)
            gml_Script_snd_play(snd_step2)
            with (obj_writer)
                instance_destroy()
            global.flag[928] = 3
        }
    }
}
if (con == 4 && gml_Script_d_ex())
{
    if (global.msc == 1216)
    {
        if (gml_Script_right_p() && gml_Script_scr_getmsgno() < 5)
        {
            remcon = 5
            con = -10
            maked = 1
            global.msc = 1217
            steptimer = 50
            gml_Script_snd_play(snd_step1)
            gml_Script_snd_play(snd_step2)
            with (obj_writer)
                instance_destroy()
            global.flag[928] = 2
        }
    }
    if (global.msc == 1215)
    {
        if (gml_Script_right_p() && gml_Script_scr_getmsgno() < 11)
        {
            remcon = 4
            con = -10
            maked = 1
            global.msc = 1216
            steptimer = 0
            gml_Script_snd_play(snd_step1)
            gml_Script_snd_play(snd_step2)
            with (obj_writer)
                instance_destroy()
            global.flag[928] = 1
        }
    }
}
if (con == 4 && (!gml_Script_i_ex(obj_dialoguer)))
{
    global.msc = 1217
    gml_Script_scr_text(global.msc)
    d = gml_Script_d_make()
    con = 5
}
if (con == 5)
{
    if (global.flag[20] == 1)
    {
        gml_Script_snd_free_all()
        with (obj_writer)
            shake = 1
    }
    if (global.flag[20] == 0)
    {
        with (obj_writer)
            shake = 0
    }
}
if (con == 5 && (!gml_Script_i_ex(obj_dialoguer)))
{
    timer++
    if (timer == 1)
        gml_Script_snd_play(snd_escaped)
    if (timer >= 90)
    {
        con = 6
        timer = 0
    }
}
if (con == 6 && (!gml_Script_i_ex(obj_dialoguer)))
{
    global.msc = 1219
    gml_Script_scr_text(global.msc)
    d = gml_Script_d_make()
    con = 7
}
if (con == 7 && (!gml_Script_i_ex(obj_dialoguer)))
{
    timer++
    with (blackscreen)
        image_alpha -= 0.04
    if (timer > 30)
        con = 8
}
if (con == 8)
{
    con = -1
    global.interact = 0
    gml_Script_snd_free_all()
    global.flag[915] = 20
    instance_destroy()
}
if (con == -10)
{
    global.facing = 1
    obj_mainchara.x += 0.85
    obj_mainchara.y += 0.08
    steptimer++
    if (steptimer >= 60)
    {
        con = remcon
        if (maked == 1)
        {
            maked = 0
            gml_Script_scr_text(global.msc)
            d = gml_Script_d_make()
        }
    }
}
