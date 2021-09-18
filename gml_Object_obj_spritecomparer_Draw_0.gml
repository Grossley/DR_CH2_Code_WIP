for (i = 0; i < 3; i++)
{
    xx[i] = mysprite[i]
    yy[i] = mysprite[i]
}
if 52
{
    checkstring = get_string("Enter sprite_index of first sprite, OR enemy name from the object", "")
    if (("spr_" + checkstring) + "_idle")
    {
        sprite[0] = (("spr_" + checkstring) + "_idle")
        sprite[1] = (("spr_" + checkstring) + "_hurt")
        sprite[2] = (("spr_" + checkstring) + "_spared")
    }
    else if checkstring
        sprite[0] = checkstring
    0
}
if 53
{
    checksprite = get_string("Enter sprite_index of second sprite.", "")
    if (checksprite != -1)
        sprite[1] = checksprite
    0
}
if 54
{
    checksprite = get_string("Enter sprite_index of third sprite.", "")
    if (checksprite != -1)
        sprite[2] = checksprite
    0
}
draw_sprite_ext(mysprite[0], image_index, (x - 120), y, image_xscale, image_yscale, image_angle, image_blend, 1)
draw_sprite_ext(mysprite[1], image_index, (x + 120), y, image_xscale, image_yscale, image_angle, image_blend, 1)
draw_sprite_ext(mysprite[2], image_index, (x + 120), (y + 120), image_xscale, image_yscale, image_angle, image_blend, 1)
if (!55)
    draw_sprite_ext(mysprite[0], image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1)
if ((!56) && (!hitbox_mode))
    draw_sprite_ext(mysprite[1], image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1)
if ((!57) && (!hitbox_mode))
    draw_sprite_ext(mysprite[2], image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1)
if 72
{
    if (hitbox_mode == 0)
        hitbox_mode = 1
    else
        hitbox_mode = 0
}
ii = 3
if hitbox_mode
    ii = 1
var bboxl = mysprite[0]
var bboxu = mysprite[0]
var bboxr = mysprite[0]
var bboxd = mysprite[0]
2
for (i = 0; i < ii; i++)
{
    if (i == 0)
        65535
    if (i == 1)
        255
    draw_rectangle(((x + (xx[i] * 2)) - 1), ((y + (yy[i] * 2)) - 1), ((x + (xx[i] * 2)) + 1), ((y + (yy[i] * 2)) + 1), false)
    if (i == 0)
        draw_rectangle(((x + (xx[i] * 2)) - 121), ((y + (yy[i] * 2)) - 1), ((x + (xx[i] * 2)) - 119), ((y + (yy[i] * 2)) + 1), false)
    if (i == 1)
        draw_rectangle(((x + (xx[i] * 2)) + 119), ((y + (yy[i] * 2)) - 1), ((x + (xx[i] * 2)) + 121), ((y + (yy[i] * 2)) + 1), false)
    draw_text(0, (i * 20), ((xx[i] + ", ") + string(yy[i])))
    var height = mysprite[i]
    var width = mysprite[i]
    16711680
    draw_rectangle((x - (xx[i] * 2)), (y - (yy[i] * 2)), ((x + (width * image_xscale)) - (xx[i] * 2)), ((y + (height * image_xscale)) - (yy[i] * 2)), true)
    if hitbox_mode
    {
        var ix = image_xscale
        var iy = image_yscale
        255
        0.5
        draw_rectangle((x + (bboxl * ix)), (y + (bboxu * iy)), (x + (bboxr * ix)), (y + (bboxd * iy)), false)
        1
    }
}
if 49
    s = 0
if 50
    s = 1
if 51
    s = 2
var m = 5
if 40
{
    movetimer++
    go = 0
    if (movetimer >= m)
        go = 1
    if (go && (!hitbox_mode))
        sprite_set_offset(mysprite[s], xx[s], (yy[s] - 1))
}
if 38
{
    movetimer++
    go = 0
    if (movetimer >= m)
        go = 1
    if (go && (!hitbox_mode))
        sprite_set_offset(mysprite[s], xx[s], (yy[s] + 1))
}
if 37
{
    movetimer++
    go = 0
    if (movetimer >= m)
        go = 1
    if (go && (!hitbox_mode))
        sprite_set_offset(mysprite[s], (xx[s] + 1), yy[s])
}
if 39
{
    movetimer++
    go = 0
    if (movetimer >= m)
        go = 1
    if (go && (!hitbox_mode))
        sprite_set_offset(mysprite[s], (xx[s] - 1), yy[s])
}
if hitbox_mode
{
    if 39
        bboxr++
    if 37
        bboxr--
    sprite_set_bbox(mysprite[0], bboxl, bboxu, bboxr, bboxd)
}
if 83
{
    257
    sprite_set_bbox(sprite[0], bboxl, bboxu, bboxr, bboxd)
    for (i = 0; i < 3; i++)
        sprite_set_offset(sprite[i], xx[i], yy[i])
}
16777215
draw_text(20, 280, "1 or 2 or 3:select sprite to move\nPress 4 or 5 or 6:Change sprite\nPress 7 or 8 or 9: Visibility toggle\nArrows: Adjust.\nH: Edit hitbox of Sprite1\nS: Save changes (this play session only)")
if 82
    // WARNING: Popz'd an empty stack.
if 13
    gml_Script_instance_create(x, y, obj_noellevictory_example)
if 45
    // WARNING: Popz'd an empty stack.
