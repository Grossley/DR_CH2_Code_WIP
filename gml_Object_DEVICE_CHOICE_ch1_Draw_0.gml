"main"
xfade = ((10 - fadebuffer) / 10)
if (xfade > 1)
    xfade = 1
if (TYPE <= 2)
{
    if (DRAWHEART == 1)
        draw_sprite_ext(IMAGE_SOUL_BLUR_ch1, 0, (HEARTX + xoff), (HEARTY + yoff), 1, 1, 0, c_white, (0.6 * xfade))
    xfade
    if (TYPE < 2)
    {
        for (i = 0; i <= XMAX; i += 1)
        {
            16777215
            if (CURX == i)
                65535
            draw_text(NAMEX[i][0], NAMEY[i][0], NAME[i][0])
        }
    }
    if (TYPE == 2)
    {
        for (i = 0; i <= YMAX; i += 1)
        {
            16777215
            if (CURY == i)
                65535
            draw_text(NAMEX[0][i], NAMEY[0][i], NAME[0][i])
        }
    }
    1
}
if (TYPE == 3)
{
    if (DRAWHEART == 1)
        draw_sprite_ext(IMAGE_SOUL_BLUR_ch1, 0, HEARTX, HEARTY, 1, 1, 0, c_white, (0.5 * xfade))
    xfade
    for (j = 0; j <= YMAX; j += 1)
    {
        for (i = 0; i <= XMAX; i += 1)
        {
            16777215
            if (CURX == i && CURY == j)
                65535
            var str = NAME[i][j]
            if (string_char_at(str, 1) == "(" && str > 3)
                str = string_copy(str, 4, (str - 3))
            if (str != "<" && str != ">")
                draw_text(NAMEX[i][j], NAMEY[i][j], str)
        }
    }
    16777215
    if (NAMESTRING == STRINGMAX)
        65535
    var width = NAMESTRING
    draw_text(((320 - width) / 2), PLAYERNAMEY, NAMESTRING)
    1
}
