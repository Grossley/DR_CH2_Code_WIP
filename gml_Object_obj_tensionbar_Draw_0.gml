var _ex;
if (global.chapter == 2 && 837)
{
    if (obj_battlecontroller.gigaqueencon != 0)
        return;
}
if (!healthbar_surf)
    healthbar_surf = surface_create(96, 250)
healthbar_surf
draw_clear_alpha(c_white, 0)
yy = gml_Script___view_get(1, 0)
y = (yy + 40)
draw_sprite(spr_tensionbar, 1, 0, 0)
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
        draw_rectangle(3, ((0 + sprite_height) - 1), ((0 + sprite_width) - 1), ((0 + sprite_height) - ((current / global.maxtension) * sprite_height)), false)
        4235519
        draw_rectangle(3, ((0 + sprite_height) - 1), ((0 + sprite_width) - 1), ((0 + sprite_height) - ((apparent / global.maxtension) * sprite_height)), false)
    }
    if (apparent > current)
    {
        16777215
        draw_rectangle(3, ((0 + sprite_height) - 1), ((0 + sprite_width) - 1), ((0 + sprite_height) - ((apparent / global.maxtension) * sprite_height)), false)
        4235519
        if (maxed == 1)
            merge_color(c_yellow, c_orange, 0.5)
        draw_rectangle(3, ((0 + sprite_height) - 1), ((0 + sprite_width) - 1), ((0 + sprite_height) - ((current / global.maxtension) * sprite_height)), false)
    }
    if (apparent == current)
    {
        4235519
        if (maxed == 1)
            merge_color(c_yellow, c_orange, 0.5)
        draw_rectangle(3, ((0 + sprite_height) - 1), ((0 + sprite_width) - 1), ((0 + sprite_height) - ((current / global.maxtension) * sprite_height)), false)
    }
}
shit = 0
@@try_hook@@(2224, 2272)
if (global.tensionselect >= 0)
    shit = 1
// WARNING: Popz'd an empty stack.
if (shit == 2)
    40
if (global.tensionselect > 0)
{
    tsiner += 1
    16777215
    (((tsiner / 8) * 0.5) + 0.2)
    theight = ((0 + sprite_height) - ((current / global.maxtension) * sprite_height))
    theight2 = (theight + ((global.tensionselect / global.maxtension) * sprite_height))
    if (theight2 > ((0 + sprite_height) - 1))
    {
        theight2 = ((0 + sprite_height) - 1)
        4210752
        0.7
    }
    draw_rectangle(3, theight2, ((0 + sprite_width) - 1), theight, false)
    1
}
if (apparent > 20 && apparent < global.maxtension)
    draw_sprite(spr_tensionmarker, 0, 3, ((0 + sprite_height) - ((current / global.maxtension) * sprite_height)))
draw_sprite(spr_tensionbar, 0, 0, 0)
3
draw_sprite_ext(spr_tensionbar_cutout, 0, 0, 0, 1, 1, 0, c_white, 1)
0
// WARNING: Popz'd an empty stack.
draw_surface(healthbar_surf, x, y)
draw_sprite(spr_tplogo, 0, (x - 30), (y + 30))
16777215
"mainbig"
flashsiner += 1
tamt = ((apparent / global.maxtension) * 100)
maxed = 0
if (tamt < 100)
{
    draw_text((x - 30), (y + 70), ((apparent / global.maxtension) * 100))
    draw_text((x - 25), (y + 95), gml_Script_stringsetloc("%", "obj_tensionbar_slash_Draw_0_gml_18_0"))
}
if (tamt >= 100)
{
    maxed = 1
    65535
    draw_text((x - 28), (y + 70), gml_Script_stringsetloc("M", "obj_tensionbar_slash_Draw_0_gml_25_0"))
    draw_text((x - 24), (y + 90), gml_Script_stringsetloc("A", "obj_tensionbar_slash_Draw_0_gml_26_0"))
    draw_text((x - 20), (y + 110), gml_Script_stringsetloc("X", "obj_tensionbar_slash_Draw_0_gml_27_0"))
}
