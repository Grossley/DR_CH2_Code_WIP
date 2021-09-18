if (con == 0)
{
    timer++
    circle1alpha += 0.1
    if (timer == 10)
    {
        con = 1
        timer = 0
    }
}
if (con == 1)
{
    if (circle2alpha < 1)
        circle2alpha += 0.2
    if (circle1radius < circle2radius)
        circle2radius -= 2
    else
    {
        var a = 60
        for (i = 0; i < 6; i += 1)
        {
            bul = gml_Script_instance_create(x, y, obj_musical_note_bullet)
            if bul
            {
                bul.sprite_index = spr_musical_notes
                bul.grazepoints = 2
                bul.timepoints = 1
                bul.direction = (a + random(40))
                bul.speed = 5
                bul.friction = 0.2
            }
            a += 60
        }
        con = 2
        timer = 0
    }
}
if (con == 2)
{
    timer++
    circle1alpha += 0.2
    circle2alpha -= 0.2
    if (timer == 5)
        // WARNING: Popz'd an empty stack.
}
circle1alpha
circle1color
draw_sprite(s_kkHead, 0, (x - 32), (y - 21))
gml_Script_scr_draw_circle_width_qb(x, y, circle1radius, circle1width, 24)
circle2alpha
16777215
gml_Script_scr_draw_circle_width_qb(x, y, circle2radius, circle2width, 24)
1
