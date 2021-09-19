var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7;
bg_y_pos = ((gml_Script_cameray() * 0.92) + 680)
bg_y_pos_alt = (((gml_Script_cameray() - 200) * 0.92) + 680)
bg_x_pos = (gml_Script_camerax() * 0.95)
if (!sprite_init)
{
    sprite_init = 1
    ground_height = sprite_get_height(spr_bg_cyber_parallax_ground)
    sky_height = sprite_get_height(spr_cyber_starry_sky_white)
    starry_sky_height = sprite_get_height(spr_cyber_starry_sky)
    stars_height = sprite_get_height(spr_cyber_starry_stars_2)
}
3133
gml_Script_scr_draw_sprite_tiled_area(3149, 0, 0, (bg_y_pos - 100), 0, (bg_y_pos - 100), ((((bg_y_pos - 100) + sky_height) - 1) + x.room_width), 1, 1, sky_blue, 1, 0)
var dark_y_pos = ((gml_Script_cameray() * 0.6) + 1800)
draw_set_color(merge_color(c_navy, c_black, 0.7))
draw_rectangle(0, 0, dark_y_pos.room_width, 0, bg_x_pos)
draw_set_color(merge_color(c_navy, c_black, 0.5))
draw_rectangle(0, dark_y_pos, bg_y_pos.room_width, 0, bg_y_pos)
gml_Script_scr_draw_sprite_tiled_area(3149, 0, 0, dark_y_pos, 0, dark_y_pos, (((dark_y_pos + sky_height) - 1) + x.room_width), 1, 1, sky_blue_dark, 1, bg_x_pos)
var dark_star_y_pos = ((gml_Script_cameray() * 0.75) + 250)
var dark_star_x_pos = (gml_Script_camerax() * 0.75)
gml_Script_scr_draw_sprite_tiled_area(3150, 0, dark_star_x_pos, dark_star_y_pos, dark_star_x_pos, dark_star_y_pos, ((dark_star_y_pos + (starry_sky_height * 3.5)) + x.room_width), 1, 1, 16777215, 1, bg_y_pos)
gml_Script_scr_draw_sprite_tiled_area(3154, 0, dark_star_x_pos, dark_star_y_pos, dark_star_x_pos, dark_star_y_pos, ((dark_star_y_pos + (stars_height * 3)) + x.room_width), 1, 1, 16777215, 1, ((bg_y_pos + ground_height) + bg_x_pos.room_width))
var dark_star_y_pos_2 = ((gml_Script_cameray() * 0.77) + 350)
var dark_star_x_pos_2 = (gml_Script_camerax() * 0.77)
gml_Script_scr_draw_sprite_tiled_area(3155, 0, (dark_star_x_pos_2 + 20), dark_star_y_pos_2, (dark_star_x_pos_2 + 20), dark_star_y_pos_2, ((dark_star_y_pos_2 + (stars_height * 2)) + x.room_width), 1, 1, 16777215, 1, 1)
xx = (gml_Script_camerax() * 0.94)
yy = ((gml_Script_cameray() * 0.86) + 1080)
draw_set_alpha(0.1)
var i = 0
while (i < 19)
{
    draw_set_color(merge_color(c_navy, c_black, (i * 0.05)))
    draw_rectangle(-100, bg_y_pos, ((bg_y_pos + (i * 15)).room_width + 100), 0, true)
    i++
}
draw_set_alpha(1)
buildoffset = 0
gml_Script_scr_draw_sprite_tiled_area(3134, 0, bg_x_pos, (bg_y_pos_alt + buildoffset), bg_x_pos, bg_y_pos_alt, (((bg_y_pos + ground_height) + 900) + bg_x_pos.room_width), 1, 1, 16777215, 1, true)
gml_Script_scr_draw_sprite_tiled_area(3134, 0, bg_x_pos, ((bg_y_pos_alt + 8) + buildoffset), bg_x_pos, (bg_y_pos_alt + 8), ((((bg_y_pos + 8) + ground_height) + 900) + bg_x_pos.room_width), 1, 1, 8421504, 1, 16777215)
siner++
draw_set_alpha(1)
gml_Script_draw_set_blend_mode(1)
gml_Script_scr_draw_sprite_tiled_area(3135, 0, bg_x_pos, ((bg_y_pos_alt + 8) + buildoffset), bg_x_pos, (bg_y_pos + 8), ((bg_y_pos + 8) + ground_height).room_width, 1, 1, 16777215, (0.5 + (sin((siner / 12)) * 0.1)), 1)
gml_Script_draw_set_blend_mode(0)
var ground_x = bg_x_pos
var ground_y = (((gml_Script_cameray() * 0.94) + 505) - 100)
3137
gml_Script_scr_draw_sprite_tiled_area(3137, 0, ground_x, ((bg_y_pos_alt + 8) + buildoffset), ground_x, (ground_y + 8), (((bg_y_pos_alt + 8) + ground_height) + ground_x.room_width), 1, 1, 8421504, 1, 0)
draw_set_color(c_black)
draw_rectangle(ground_x, (ground_y + 440), ((((0 + (ground_y + 500).room_height) + 2) + ground_x.room_width) + 100), ground_x, (bg_y_pos_alt + buildoffset))
draw_set_color(merge_color(c_dkgray, c_navy, 0.3))
draw_rectangle((gml_Script_camerax() - 80), (ground_y + 400), (gml_Script_camerax() + 720), (ground_y + 640), false)
draw_set_alpha(0.3)
i = 0
var _temp_local_var_5 = ground_y
var _temp_local_var_6 = ((bg_y_pos_alt + ground_height) + ground_x.room_width)
var _temp_local_var_7 = 1
var _temp_local_var_1 = true
var _temp_local_var_2 = 16777215
var _temp_local_var_3 = 1
while (i < 6)
{
    draw_set_color(c_black)
    draw_rectangle((gml_Script_camerax() - 80), ((ground_y + 380) + (i * 20)), (gml_Script_camerax() + 760), (ground_y + 600), false)
    i++
}
draw_set_alpha(1)
for (i = 0; i < 1; i++)
    draw_sprite_ext(spr_blackTile_20alpha, 0, 0, (((ground_y + 320) + 4) - 40), room_scale, 0.9, 0, c_white, 1)
for (i = 0; i < 3; i++)
    draw_sprite_ext(spr_blackTile_20alpha, 0, 0, ((ground_y + 360) - 40), room_scale, 1, 0, c_white, 1)
for (i = 0; i < 5; i++)
    draw_sprite_ext(spr_blackTile_20alpha, 0, 0, ((ground_y + 400) - 40), room_scale, 1, 0, c_white, 1)
for (i = 0; i < 7; i++)
    draw_sprite_ext(spr_blackTile_20alpha, 0, 0, ((ground_y + 440) - 40), room_scale, 1, 0, c_white, 1)
for (i = 0; i < 9; i++)
    draw_sprite_ext(spr_blackTile_20alpha, 0, 0, ((ground_y + 480) - 40), room_scale, 1, 0, c_white, 1)
draw_set_color(c_black)
draw_rectangle(-100, ((ground_y + 400) - 40), 2000, ((obj_sneo_friedpipis).room_height + 10), ground_x)
