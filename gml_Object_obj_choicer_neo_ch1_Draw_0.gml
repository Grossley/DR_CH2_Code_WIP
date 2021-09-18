if (dar == 1)
    "main"
else
    "mainbig"
textx = xx
texty = yy
for (i = 0; i < (choicetotal + 1); i += 1)
{
    16777215
    if (mychoice == i)
        65535
    textx = textposx[i]
    texty = textposy[i]
    if (candraw == true)
        draw_text(textx, texty, global.choicemsg[i])
}
if (global.lang == "ja")
{
    if (candraw == false && choicetotal == 2 && mychoice == -1)
        hy += (20 * dar)
}
candraw = true
draw_sprite_ext(spr_heartsmall_ch1, 0, hx, hy, image_xscale, image_yscale, 0, c_white, 1)
