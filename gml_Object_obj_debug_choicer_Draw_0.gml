0.8
0
draw_rectangle(0, 0, 640, 480, false)
1
3
8421376
var spacing = 12
draw_text(1, (-3 + (spacing * 0)), "[1]     Light World")
draw_text(1, (-3 + (spacing * 1)), "[2]     Dark World")
draw_text(1, (-3 + (spacing * 2)), "[SPACE] Test Choicer")
draw_text(1, (-3 + (spacing * 3)), ("[C] Switch Language global.lang=" + string(global.lang)))
if 52
    global.typer--
if 53
    global.typer++
draw_text(141, (-3 + (spacing * 0)), "[P]     Screenshot")
draw_text(141, (-3 + (spacing * 1)), "[R]     Reset Room")
16777215
if (haswritten == 1)
{
    3
    if (global.lang == "ja")
        10
    spacing = 14
    ypos = 72
    0
    draw_text(10, (ypos + (spacing * 0)), (("c1 = \"" + c1) + "\""))
    draw_text(10, (ypos + (spacing * 1)), (("c2 = \"" + c2) + "\""))
    if (promptcount > 2)
        draw_text(10, (ypos + (spacing * 2)), (("c3 = \"" + c3) + "\""))
    if (promptcount > 3)
        draw_text(10, (ypos + (spacing * 3)), (("c4 = \"" + c4) + "\""))
}
if 49
{
    global.darkzone = false
    4
}
if 50
{
    global.darkzone = true
    8
}
if 67
{
    0.9
    0
    draw_rectangle(0, 0, 640, 480, false)
    1
    16777215
    1
    if (global.darkzone == true)
        2
    draw_text((160 * (1 + global.darkzone)), (100 * (1 + global.darkzone)), "PLEASE WAIT WHILE WE LOAD THE TEXT")
    draw_text((160 * (1 + global.darkzone)), (120 * (1 + global.darkzone)), "THE ROOM WILL BE RELOADED")
    alarm[0] = 1
}
if 32
{
    haswritten = 1
    57
    62
    if fileExists
    {
        "choicer.txt"
        q = ini_read_string("choicer", "question", q)
        c1 = ini_read_string("choicer", "c1", c1)
        c2 = ini_read_string("choicer", "c2", c2)
        c3 = ini_read_string("choicer", "c3", c3)
        c4 = ini_read_string("choicer", "c4", c4)
        promptcount = ini_read_real("choicer", "promptcount", promptcount)
        // WARNING: Popz'd an empty stack.
        if (position == "name")
            gml_Script_scr_smallface(0, smallname, emotion, name_xpos, name_ypos, smalltext)
        else
            gml_Script_scr_smallface(0, smallname, emotion, numb_xpos, numb_ypos, smalltext)
        global.choicemsg[0] = c1
        global.choicemsg[1] = c2
        global.choicemsg[2] = c3
        global.choicemsg[3] = c4
        "no_name"
        gml_Script_msgset(0, (q + "/"))
        if (promptcount == 1)
            "\\C1 "
        if (promptcount == 2)
            "\\C2 "
        if (promptcount == 3)
            "\\C3 "
        if (promptcount == 4)
            "\\C4 "
        gml_Script_msgnextloc("\\C4 ", "obj_debug_choicer_slash_Draw_0_gml_105_0")
        d = 
        d.side = 1
    }
}
global.interact = 1
if 80
{
    203
    var date = (((("_" + "_") + "_") + "_") + "_")
    (("Choicer_Screenshot_" + date) + ".png")
}
