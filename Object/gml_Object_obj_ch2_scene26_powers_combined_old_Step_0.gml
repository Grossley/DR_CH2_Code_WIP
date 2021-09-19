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
        if (recruit_con == 1 && (!gml_Script_d_ex()))
        {
            recruit_con = 2
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
            if (current_sprite.image_alpha >= 0.95)
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
                orb_count++
                spin_speed += 0.5
                orb_ease = 0
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
if (con == 3 && (!gml_Script_d_ex()))
{
    if (thrash_con == 0)
    {
        thrash_con = 1
        gml_Script_scr_speaker("rouxls")
        gml_Script_msgsetloc(0, "* And...^1. mosteth of all.../", "obj_ch2_scene26_powers_combined_old_slash_Step_0_gml_167_0")
        gml_Script_msgnextloc("\\E6* Whatevereth this thingeth is!!!/%", "obj_ch2_scene26_powers_combined_slash_Step_0_gml_160_0")
        d = gml_Script_d_make()
        d.side = 1
    }
    if (thrash_con == 1 && (!gml_Script_d_ex()))
    {
        if (thrash == noone)
        {
            thrash = gml_Script_instance_create((gml_Script_camerax() + 320), (gml_Script_cameray() + 220), obj_thrashmachine)
            thrash.s = 6
            thrash.drawfeet = 0
            thrash.animate = 0
            thrash.depth = 150
            thrash.override_color = 0
            thrash.glow = 0
        }
        thrash.s = (round((lerp(thrash.s, 3, 0.1) * 100)) / 100)
        if (thrash.s <= 3.25)
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
        thrash.glow = lerp(thrash.glow, 1, 0.35)
        color_lerp = (round((lerp(color_lerp, 1, 0.35) * 100)) / 100)
        if (color_lerp >= 0.95)
        {
            thrash.glow = 1
            color_lerp = 1
            thrash_con = 3
            image_blend = c_white
            d = gml_Script_scr_following_afterimage(200, id)
            d.depth -= 1
            d.pivotx = 40
            d.pivoty = 10
            alarm[0] = 120
        }
    }
}
if (con == 4)
{
    con = 99
    if gml_Script_i_ex(974)
    {
        with (obj_ch2_scene26)
            con = 15
    }
}
