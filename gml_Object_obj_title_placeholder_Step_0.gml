choice_index = ((choice_index - 1) < 0 ? (choice - 1) : (choice_index - 1))
choice_index = ((choice_index + 1) > (array_length_1d(choice) - 1) ? 0 : (choice_index + 1))
if (choice_index == 0)
{
    var menu_go = 0
    var roomchoice = room_intro_ch2
    var CH = global.chapter
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
    if (menu_go == 0 || menu_go == 1)
        roomchoice = room_intro_ch2
    if (menu_go == 2)
    {
        "DELTARUNE"
        global.tempflag[10] = 1
        roomchoice = room_legend
        global.plot = 0
    }
    global.darkzone = false
    roomchoice
}
else if (choice_index == 1)
    // WARNING: Popz'd an empty stack.
else if (choice_index == 2)
    // WARNING: Popz'd an empty stack.
else if (choice_index == 3)
{
    if "filech1_3"
    {
        global.filechoice = 3
        // WARNING: Popz'd an empty stack.
        global.filechoice = 0
        global.darkzone = false
        27
    }
    else
        143
}
