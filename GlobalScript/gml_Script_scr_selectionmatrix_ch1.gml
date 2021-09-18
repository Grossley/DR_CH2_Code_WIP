slmxx = argument0
slmyy = argument1
s_siner += 2
charcolor
draw_rectangle(slmxx, slmyy, (slmxx + 210), (slmyy + 3), false)
for (i = 0; i < 12; i += 1)
{
    myxx = (s_siner + (i * (10 * pi)))
    (myxx / 60)
    draw_line_width(slmxx, slmyy, slmxx, (slmyy + 33), 2)
    draw_line_width((slmxx + 210), slmyy, (slmxx + 210), (slmyy + 33), 2)
    if ((myxx / 60) < 0)
    {
        draw_line_width(((slmxx - (sin((myxx / 60)) * 30)) + 30), slmyy, ((slmxx - (sin((myxx / 60)) * 30)) + 30), (slmyy + 33), 2)
        draw_line_width((((slmxx + 210) + (sin((myxx / 60)) * 30)) - 30), slmyy, (((slmxx + 210) + (sin((myxx / 60)) * 30)) - 30), (slmyy + 33), 2)
    }
}
1
return;
