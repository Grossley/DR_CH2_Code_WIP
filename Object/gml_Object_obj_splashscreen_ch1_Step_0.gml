if loaded
{
    if visit_shop
    {
        if (os_type == os_ps4)
        {
            if (commerce_dialog_open == true)
            {
                var result = psn_np_commerce_dialog_tick()
                if (result != 0)
                    commerce_dialog_open = false
            }
        }
        buffer++
        if gml_Script_left_p_ch1()
        {
            gml_Script_snd_play_ch1(snd_menumove_ch1)
            heart_pos_x = heart_pos_x_default
        }
        if gml_Script_right_p_ch1()
        {
            gml_Script_snd_play_ch1(snd_menumove_ch1)
            heart_pos_x = (heart_pos_x_default + heart_pos_x_h_padding)
        }
        if (gml_Script_button1_p_ch1() && buffer >= 3)
        {
            buffer = 0
            gml_Script_snd_play_ch1(snd_menumove_ch1)
            if (heart_pos_x == heart_pos_x_default)
            {
                if (os_type == os_switch)
                    switch_show_store(72199087622348800)
                else if (os_type == os_ps4)
                {
                }
            }
            else if (heart_pos_x == (heart_pos_x_default + heart_pos_x_h_padding))
                visit_shop = false
        }
        if gml_Script_button2_p_ch1()
        {
            gml_Script_snd_play_ch1(snd_menumove_ch1)
            visit_shop = false
        }
    }
    else
    {
        if gml_Script_up_p_ch1()
        {
            gml_Script_snd_play_ch1(snd_menumove_ch1)
            if (global.lang == "en")
            {
                if (heart_pos_y == ((yy + 288) + line_height))
                    heart_pos_y -= line_height
            }
            else if (heart_pos_y_ja == ((yy + 328) + select_padding))
                heart_pos_y_ja -= select_padding
        }
        if gml_Script_down_p_ch1()
        {
            gml_Script_snd_play_ch1(snd_menumove_ch1)
            if (global.lang == "en")
            {
                if (heart_pos_y == (yy + 288))
                    heart_pos_y += line_height
            }
            else if (heart_pos_y_ja == (yy + 328))
                heart_pos_y_ja += select_padding
        }
        if gml_Script_button1_p_ch1()
        {
            gml_Script_snd_play_ch1(snd_menumove_ch1)
            if (global.lang == "en")
            {
                if (heart_pos_y == (yy + 288))
                {
                    heart_pos_x = heart_pos_x_default
                    visit_shop = true
                }
                else if (heart_pos_y == ((yy + 288) + line_height))
                {
                    global.store_prompt = true
                    gml_Script_ossafe_game_end()
                }
            }
            else if (heart_pos_y_ja == (yy + 328))
            {
                heart_pos_x = heart_pos_x_default
                visit_shop = true
            }
            else if (heart_pos_y_ja == ((yy + 328) + select_padding))
            {
                global.store_prompt = true
                gml_Script_ossafe_game_end()
            }
        }
    }
}
else
{
    if (text_alpha_a < 1)
        text_alpha_a += 0.015
    if (text_alpha_a >= 1)
    {
        if (text_alpha_b < 1)
            text_alpha_b += 0.015
    }
    loaded = text_alpha_b >= 1
}
