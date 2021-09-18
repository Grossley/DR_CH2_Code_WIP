if loaded
{
    if visit_shop
    {
        if (os_type == os_ps4)
        {
            if (commerce_dialog_open == 1)
            {
                var result = 
                if (result != 0)
                    commerce_dialog_open = 0
            }
        }
        buffer++
        492
        heart_pos_x = heart_pos_x_default
        492
        heart_pos_x = (heart_pos_x_default + heart_pos_x_h_padding)
        if (buffer >= 3)
        {
            buffer = 0
            492
            if (heart_pos_x == heart_pos_x_default)
            {
                if (os_type == os_switch)
                    72199087622348800
                else if (os_type == os_ps4)
                {
                }
            }
            else if (heart_pos_x == (heart_pos_x_default + heart_pos_x_h_padding))
                visit_shop = 0
        }
        492
        visit_shop = 0
    }
    else
    {
        492
        if (global.lang == "en")
        {
            if (heart_pos_y == ((yy + 288) + line_height))
                heart_pos_y -= line_height
        }
        else if (heart_pos_y_ja == ((yy + 328) + select_padding))
            heart_pos_y_ja -= select_padding
        492
        if (global.lang == "en")
        {
            if (heart_pos_y == (yy + 288))
                heart_pos_y += line_height
        }
        else if (heart_pos_y_ja == (yy + 328))
            heart_pos_y_ja += select_padding
        492
        if (global.lang == "en")
        {
            if (heart_pos_y == (yy + 288))
            {
                heart_pos_x = heart_pos_x_default
                visit_shop = 1
            }
            else if (heart_pos_y == ((yy + 288) + line_height))
            {
                global.store_prompt = 1
                // WARNING: Popz'd an empty stack.
            }
        }
        else if (heart_pos_y_ja == (yy + 328))
        {
            heart_pos_x = heart_pos_x_default
            visit_shop = 1
        }
        else if (heart_pos_y_ja == ((yy + 328) + select_padding))
        {
            global.store_prompt = 1
            // WARNING: Popz'd an empty stack.
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
