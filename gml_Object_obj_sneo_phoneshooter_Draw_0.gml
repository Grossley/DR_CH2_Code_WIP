16777215
if (state < 2)
{
    siner += swingdir
    if flash
        gml_Script_d3d_set_fog(true, c_white, 0, 1)
    // WARNING: Popz'd an empty stack.
    if flash
    {
        gml_Script_d3d_set_fog(false, c_black, 0, 0)
        flash = false
    }
    draw_line_width(x, y, xstart, -20, 2)
    image_angle = ((siner / 20) * 15)
    x = (xstart + (sin((siner / 20)) * 15))
    if (ydrop < 1)
        ydrop += 0.02
    y = lerp(-30, ystart, gml_Script_scr_ease_out(ydrop, -2))
}
else if (state == 3)
{
}
