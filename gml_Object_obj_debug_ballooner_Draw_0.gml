timer++
if (timer == 30)
    gml_Script_scr_battle(74, 0, marker1, marker2, marker3)
if (timer == 60)
    // WARNING: Popz'd an empty stack.
if (timer > 60)
{
    if 49
    {
        867
        62
        global.typer = 50
        "ballooner.txt"
        text = ini_read_string("ballooner", "text", text)
        // WARNING: Popz'd an empty stack.
        gml_Script_msgset(0, text)
        "kr"
    }
    if 50
    {
        867
        62
        global.typer = 50
        "ballooner.txt"
        text = ini_read_string("ballooner", "text", text)
        // WARNING: Popz'd an empty stack.
        gml_Script_msgset(0, text)
        "su"
    }
    if 51
    {
        867
        62
        global.typer = 50
        "ballooner.txt"
        text = ini_read_string("ballooner", "text", text)
        // WARNING: Popz'd an empty stack.
        gml_Script_msgset(0, text)
        "ra"
    }
    if 52
    {
        867
        62
        global.typer = 50
        "ballooner.txt"
        text = ini_read_string("ballooner", "text", text)
        // WARNING: Popz'd an empty stack.
        gml_Script_msgset(0, text)
        gml_Script_scr_enemyblcon((global.monsterx[0] + xmod), (global.monstery[0] + ymod), 10)
    }
    if 53
    {
        867
        62
        global.typer = 50
        "ballooner.txt"
        text = ini_read_string("ballooner", "text", text)
        // WARNING: Popz'd an empty stack.
        gml_Script_msgset(0, text)
        gml_Script_scr_enemyblcon((global.monsterx[1] + xmod), (global.monstery[1] + ymod), 10)
    }
    if 54
    {
        867
        62
        global.typer = 50
        "ballooner.txt"
        text = ini_read_string("ballooner", "text", text)
        // WARNING: Popz'd an empty stack.
        gml_Script_msgset(0, text)
        gml_Script_scr_enemyblcon((global.monsterx[2] + xmod), (global.monstery[2] + ymod), 10)
    }
}
if 84
{
    "ballooner.txt"
    text = ini_read_string("ballooner", "text", text)
    // WARNING: Popz'd an empty stack.
}
16777215
3
draw_rectangle(0, 292, 640, 300, false)
0
draw_rectangle(0, 296, 640, 480, false)
16777215
draw_text(10, 300, "[1] kris balloon")
draw_text(10, 320, "[2] ralsei balloon")
draw_text(10, 340, "[3] susie balloon")
draw_text(150, 300, "[4] enemy 1 balloon")
draw_text(150, 320, "[5] enemy 2 balloon")
draw_text(150, 340, "[6] enemy 3 balloon")
draw_text(10, 360, "[P] Take Screenshot")
draw_text(150, 360, "[C] Switch Language")
4235519
draw_text(300, 360, ("global.lang=" + global.lang))
16777215
1
draw_text(320, 390, "Current Text String Loaded (Press T to Reload from ballooner.txt)")
65535
if (global.lang == "en")
    2
else
    8
draw_text(320, 410, text)
16777215
3
0
draw_text(300, 310, "[  LEFT  /  RIGHT]    Balloon X Modifier:")
draw_text(300, 330, "[   UP   /      DOWN ]    Balloon Y Modifier:")
2
65535
draw_text(570, 310, xmod)
draw_text(570, 330, ymod)
16777215
0
if ((timer % 2) == 0)
{
    xmod--
    xmod++
    ymod--
    ymod++
}
if 67
{
    0.9
    0
    draw_rectangle(0, 0, 640, 480, false)
    1
    16777215
    1
    2
    draw_text(320, 200, "PLEASE WAIT WHILE WE LOAD THE TEXT")
    draw_text(320, 240, "THE ROOM WILL BE RELOADED")
    alarm[0] = 1
}
if 80
{
    203
    var date = (((("_" + "_") + "_") + "_") + "_")
    (("Ballooner_Screenshot_" + date) + ".png")
}
