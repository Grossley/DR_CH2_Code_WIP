if instance_exists(obj_mainchara)
    checkX = (obj_mainchara.x + 20)
timer += 2
c_rainbow = make_color_hsv((timer % 255), 255, 255)
curColor = merge_color(merge_color(c_white, c_rainbow, 0.5), c_black, 0.2)
draw_set_color(curColor)
if (createAndStay == 0)
{
    draw_rectangle(594, 110, 664, 220, false)
    draw_rectangle(670, 110, 704, 220, false)
    draw_rectangle(710, 110, 748, 220, false)
    draw_rectangle(754, 110, 796, 220, false)
    draw_rectangle(802, 110, 852, 220, false)
    draw_rectangle(858, 110, 928, 220, false)
    draw_rectangle(934, 110, 968, 220, false)
    draw_rectangle(1000, 110, 1050, 220, false)
    draw_rectangle(1056, 110, 1106, 220, false)
    draw_rectangle(1138, 110, 1188, 220, false)
    draw_rectangle(1194, 110, 1242, 220, false)
    draw_rectangle(1248, 110, 1282, 220, false)
    draw_rectangle(1314, 110, 1356, 220, false)
    draw_rectangle(1362, 110, 1380, 220, false)
    draw_rectangle(1386, 110, 1436, 220, false)
    draw_rectangle(1442, 110, 1488, 220, false)
}
if (createAndStay == 1)
{
    if (checkX >= 594)
        newcount = 1
    if (count < newcount)
        count = newcount
    if (checkX >= 670)
        newcount = 2
    if (count < newcount)
        count = newcount
    if (checkX >= 710)
        newcount = 3
    if (count < newcount)
        count = newcount
    if (checkX >= 754)
        newcount = 4
    if (count < newcount)
        count = newcount
    if (checkX >= 802)
        newcount = 5
    if (count < newcount)
        count = newcount
    if (checkX >= 858)
        newcount = 6
    if (count < newcount)
        count = newcount
    if (checkX >= 934)
        newcount = 7
    if (count < newcount)
        count = newcount
    if (checkX >= 1000)
        newcount = 8
    if (count < newcount)
        count = newcount
    if (checkX >= 1056)
        newcount = 9
    if (count < newcount)
        count = newcount
    if (checkX >= 1138)
        newcount = 10
    if (count < newcount)
        count = newcount
    if (checkX >= 1194)
        newcount = 11
    if (count < newcount)
        count = newcount
    if (checkX >= 1248)
        newcount = 12
    if (count < newcount)
        count = newcount
    if (checkX >= 1314)
        newcount = 13
    if (count < newcount)
        count = newcount
    if (checkX >= 1362)
        newcount = 14
    if (count < newcount)
        count = newcount
    if (checkX >= 1386)
        newcount = 15
    if (count < newcount)
        count = newcount
    if (checkX >= 1442)
        newcount = 16
    if (count < newcount)
        count = newcount
    if (count >= 1)
        draw_rectangle(594, 110, 664, 220, false)
    if (count >= 2)
        draw_rectangle(670, 110, 704, 220, false)
    if (count >= 3)
        draw_rectangle(710, 110, 748, 220, false)
    if (count >= 4)
        draw_rectangle(754, 110, 796, 220, false)
    if (count >= 5)
        draw_rectangle(802, 110, 852, 220, false)
    if (count >= 6)
        draw_rectangle(858, 110, 928, 220, false)
    if (count >= 7)
        draw_rectangle(934, 110, 968, 220, false)
    if (count >= 8)
        draw_rectangle(1000, 110, 1050, 220, false)
    if (count >= 9)
        draw_rectangle(1056, 110, 1106, 220, false)
    if (count >= 10)
        draw_rectangle(1138, 110, 1188, 220, false)
    if (count >= 11)
        draw_rectangle(1194, 110, 1242, 220, false)
    if (count >= 12)
        draw_rectangle(1248, 110, 1282, 220, false)
    if (count >= 13)
        draw_rectangle(1314, 110, 1356, 220, false)
    if (count >= 14)
        draw_rectangle(1362, 110, 1380, 220, false)
    if (count >= 15)
        draw_rectangle(1386, 110, 1436, 220, false)
    if (count >= 16)
        draw_rectangle(1442, 110, 1488, 220, false)
    if (count == 16)
    {
        if (global.plot < 67)
            global.plot = 67
    }
}
draw_set_color(c_white)
