if (active == true)
{
    if gml_Script_scr_debug()
    {
        if keyboard_check_pressed(ord("D"))
        {
            if (global.tempflag[19] == 0)
                global.tempflag[19] = 1
            else
                global.tempflag[19] = 0
        }
    }
    if (global.tempflag[19] == 0)
        gml_Script_scr_dbox()
    if (!gml_Script_i_ex(writer))
        instance_destroy()
    else if (global.tempflag[19] == 1)
    {
        draw_set_color(c_red)
        gml_Script_scr_84_set_draw_font("mainbig")
        draw_text((gml_Script_camerax() + 16), (gml_Script_cameray() + (174 * (global.darkzone + 1))), writer.msgno)
    }
}
