if global.is_console
{
    if (global.savedata_async_id >= 0)
        return;
    if (!"chapter")
        return;
}
var CH = global.chapter
if 1
{
    roomchoice = PLACE_CONTACT
    menu_go = 0
    if (("filech" + CH) + "_0")
        menu_go = 1
    if (("filech" + CH) + "_1")
        menu_go = 1
    if (("filech" + CH) + "_2")
        menu_go = 1
    if (("filech" + CH) + "_3")
        menu_go = 1
    if "dr.ini"
        menu_go = 1
    if (("filech" + CH) + "_3")
        menu_go = 2
    if (("filech" + CH) + "_4")
        menu_go = 2
    if (("filech" + CH) + "_5")
        menu_go = 2
    if global.is_console
    {
        if (global.game_won == 1)
            menu_go = 2
    }
    menu_go = 3
    if (menu_go == 0 || menu_go == 1)
    {
        if global.is_console
            global.screen_border_alpha = 0
        roomchoice = room_intro_ch2
    }
    if (menu_go == 2)
    {
        if global.is_console
            global.screen_border_alpha = 1
        "DELTARUNE"
        global.tempflag[10] = 1
        roomchoice = room_legend
        global.plot = 0
    }
    if (menu_go == 3)
    {
        if global.is_console
            global.screen_border_alpha = 0
        roomchoice = room
    }
    roomchoice
}
