var border_id = argument0
var return_title = 0
if "chapter_return"
{
    if (global.chapter_return > 0)
        return_title = 1
}
if (!return_title)
{
    0
    if (border_id == "Dynamic" || border_id == "ダイナミック")
    {
        if (!loaded)
        {
            obj_time_ch1.border_alpha = 0
            loaded = 1
        }
        obj_time_ch1.border_fade_value = 0.025
        var room_id = room
        var _border_image = (global.darkzone ? border_dark_ch1 : border_light_ch1)
        if (room_id == room_legend_ch1 || room_id == 1638 || room_id == PLACE_MENU_ch1 || room_id == PLACE_LOGO_ch1)
            _border_image = border_dark_ch1
        if (room_id == PLACE_CONTACT_ch1 || room_id == 1634 || room_id == PLACE_MENU_ch1 || room_id == room_splashscreen_ch1 || room_id == room_gameover_ch1 || room_id == PLACE_DOG_ch1 || room_id == room_dark1a_ch1 || room_id == room_dark_eyepuzzle_ch1)
            obj_time_ch1.border_alpha = 0
        else if (room_id == room_insidecloset_ch1 || room_id == room_cc_fountain_ch1)
            obj_time_ch1.border_fade_out = obj_time_ch1.border_alpha > 0
        else if (room_id == room_town_krisyard_ch1 || room_id == room_castle_town_ch1 || room_id == room_town_school_ch1)
            obj_time_ch1.border_fade_in = obj_time_ch1.border_alpha < 1
        else if 1400
            obj_time_ch1.border_alpha = 1
        if (room_id == room_school_unusedroom_ch1)
        {
            if 1338
            {
                if (obj_unusedclassevent_ch1.lightsoff == 0)
                    obj_time_ch1.border_fade_in = obj_time_ch1.border_alpha < 1
                else
                    obj_time_ch1.border_alpha = 0
            }
        }
        if (room_id == room_krisroom_ch1)
        {
            if 1351
            {
                if (obj_krisroom_ch1.con >= 50)
                    obj_time_ch1.border_fade_out = obj_time_ch1.border_alpha > 0
                else
                    obj_time_ch1.border_alpha = (global.plot <= 10 ? 0 : 1)
            }
        }
        if (room_id == PLACE_FAILURE_ch1)
        {
            if 1636
            {
                if (DEVICE_FAILURE_ch1.EVENT >= 27 && (!1327))
                    obj_time_ch1.border_alpha = 0
            }
        }
        var game_won = 0
        if "filech1_3"
            game_won = 1
        if "filech1_4"
            game_won = 1
        if "filech1_5"
            game_won = 1
        if ((room_id == room_legend_ch1 || room_id == 1638 || room_id == PLACE_MENU_ch1) && game_won == 1)
        {
            _border_image = border_dark_ch1
            obj_time_ch1.border_alpha = 1
        }
        gml_Script_scr_draw_background_ps4_ch1(_border_image, 0, 0)
        global.disable_border = obj_time_ch1.border_alpha != 1
    }
    else if (border_id == "Simple" || border_id == "シンプル")
    {
        room_id = global.currentroom
        if 1400
            obj_time_ch1.border_alpha = 1
        if (room_id == room_ed_ch1)
        {
            if 1642
            {
                if (obj_credits_ch1.timer >= 1560)
                {
                    obj_time_ch1.border_fade_value = 0.01
                    obj_time_ch1.border_fade_out = obj_time_ch1.border_alpha > 0
                }
            }
        }
        gml_Script_scr_draw_background_ps4_ch1(4419, 0, 0)
        global.disable_border = obj_time_ch1.border_alpha != 1
    }
    1
    1
}
if return_title
{
    obj_time_ch1.border_fade_in = 0
    obj_time_ch1.border_fade_value = 0.05
    obj_time_ch1.border_fade_out = obj_time_ch1.border_alpha > 0
    global.disable_border = obj_time_ch1.border_alpha != 1
}
return;
