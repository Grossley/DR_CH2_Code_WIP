var _temp_local_var_5;
if (global.darkzone == false)
{
    cx = gml_Script_camerax()
    cy = gml_Script_cameray()
    if instance_exists(obj_dialoguer)
    {
        if (obj_dialoguer.side == 0)
            cy += 84
    }
    if (facealpha < 1)
        facealpha += 0.2
    draw_sprite_ext(sprite_index, image_index, (x - cx), (y - cy), image_xscale, image_yscale, image_angle, image_blend, facealpha)
    draw_set_alpha(facealpha)
    if (type == 0 || type == 3)
    {
        gml_Script_scr_84_set_draw_font("main")
        draw_set_color(mycolor)
        draw_text(((x + 70) - cx), ((y + 10) - cy), string_hash_to_newline(mystring))
    }
    if (type == 1 && active == true && getrid == 0)
    {
        gml_Script_scr_84_set_draw_font("main")
        draw_set_color(mycolor)
        draw_text(((x + 70) - cx), ((y + 15) - cy), string_hash_to_newline(mystring))
        finished = 1
    }
    if (type == 2 || type == 4)
    {
        if (active == true)
        {
            gml_Script_scr_84_set_draw_font("main")
            draw_set_color(mycolor)
            if (finished == 0)
            {
                partstring += string_char_at(mystring, part)
                part += 1
                if (part >= (string_length(mystring) + 1))
                    finished = 1
            }
            draw_text((((x + 70) + random(1)) - cx), (((y + 15) + random(1)) - cy), string_hash_to_newline(partstring))
        }
    }
    if gml_Script_i_ex(writergod)
    {
        if (finished == 1 && getrid == 0)
        {
            var _temp_local_var_5 = writergod
            if (halt == 0)
                halt = 1
        }
    }
    else
        instance_destroy()
    if (getrid == 1)
    {
        direction = (-nowdir)
        speed += 2
        if (type == 3 || type == 4)
            instance_destroy()
    }
    draw_set_alpha(1)
}
