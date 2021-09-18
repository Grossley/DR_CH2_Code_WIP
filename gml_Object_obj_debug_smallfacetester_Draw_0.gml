0.8
0
draw_rectangle(0, 0, 640, 480, false)
1
3
8421376
var spacing = 12
draw_text(1, (-3 + (spacing * 0)), "[1]     Light World")
draw_text(1, (-3 + (spacing * 1)), "[2]     Dark World")
draw_text(1, (-3 + (spacing * 2)), "[SPACE] Test Smallface")
draw_text(1, (-3 + (spacing * 3)), ("[C] Switch Language global.lang=" + string(global.lang)))
draw_text(141, (-3 + (spacing * 0)), "[P]     Screenshot")
draw_text(141, (-3 + (spacing * 1)), "[R]     Reset Room")
if (fileExists == 0)
{
    255
    draw_text(20, 57, "The file ``smallface.txt`` is not found.")
    draw_text(20, 71, "Ask for new smallface.txt and add it to")
    draw_text(20, 85, "your save directory, then reboot.")
}
16777215
if (haswritten == 1)
{
    3
    if (global.lang == "ja")
        10
    spacing = 14
    ypos = 50
    0
    draw_text(10, (ypos + (spacing * 0)), (("smallname = \"" + smallname) + "\""))
    draw_text(10, (ypos + (spacing * 1)), ("emotion = " + string(emotion)))
    if (position == "name")
    {
        draw_text(10, (ypos + (spacing * 2)), (("position = \"" + position) + "\""))
        draw_text(10, (ypos + (spacing * 3)), (("name_xpos = \"" + name_xpos) + "\""))
        draw_text(10, (ypos + (spacing * 4)), (("name_ypos = \"" + name_ypos) + "\""))
    }
    else
    {
        draw_text(10, (ypos + (spacing * 2)), (("position = \"" + position) + "\""))
        draw_text(10, (ypos + (spacing * 3)), ("numb_xpos = " + string(numb_xpos)))
        draw_text(10, (ypos + (spacing * 4)), ("numb_ypos = " + string(numb_ypos)))
    }
    draw_text(10, (ypos + (spacing * 5)), (("smalltext = \"" + smalltext) + "\""))
    draw_text(10, (ypos + (spacing * 6)), (("maintext = \"" + maintext) + "\""))
}
if 49
{
    global.darkzone = false
    5
}
if 50
{
    global.darkzone = true
    7
}
if 32
{
    haswritten = 1
    62
    if fileExists
    {
        "smallface.txt"
        smallname = ini_read_string("smallface", "smallname", "susie")
        emotion = ini_read_real("smallface", "emotion", 0)
        position = ini_read_string("smallface", "position", "name")
        name_xpos = ini_read_string("smallface", "name_xpos", "right")
        name_ypos = ini_read_string("smallface", "name_ypos", "bottom")
        numb_xpos = ini_read_real("smallface", "numb_xpos", 80)
        numb_ypos = ini_read_real("smallface", "numb_ypos", 120)
        smalltext = ini_read_string("smallface", "smalltext", "Example Dialogue.")
        maintext = ini_read_string("smallface", "maintext", "* Example text.")
        // WARNING: Popz'd an empty stack.
        if (position == "name")
            gml_Script_scr_smallface(0, smallname, emotion, name_xpos, name_ypos, smalltext)
        else
            gml_Script_scr_smallface(0, smallname, emotion, numb_xpos, numb_ypos, smalltext)
        global.msg[0] = maintext
        d = 
        d.side = 1
    }
    else
        289
}
global.interact = 1
if 80
{
    203
    var date = (((("_" + "_") + "_") + "_") + "_")
    (("Smallface_Screenshot_" + date) + ".png")
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
