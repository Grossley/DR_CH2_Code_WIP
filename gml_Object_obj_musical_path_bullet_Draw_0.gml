if (con == 0)
{
    timer++
    headalpha += 0.1
    circle1alpha += 0.1
    if (timer == 10)
    {
        con = 1
        timer = 0
        path_start(path, 10, path_action_stop, 0)
    }
}
if (con == 1)
{
    circle2alpha = lerp(0, 1, path_position)
    circle2radius = lerp(75, 31, path_position)
}
if (path_position == 1 && con == 1)
    con = 2
if (con == 2)
{
    con = 3
    var a = 60
    for (i = 0; i < 6; i += 1)
    {
        bul = gml_Script_instance_create(x, y, obj_musical_note_bullet)
        if bul
        {
            bul.sprite_index = spr_musical_notes
            bul.grazepoints = 2
            bul.timepoints = 1
            bul.direction = (a + random(24))
            bul.speed = 2
            bul.friction = 0
        }
        a += 60
    }
}
if (con == 3)
{
    headalpha -= 0.1
    if (headalpha < 0)
        // WARNING: Popz'd an empty stack.
}
headalpha
draw_sprite(spr_sweet_head, 0, x, y)
1
circle1alpha
255
gml_Script_scr_draw_circle_width_qb(x, y, circle1radius, circle1width, 24)
circle2alpha
16777215
gml_Script_scr_draw_circle_width_qb(x, y, circle2radius, circle2width, 24)
1
