var _temp_local_var_1, _temp_local_var_2;
xx = gml_Script___view_get(0, 0)
yy = gml_Script___view_get(1, 0)
siner += 0.5
siner2 += 1
draw_set_alpha(image_alpha)
draw_set_color(c_black)
-10
draw_set_alpha(1)
var _temp_local_var_1 = -10
var _temp_local_var_2 = (((obj_sneo_friedpipis).room_height + 10).room_width + 10)
if (destroy == 0)
{
    if (image_alpha <= 1)
        image_alpha += 0.1
}
gml_Script_draw_background_tiled_ext_ch1(4380, round((-100 + siner)), round((-100 + siner)), 1, 1, image_blend, (image_alpha / 2))
gml_Script_draw_background_tiled_ext_ch1(4380, round((-200 - siner2)), round((-210 - siner2)), 1, 1, image_blend, image_alpha)
if (siner >= 100)
    siner -= 100
if (siner2 >= 100)
    siner2 -= 100
if (destroy == 1)
{
    image_alpha -= 0.1
    if (image_alpha <= 0)
        instance_destroy()
}