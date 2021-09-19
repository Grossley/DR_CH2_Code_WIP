draw_set_alpha(fadealpha)
draw_set_color(c_white)
if (state == 0)
    var _temp_local_var_1 = 1
else if (state == 1)
{
    var _temp_local_var_11 = partframe[1] == 0
    var _temp_local_var_12 = sneo
}
else
    var _temp_local_var_13 = 0
if 1
{
    siner++
    draw_self()
    draw_line_width(x, y, (obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[5]), -20, 2)
    image_angle = (sin((siner / 20)) * 10)
    if (ringtimer > 0)
    {
        image_angle += ((ringtimer % 2) == 0 ? 1 : -1)
        ringtimer--
        if (ringtimer <= 6)
            sneo.partmode = 5
    }
    x = (xstart + (sin(((siner + 0) / 20)) * 10))
    if (ydrop < 1)
        ydrop += 0.02
    y = lerp(-30, ystart, gml_Script_scr_ease_out(ydrop, -2))
}
else
{
    xx = (sneo + partxoff[1])
    yy = (sneo + partyoff[1])
    draw_line_width(xx, yy, (obj_spamton_neo_enemy.x + obj_spamton_neo_enemy.partx[5]), -20, 2)
    var _temp_local_var_5 = (sneo + party[1])
    var _temp_local_var_6 = (gml_Script_scr_orbity(0, 0, 20, 50, partrot[1]) + sneo.y)
    var _temp_local_var_7 = sneo
    var _temp_local_var_8 = (sneo + partx[1])
    var _temp_local_var_9 = (gml_Script_scr_orbitx(0, 0, 20, 50, partrot[1]) + sneo.x)
    var _temp_local_var_10 = sneo
}
draw_set_alpha(1)
