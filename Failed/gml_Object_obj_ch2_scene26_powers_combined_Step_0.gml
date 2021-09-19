if (con == 0)
{
    image_xscale = lerp(image_xscale, 2, 0.15)
    image_yscale = lerp(image_yscale, 2, 0.15)
    image_alpha = lerp(image_alpha, 1, 0.15)
    if (image_alpha >= 0.9)
    {
        if gml_Script_i_ex(890)
        {
            with (obj_actor)
                image_alpha = lerp(image_alpha, 0, 0.5)
        }
    }
    if (image_alpha >= 0.95)
    {
        con = 1
        image_alpha = 1
        gml_Script_scr_speaker("berdly")
        gml_Script_msgsetloc(0, "\\EJ* With a splendid base.../%", "obj_ch2_scene26_powers_combined_slash_Step_0_gml_16_0")
        var d = gml_Script_d_make()
        d.side = 1
    }
}
if (con == 1 && (!gml_Script_d_ex()))
{
    color_lerp = (round((lerp(color_lerp, 1, 0.15) * 100)) / 100)
    image_blend = merge_color(c_white, c_black, color_lerp)
    if (color_lerp >= 0.95)
    {
        con = 2
        image_blend = c_black
    }
}
if (con == 2)
{
    if (current_index > -1)
    {
        if (recruit_con == 0)
        {
            recruit_con = 1
            if (!is_undefined(ds_map_find_value(recruit_dialog_map, array_get(recruit, current_index))))
            {
                var dialog = ds_map_find_value(recruit_dialog_map, array_get(recruit, current_index))
                gml_Script_scr_speaker("no_name")
                gml_Script_msgset(0, dialog)
                d = gml_Script_d_make()
                d.side = 1
            }
            else
                show_debug_message(("could not find recruit info for " + string(recruit[current_index])))
        }
        if (recruit_con == 1)
        {
            recruit_con = 2
            recruit_col = recruit_color[current_index]
            current_sprite = gml_Script_scr_dark_marker((x + (current_side * 80)), y, ds_map_find_value(recruit_sprite_map, array_get(recruit, current_index)))
            current_sprite.depth = (depth - 100)
            if (current_side == -1)
                current_sprite.image_xscale = -3
            else
                current_sprite.image_xscale = 3
            current_sprite.image_yscale = 3
            current_sprite.image_alpha = 0
        }
        if (recruit_con == 2)
        {
            if (current_side == -1)
                current_sprite.image_xscale = lerp(current_sprite.image_xscale, -2, 0.15)
            else
                current_sprite.image_xscale = lerp(current_sprite.image_xscale, 2, 0.15)
            current_sprite.image_yscale = lerp(current_sprite.image_yscale, 2, 0.15)
            current_sprite.image_alpha = lerp(current_sprite.image_alpha, 1, 0.15)
            current_sprite.x = lerp((x + (current_side * 80)), (x + (current_side * 20)), current_sprite.image_alpha)
            if (current_sprite.image_alpha >= 0.95 && (!gml_Script_d_ex()))
            {
                recruit_con = 3
                color_lerp = 0
                current_sprite.image_alpha = 1
                start_color = 0
                end_color = 16777215
                fade_in_out = 1
            }
        }
        if (recruit_con == 3)
        {
            color_lerp = (round((lerp(color_lerp, 1, 0.35) * 100)) / 100)
            current_sprite.x = lerp((x + (current_side * 20)), x, color_lerp)
            if (current_side == -1)
                current_sprite.image_xscale = lerp(-2, -1, color_lerp)
            else
                current_sprite.image_xscale = lerp(2, 1, color_lerp)
            current_sprite.image_yscale = lerp(2, 1, color_lerp)
            current_sprite.image_blend = merge_color(c_white, c_black, color_lerp)
            if (color_lerp >= 0.95)
            {
                recruit_con = 4
                color_lerp = 0
                current_sprite.image_blend = c_black
                start_color = 16777215
                end_color = 0
                miniflash = 0
            }
        }
        if (recruit_con == 4)
        {
            color_lerp = (round((lerp(color_lerp, 1, 0.35) * 100)) / 100)
            if (color_lerp >= 0.95)
            {
                fade_in_out = 0
                recruit_con = 5
                color_lerp = 0
                image_blend = c_black
                instance_destroy(current_sprite)
                current_index++
                if (current_index >= array_length_1d(recruit))
                {
                    current_index = -1
                    current_side = 0
                }
                else
                {
                    recruit_con = 0
                    current_side *= -1
                }
            }
        }
    }
    else
        con = 3
}
if (con == 3)
{
    if (thrash_con == 0)
    {
        thrash_con = 0.5
        gml_Script_scr_speaker("rouxls")
        gml_Script_msgsetloc(0, "* And...^1. mosteth of all.../%", "obj_ch2_scene26_powers_combined_slash_Step_0_gml_159_0")
        d = gml_Script_d_make()
        d.side = 1
    }
    if (thrash_con == 0.5 && (!gml_Script_d_ex()))
        thrash_con = 1
    if (thrash_con == 1)
    {
        if (thrash == noone)
        {
            gml_Script_scr_speaker("rouxls")
            gml_Script_msgsetloc(0, "\\E6* Whatevereth this thingeth is!!!/%", "obj_ch2_scene26_powers_combined_slash_Step_0_gml_160_0")
            d = gml_Script_d_make()
            d.side = 1
            thrash = gml_Script_instance_create((gml_Script_camerax() + 320), (gml_Script_cameray() + 220), obj_thrashmachine)
            thrash.s = 6
            thrash.drawfeet = 1
            thrash.animate = 0
            thrash.depth = 150
            thrash.override_color = 0
            thrash.glow = 0
        }
        thrash.s = (round((lerp(thrash.s, 3, 0.1) * 100)) / 100)
        if (thrash.s <= 3.25 && (!gml_Script_d_ex()))
        {
            thrash.s = 3
            orb_con = 1
            thrash_con = 2
            color_lerp = 0
            fade_in_out = 1
            start_color = 0
            end_color = 16777215
        }
    }
    if (thrash_con == 2)
    {
        if (thrash.glow < 1)
            thrash.glow = lerp(thrash.glow, 1, 0.35)
        if (thrash.glow >= 0.99 && thrash_con <= 2)
        {
            thrash.glow = 1
            thrash_con = 2.5
            d = gml_Script_instance_create(x, (y + 26), obj_ch2_scene26_henshin_flash)
            d.depth = 151
            big_square = gml_Script_instance_create(x, y, obj_screen_color)
            big_square.blend_mode = 1
            big_square.image_blend = c_white
            alarm[0] = 45
        }
    }
}
if (con == 4)
{
    if (thrash_con == 3)
    {
        instance_destroy(thrash)
        instance_destroy(obj_ch2_scene26_henshin_flash)
        instance_destroy(big_square)
        thrash = gml_Script_instance_create((gml_Script_camerax() + 320), (gml_Script_cameray() + 240), obj_ch2_scene26_transformation)
        thrash.depth = (depth - 30)
        thrash.image_xscale = 3
        thrash.image_yscale = 3
        thrash_con = 4
        alarm[0] = 45
    }
}
if (con == 5)
{
    if (thrash_con == 4)
    {
        gml_Script_snd_play(139)
        gml_Script_snd_play(235)
        thrash_con = 5
        thrash.max_index = 3
        thrash.image_play = 1
        thrash.image_index++
        alarm[0] = 30
    }
}
if (con == 6)
{
    if (thrash_con == 5)
    {
        gml_Script_snd_play(139)
        gml_Script_snd_play(235)
        thrash.max_index = 6
        thrash.image_play = 1
        thrash.image_index++
        thrash_con = 6
        alarm[0] = 30
    }
}
if (con == 7)
{
    if (thrash_con == 6)
    {
        gml_Script_snd_play(139)
        gml_Script_snd_play(235)
        thrash.image_play = 1
        thrash.image_index++
        thrash.max_index = 9
        thrash_con = 7
        alarm[0] = 30
    }
}
if (con == 8)
{
    if (thrash_con == 7)
    {
        thrash.max_index = 11
        thrash.image_index++
        thrash.speed = 30
        thrash.gravity = -2.5
        thrash.direction = 270
        thrash_con = 8
        alarm[0] = 10
    }
}
if (con == 9)
{
    if (thrash_con == 8)
    {
        thrash.image_index++
        thrash_con = 9
        alarm[0] = 5
    }
}
if (con == 10)
{
    if (thrash_con == 9)
    {
        thrash.max_index = 13
        gml_Script_snd_play(153)
        gml_Script_snd_play(159)
        thrash_con = 10
        alarm[0] = 5
    }
}
if (con == 11)
{
    if (thrash_con == 10)
    {
        thrash.image_index++
        thrash_con = 11
        alarm[0] = 40
    }
}
if (con == 12)
{
    con = 99
    if gml_Script_i_ex(974)
    {
        with (obj_ch2_scene26)
            con = 15
    }
}
