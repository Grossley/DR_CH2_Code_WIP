draw_sprite(spr_tplogo_ch1, 0, (x - 30), (y + 30))
draw_sprite(spr_tensionbar_ch1, 1, x, y)
16777215
"mainbig"
flashsiner += 1
tamt = ((apparent / global.maxtension) * 100)
maxed = 0
if (tamt < 100)
{
    draw_text((x - 30), (y + 70), ((apparent / global.maxtension) * 100))
    draw_text((x - 25), (y + 95), "%")
}
if (tamt >= 100)
{
    maxed = 1
    65535
    draw_text((x - 28), (y + 70), "M")
    draw_text((x - 24), (y + 90), "A")
    draw_text((x - 20), (y + 110), "X")
}
if ((apparent - global.tension) < 20)
    apparent = global.tension
if (apparent < global.tension)
    apparent += 20
if (apparent > global.tension)
    apparent -= 20
if (apparent != current)
{
    changetimer += 1
    if (changetimer > 15)
    {
        if ((apparent - current) > 0)
            current += 2
        if ((apparent - current) > 10)
            current += 2
        if ((apparent - current) > 25)
            current += 3
        if ((apparent - current) > 50)
            current += 4
        if ((apparent - current) > 100)
            current += 5
        if ((apparent - current) < 0)
            current -= 2
        if ((apparent - current) < -10)
            current -= 2
        if ((apparent - current) < -25)
            current -= 3
        if ((apparent - current) < -50)
            current -= 4
        if ((apparent - current) < -100)
            current -= 5
        if ((apparent - current) < 3)
            current = apparent
    }
}
if (current > 0)
{
    if (apparent < current)
    {
        255
        draw_rectangle((x + 3), ((y + sprite_height) - 1), ((x + sprite_width) - 1), ((y + sprite_height) - ((current / global.maxtension) * sprite_height)), false)
        4235519
        draw_rectangle((x + 3), ((y + sprite_height) - 1), ((x + sprite_width) - 1), ((y + sprite_height) - ((apparent / global.maxtension) * sprite_height)), false)
    }
    if (apparent > current)
    {
        16777215
        draw_rectangle((x + 3), ((y + sprite_height) - 1), ((x + sprite_width) - 1), ((y + sprite_height) - ((apparent / global.maxtension) * sprite_height)), false)
        4235519
        if (maxed == 1)
            merge_color(c_yellow, c_orange, 0.5)
        draw_rectangle((x + 3), ((y + sprite_height) - 1), ((x + sprite_width) - 1), ((y + sprite_height) - ((current / global.maxtension) * sprite_height)), false)
    }
    if (apparent == current)
    {
        4235519
        if (maxed == 1)
            merge_color(c_yellow, c_orange, 0.5)
        draw_rectangle((x + 3), ((y + sprite_height) - 1), ((x + sprite_width) - 1), ((y + sprite_height) - ((current / global.maxtension) * sprite_height)), false)
    }
}
if (global.tensionselect > 0)
{
    tsiner += 1
    16777215
    (((tsiner / 8) * 0.5) + 0.2)
    theight = ((y + sprite_height) - ((current / global.maxtension) * sprite_height))
    theight2 = (theight + ((global.tensionselect / global.maxtension) * sprite_height))
    if (theight2 > ((y + sprite_height) - 1))
    {
        theight2 = ((y + sprite_height) - 1)
        4210752
        0.7
    }
    draw_rectangle((x + 3), theight2, ((x + sprite_width) - 1), theight, false)
    1
}
if (apparent > 20 && apparent < global.maxtension)
    draw_sprite(spr_tensionmarker_ch1, 0, (x + 3), ((y + sprite_height) - ((current / global.maxtension) * sprite_height)))
draw_sprite(spr_tensionbar_ch1, 0, x, y)
