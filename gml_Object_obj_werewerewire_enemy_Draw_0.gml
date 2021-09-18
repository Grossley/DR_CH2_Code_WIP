if (state == 3)
{
    0.5
    // WARNING: Popz'd an empty stack.
}
if (stop_anim == 0)
{
    siner_timer += image_speed
    if (siner_timer >= 1)
    {
        siner_timer -= 1
        siner += 8
    }
    var addvalue = ((siner / (34 / m)) / (4 / m))
    if (addvalue >= 0.2)
        anim_timer_2 += addvalue
}
if (state == 0)
{
    fsiner += 1
    if (stop_anim == 0)
        gml_Script_draw_monster_body_part(idlesprite, anim_timer_2, x, y)
    else
        // WARNING: Popz'd an empty stack.
}
if (becomeflash == false)
    flash = false
becomeflash = false
