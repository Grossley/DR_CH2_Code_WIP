var _temp_local_var_1, _temp_local_var_2, _temp_local_var_4, _temp_local_var_5, _temp_local_var_7, _temp_local_var_10, _temp_local_var_11, _temp_local_var_13, _temp_local_var_15, _temp_local_var_17;
if 8
{
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (drawpic == 1)
{
    draw_sprite_ext(pic, 0, picx, picy, 1, 1, 0, c_white, ((con_alph * 4) / 4))
    draw_sprite_ext(picb, 0, picxb, picyb, 1, 1, 0, c_white, ((con_alphb * 4) / 4))
}
if (con == 3)
{
    pic = 2459
    picb = 314
    picyb = -50
    con = 3.1
    con_alphb = 0
    contimer = -100
    chunkfade = 0
    drawpic = 1
    flamecon = 0
    flamesiner = 0
    flamealph = 1
    flamey = 0
    global.typer = 41
}
if (con == 3.1)
{
    if (con_alph < 1 && contimer < 200)
        con_alph += 0.01
    flamesiner++
    contimer++
    if (contimer == 20)
    {
        gml_Script_msgsetloc(0, "When the LIGHT is&subsumed by SHADOW", "obj_legend_neo_slash_Draw_0_gml_38_0")
        wx = 88
        if jp
            wx = 62
        w = gml_Script_instance_create(wx, 185, obj_writer)
    }
    if (contimer == 200)
        var _temp_local_var_2 = w
    if (contimer >= 200 && contimer <= 300)
    {
        if (con_alphb < 1)
            con_alphb += 0.02
        if (picyb < 0)
            picyb += 0.5
        if (picy < 80)
            picy += 0.5
    }
    if (contimer == 400)
    {
        flamecon = 1
        flamealph = 0.7
        wave_siner = 0
        flameya = (room_height - 30)
        flameyb = room_height
        wave_maxa = 317
        wave_maxb = 318
        var _temp_local_var_4 = w
    }
    if (contimer == 600)
        var _temp_local_var_5 = w
    if (contimer >= 600 && contimer <= 680)
    {
        if (con_alphb < 1)
            con_alphb += 0.01
    }
    if (contimer == 800)
    {
        pic = picb
        picy = picyb
        pic = picb
        con_alphb = 0
        picb = 316
        var _temp_local_var_7 = w
    }
    if (contimer >= 800 && contimer <= 980)
    {
        if (con_alphb < 1)
            con_alphb += 0.01
    }
    if (contimer >= 1030 && contimer <= 1130)
        var _temp_local_var_10 = w
    if (contimer == 1160)
    {
        contimer = 0
        con = 4
    }
    if (flamecon == 1)
    {
        if (flameya.room_height - wave_maxa)
            flameya -= 1.5
        if (flameyb.room_height - wave_maxb)
            flameyb--
        thickness = 2
        wave_siner++
        flamesiner++
        flamealph
        for (i = 0; i < wave_maxa; i += thickness)
            draw_sprite_part(spr_cutscene_27_3_fire_1, 0, 0, (i * thickness), 400, (thickness + 2), (-10 + (sin(((wave_siner + (i * 8)) / 30)) * 12)), (((i * thickness) + flameya) + (sin((flamesiner / 16)) * 3)))
        1
    }
}
if (con == 4)
{
    con = 5
    contimer = 0
    pic = 319
    picb = 320
    con_alph = 0
    con_alphb = 0
    picx = 48
    picy = 60
    picxb = 48
    picyb = 60
    global.typer = 41
}
if (con == 5)
{
    contimer++
    if (contimer == 30)
    {
        gml_Script_msgsetloc(0, "The surviving Darkners,&crushed by the darkness", "obj_legend_neo_slash_Draw_0_gml_167_0")
        wx = 69
        if jp
            wx = 58
        w = gml_Script_instance_create(wx, 185, obj_writer)
    }
    if (contimer <= 100)
    {
        if (con_alph <= 1)
            con_alph += 0.01
    }
    if (contimer == 240)
        var _temp_local_var_11 = w
    if (contimer >= 240 && contimer <= 360)
    {
        if (con_alphb <= 1)
            con_alphb += 0.01
    }
    if (contimer == 420)
    {
        pic = picb
        picb = 321
        con_alphb = 0
        var _temp_local_var_13 = w
    }
    if (contimer >= 420 && contimer <= 520)
    {
        if (con_alphb <= 1)
            con_alphb += 0.01
    }
    if (contimer == 600)
    {
        pic = picb
        picb = 322
        con_alphb = 0
        var _temp_local_var_15 = w
    }
    if (contimer >= 600 && contimer <= 700)
    {
        if (con_alphb <= 1)
            con_alphb += 0.01
    }
    if (contimer == 840)
    {
        pic = picb
        con_alphb = 0
        var _temp_local_var_17 = w
    }
    if (contimer >= 840)
        con_alph -= 0.01
    if (contimer == 1080)
        gml_Script_instance_create(0, 0, obj_fadeout)
    if (contimer == 1100 && skipped == 0)
    {
        // WARNING: Popz'd an empty stack.
        global.flag[6] = 0
        gml_Script_instance_create(0, 0, obj_persistentfadein)
        if 2
            207
        else
            206
    }
}
if (border == 1)
{
    0
    draw_rectangle(-10, -10, 330, 27, false)
    draw_rectangle(-10, -10, 59, 300, false)
    draw_rectangle(400, -10, 260, 300, false)
    draw_rectangle(-10, 400, 330, 138, false)
}
if (border == 2)
{
    0
    draw_rectangle(-10, 180, 999, 482, false)
}
if (chunkfade == 0 && chunkamt > 0)
    chunkamt -= fadespeed
if (chunkfade == 1 && chunkamt < 1)
    chunkamt += fadespeed
fadecolor
alph = 0
if (chunkamt >= 0.25)
    alph = 0.25
if (chunkamt >= 0.5)
    alph = 0.5
if (chunkamt >= 0.75)
    alph = 0.75
if (chunkamt >= 1)
    alph = 1
alph
draw_rectangle(-10, -10, 330, 330, false)
1
if (ingame == 0)
{
    if (skipped == 0)
    {
        skipped = 1
        skiptimer = 0
        f = gml_Script_instance_create(0, 0, obj_fadeout)
        f.fadespeed = 0.08
        gml_Script_mus_volume(global.currentsong[1], 0, 15)
    }
    if (skipped == 1)
        skiptimer += 1
    if (skiptimer == 19)
    {
        global.currentsong[0]
        global.flag[6] = 0
    }
    if (skiptimer == 20)
        240
}
