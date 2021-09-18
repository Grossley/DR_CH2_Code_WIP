var _temp_local_var_5;
if (facealpha < 1)
    facealpha += 0.2
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, facealpha)
facealpha
if (type == 0 || type == 3)
{
    "main"
    mycolor
    draw_text((x + 70), (y + 10), mystring)
}
if (type == 1 && active == true && getrid == 0)
{
    "main"
    mycolor
    draw_text((x + 70), (y + 15), mystring)
    finished = 1
}
if (type == 2 || type == 4)
{
    if (active == true)
    {
        "main"
        mycolor
        if (finished == 0)
        {
            partstring += string_char_at(mystring, part)
            part += 1
            if (part >= (string_length(mystring) + 1))
                finished = 1
        }
        draw_text(((x + 70) + random(1)), ((y + 15) + random(1)), partstring)
    }
}
if writergod
{
    if (finished == 1 && getrid == 0)
    {
        var _temp_local_var_5 = writergod
        if (halt == 0)
            halt = 1
    }
}
else
    // WARNING: Popz'd an empty stack.
if (getrid == 1)
{
    direction = (-nowdir)
    speed += 2
    if (type == 3 || type == 4)
    {
    }
}
1
