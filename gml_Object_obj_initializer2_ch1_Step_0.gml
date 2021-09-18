if (global.savedata_async_id >= 0)
    return;
if 1
{
    roomchoice = PLACE_CONTACT_ch1
    menu_go = 0
    if "filech1_0"
        menu_go = 1
    if "filech1_1"
        menu_go = 1
    if "filech1_2"
        menu_go = 1
    if "filech1_3"
        menu_go = 1
    if "dr.ini"
        menu_go = 1
    if "filech1_3"
        menu_go = 2
    if "filech1_4"
        menu_go = 2
    if "filech1_5"
        menu_go = 2
    if (menu_go == 0)
    {
        roomchoice = (global.is_console ? room_splashscreen_ch1 : PLACE_CONTACT_ch1)
        if (roomchoice == room_splashscreen_ch1)
        {
            if "store_prompt"
            {
                if global.store_prompt
                    roomchoice = PLACE_CONTACT_ch1
            }
        }
    }
    else if (menu_go == 1)
        roomchoice = PLACE_MENU_ch1
    else if (menu_go == 2)
    {
        "obj_initializer2_slash_Step_0_gml_22_0"
        global.tempflag[10] = 1
        roomchoice = room_legend_ch1
        global.plot = 0
    }
    roomchoice
}
