scr_selectionmatrix = function(argument0, argument1) // gml_Script_scr_selectionmatrix
{
    slmxx = argument0
    slmyy = argument1
    s_siner += 2
    draw_set_color(charcolor)
    draw_rectangle(slmxx, slmyy, (slmxx + 210), (slmyy + 3), false)
    for (i = 0; i < 12; i += 1)
    {
        myxx = (s_siner + (i * (10 * pi)))
        draw_set_alpha(sin((myxx / 60)))
        draw_line_width(slmxx, (slmyy - 3), slmxx, (slmyy + 33), 2)
        draw_line_width(((slmxx + 210) + 1), (slmyy - 3), ((slmxx + 210) + 1), (slmyy + 33), 2)
        if (cos((myxx / 60)) < 0)
        {
            draw_line_width(((slmxx - (sin((myxx / 60)) * 30)) + 30), slmyy, ((slmxx - (sin((myxx / 60)) * 30)) + 30), (slmyy + 33), 2)
            draw_line_width((((slmxx + 210) + (sin((myxx / 60)) * 30)) - 30), slmyy, (((slmxx + 210) + (sin((myxx / 60)) * 30)) - 30), (slmyy + 33), 2)
        }
    }
    draw_set_alpha(1)
    return;
}

