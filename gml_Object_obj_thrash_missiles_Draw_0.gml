if (vspeed <= 0)
{
    gml_Script_scr_drawpart_crop((x - 15), (y - (sprite_height / 2)), (x + (sprite_height / 2)), (ystart - 26))
    if (y > (ystart - 16))
        hspeed = -4
    else if (hspeed < 0)
        hspeed += 0.5
}
else
    // WARNING: Popz'd an empty stack.
