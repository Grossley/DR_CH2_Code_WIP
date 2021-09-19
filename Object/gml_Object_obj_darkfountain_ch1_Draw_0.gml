siner += 1
hscroll += 1
if (hscroll > 240)
    hscroll -= 240
if (adjust == 0)
{
    colcol = make_color_hsv((siner / 4), (160 + (sin((siner / 32)) * 60)), 255)
    gml_Script___background_set_colour(make_color_hsv((siner / 4), 255, ((sin((siner / 16)) * 40) + 60)))
}
if (adjust == 1)
{
    colcol = merge_color(colcol, c_white, 0.06)
    gml_Script___background_set_colour(merge_color(gml_Script___background_get_colour(), c_black, 0.06))
}
if (adjust == 2)
{
    if (slowdown < 1)
        slowdown += 0.02
    siner -= slowdown
    bgsiner -= (slowdown / 16)
    gml_Script___background_set_colour(merge_color(gml_Script___background_get_colour(), c_white, 0.03))
}
bgsiner += 0.0625
if (bgsiner > 7)
    bgsiner -= 7
bg = 4378
gml_Script_draw_background_tiled_ext_ch1(bg, (0 - siner), (0 - siner), 2, 2, colcol, (0.7 * eyebody))
gml_Script_draw_background_tiled_ext_ch1(bg, (-240 + hscroll), (0 + siner), 2, 2, colcol, (0.3 * eyebody))
draw_set_color(c_black)
0
draw_rectangle((((obj_sneo_friedpipis).room_width / 2) + (sprite_width / 2)), 999, 280, 0, false)
draw_sprite_ext(sprite_index, 0, (((obj_sneo_friedpipis - ((bgsiner * 280) / 7)).room_width / 2) - (sprite_width / 2)), 2, 2, 0, colcol, 0x000001, (((obj_npc_cafe).room_width / 2) - (sprite_width / 2)))
draw_sprite_ext(sprite_index, 0, (((obj_npc_cafe - ((bgsiner * 280) / 7)).room_width / 2) - (sprite_width / 2)), 2, 2, 0, colcol, 0x000001, 0)
sprite_index
draw_sprite_ext(sprite_index, 0, ((((obj_npc_cafe - ((bgsiner * 280) / 7)).room_width / 2) - (sprite_width / 2)) + (sin((siner / 16)) * 12)), 2, 2, 0, colcol, 0.5, 0)
draw_sprite_ext(sprite_index, 0, ((((obj_sneo_friedpipis - ((bgsiner * 280) / 7)).room_width / 2) - (sprite_width / 2)) - (sin((siner / 16)) * 12)), 2, 2, 0, colcol, 0.5, ((((obj_sneo_friedpipis - ((bgsiner * 280) / 7)).room_width / 2) - (sprite_width / 2)) + (sin((siner / 16)) * 12)))
draw_sprite_ext(sprite_index, 0, ((((obj_npc_cafe - ((bgsiner * 280) / 7)).room_width / 2) - (sprite_width / 2)) - (sin((siner / 16)) * 12)), 2, 2, 0, colcol, 0.5, 2)
draw_sprite_ext(spr_fountainbottom_ch1, 0, (((-8 + (sin((siner / 16)) * 8)).room_width / 2) - (sprite_width / 2)), 2, 2, 0, colcol, 0.3, 2)
draw_sprite_ext(spr_fountainbottom_ch1, 0, (((noone + (sin((siner / 16)) * 4)).room_width / 2) - (sprite_width / 2)), 2, 2, 0, colcol, 0.5, 0)
draw_sprite_ext(spr_fountainbottom_ch1, 0, (((obj_sneo_friedpipis).room_width / 2) - (sprite_width / 2)), 2, 2, 0, colcol, 0x000001, colcol)
draw_set_color(gml_Script___background_get_colour())
draw_rectangle(0, 280, 640, 480, false)
var _temp_local_var_1 = 0.5
