var _temp_local_var_1, _temp_local_var_2;
if (canchoose == true)
{
    var _temp_local_var_1 = (dar == 1 ? "main" : "mainbig")
    textx = xx
    texty = yy
    for (i = 0; i < (choicetotal + 1); i += 1)
    {
        var _temp_local_var_2 = (mychoice == i ? 65535 : 16777215)
        textx = textposx[i]
        texty = textposy[i]
        draw_text(textx, texty, global.choicemsg[i])
    }
    draw_sprite_ext(spr_heartsmall, 0, hx, hy, image_xscale, image_yscale, 0, c_white, 1)
}
