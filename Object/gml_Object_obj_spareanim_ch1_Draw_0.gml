var _temp_local_var_3, _temp_local_var_5, _temp_local_var_7;
if (t >= 6 && t <= 26)
{
    afterimage += 1
    gml_Script_d3d_set_fog_ch1(1, 16777215, 0, 1)
    draw_sprite_ext(sprite_index, image_index, (x + (afterimage * 4)), y, image_xscale, image_yscale, 0, image_blend, (0.7 - (afterimage / 25)))
    draw_sprite_ext(sprite_index, image_index, (x + (afterimage * 8)), y, image_xscale, image_yscale, 0, image_blend, (0.4 - (afterimage / 30)))
    gml_Script_d3d_set_fog_ch1(0, 0, 0, 0)
}
if (t < 6)
{
    if (t < 5)
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, (1 - (neotone / 4)))
    gml_Script_d3d_set_fog_ch1(1, 16777215, 0, 1)
    maxwhite = (t / 5)
    if (maxwhite > 1)
        maxwhite = 1
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, (maxwhite - (tone / 5)))
    gml_Script_d3d_set_fog_ch1(0, 0, 0, 0)
}
if (t >= 1 && t <= 5)
{
    i = 0
    while (i < 2)
    {
        star[starcount] = gml_Script_instance_create_ch1((x + random(sprite_width)), (y + random(sprite_height)), 1403)
        var _temp_local_var_3 = star[starcount]
        image_xscale = 2
        image_yscale = 2
        sprite_index = spr_sparestar_anim_ch1
        image_alpha = 2
        image_speed = 0.25
        hspeed = -3
        gravity = 0.5
        gravity_direction = 0
    }
}
if (t >= 5 && t <= 30)
{
    i = 0
    while (i < starcount)
    {
        var _temp_local_var_5 = star[i]
        image_angle += 10
        image_alpha -= 0.1
        if (image_alpha <= 0)
            instance_destroy()
    }
}
if (t >= 5 && t < 10)
    tone += 1
if (t >= 9)
{
    neotone += 1
    if (neotone >= 30)
    {
        i = 0
        while (i < starcount)
        {
            var _temp_local_var_7 = star[i]
            instance_destroy()
        }
        instance_destroy()
    }
}
t += 1