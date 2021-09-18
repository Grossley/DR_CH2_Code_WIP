if (stompwait > 0)
{
    stompwait--
    if (stompwait <= 0)
    {
        active = true
        depth += 1
    }
    if (direction == 270)
        draw_sprite_ext(spr_exclamation_mark_appear, 9, x, obj_growtangle.y, 1, 1, 0, ((stompwait % 4) < 2 ? c_red : c_yellow), 1)
    255
    draw_rectangle((x - 23), (obj_growtangle.y - 69), (x + 23), (obj_growtangle.y + 69), true)
    draw_rectangle(((x - 23) + 1), ((obj_growtangle.y - 69) + 1), ((x + 23) + 1), ((obj_growtangle.y + 69) + 1), true)
    16777215
    if (direction == 90)
        draw_sprite_ext(spr_exclamation_mark_appear, 9, x, ((obj_growtangle.y + 40) - stompwait), 1, 1, 0, ((stompwait % 4) < 2 ? c_red : c_orange), 1)
    if (direction == 0)
        draw_sprite_ext(spr_exclamation_mark_appear, 9, ((obj_growtangle.x - 40) + stompwait), y, 1, 1, 0, ((stompwait % 4) < 2 ? c_red : c_orange), 1)
    if (direction == 180)
        draw_sprite_ext(spr_exclamation_mark_appear, 9, ((obj_growtangle.x + 40) - stompwait), y, 1, 1, 0, ((stompwait % 4) < 2 ? c_red : c_orange), 1)
}
// WARNING: Popz'd an empty stack.
if (hurttimer > 0)
{
    hurttimer--
    x = ((hurtx - 4) + random(8))
    y = ((hurty - 4) + random(8))
    image_blend = c_red
}
if (hittimer > 0)
    hittimer--
