var _temp_local_var_1;
global.flag[33] += 1
if (canchoose == true)
{
    if (mychoice >= 0)
        0
    if (choiced == false)
    {
        mychoice = 0
        if (choicetotal >= 1)
            mychoice = 1
        if (choicetotal >= 2)
            mychoice = 2
        if (choicetotal >= 3)
            mychoice = 3
    }
}
var _temp_local_var_1 = (dar == 1 ? "main" : "mainbig")
heartposx[0] = (xx + (30 * dar))
heartposy[0] = ((yy + ((34 + d_add) * dar)) + (fighting * 30))
textposx[0] = (heartposx[0] + (16 * dar))
textposy[0] = ((yy + ((13 + d_add) * dar)) + (fighting * 30))
if (choicetotal >= 1)
{
    var str1width = global.choicemsg[1]
    heartposx[1] = ((xx + (276 * dar)) - str1width)
    heartposy[1] = ((yy + ((34 + d_add) * dar)) + (fighting * 30))
    textposx[1] = (heartposx[1] + (16 * dar))
    textposy[1] = ((yy + ((13 + d_add) * dar)) + (fighting * 30))
}
if (choicetotal >= 2)
{
    var msg0right = ((heartposx[0] + (16 * dar)) + string_width(string_hash_to_newline(global.choicemsg[0])))
    var msg1left = heartposx[1]
    var msg2width = (global.choicemsg[2] + (16 * dar))
    if (choicetotal == 3)
    {
        var msg3width = (global.choicemsg[3] + (16 * dar))
        if (msg3width > msg2width)
            msg2width = msg3width
    }
    heartposx[2] = ((msg0right + ((msg1left - msg0right) / 2)) - (msg2width / 2))
    heartposy[2] = ((yy + ((16 + d_add) * dar)) + (fighting * 30))
    textposx[2] = (heartposx[2] + (16 * dar))
    textposy[2] = ((yy + ((13 + d_add) * dar)) + (fighting * 30))
}
if (choicetotal >= 3)
{
    heartposx[3] = heartposx[2]
    heartposy[3] = ((yy + ((60 + d_add) * dar)) + (fighting * 30))
    textposx[3] = (heartposx[3] + (16 * dar))
    textposy[3] = ((yy + ((56 + d_add) * dar)) + (fighting * 30))
}
if (mychoice >= 0)
{
    hx = heartposx[mychoice]
    hy = heartposy[mychoice]
}
