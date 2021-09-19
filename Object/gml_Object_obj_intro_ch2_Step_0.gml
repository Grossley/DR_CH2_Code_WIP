if (con == 0)
{
    if (!files_exist)
    {
        timer++
        if (timer == 75)
            con = 1
    }
    else
    {
        if (!show_queen)
            show_queen = 1
        if show_queen
        {
            timer++
            if (timer == 30)
            {
                queen_sprite = 3350
                gml_Script_scr_lerpvar("queen_y_pos", -150, (view_hport[0] / 4), 15, -1, "out")
                gml_Script_scr_lerpvar("queen_alpha", 0, 1, 10)
            }
            if (timer == 50)
            {
                queen_sprite = 1920
                queen_animate = 0
            }
            if (timer == 80)
            {
                queen_sprite = 1936
                queen_animate = 1
                gml_Script_snd_play(193)
            }
            if (timer == 130)
            {
                gml_Script_snd_play(133)
                queen_sprite = 1937
            }
            if (timer == 170)
                gml_Script_scr_lerpvar("queen_alpha", 1, 0, 10)
            if (timer == 200)
            {
                con = 99
                room_goto(PLACE_MENU)
            }
        }
    }
}
