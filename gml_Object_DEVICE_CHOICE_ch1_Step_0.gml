if (fadebuffer > 0)
    ONEBUFFER = 1
if (TYPE > 0)
{
    if (fadebuffer < 0 && FINISH == false)
    {
        var dx = 0
        var dy = 0
        dx = 1
        dx = -1
        dy = 1
        dy = -1
        if (dx != 0 && XMAX > 0)
        {
            var found = 0
            do
            {
                CURX = (((CURX + (XMAX + 1)) + dx) % (XMAX + 1))
                var ccc = NAME[CURX][CURY]
                if (ccc != " " && ccc != "　" && ccc != ">" && ccc != "<")
                    found = 1
            } until found;
        }
        else if (dy != 0 && YMAX > 0)
        {
            found = 0
            do
            {
                CURY = (((CURY + (YMAX + 1)) + dy) % (YMAX + 1))
                var move = 1
                ccc = ""
                if move
                {
                    ccc = NAME[CURX][CURY]
                    if (ccc == ">")
                        CURX += 1
                    else if (ccc == "<")
                        CURX -= 1
                    else
                        move = 0
                    while move
                    {
                        ccc = NAME[CURX][CURY]
                        if (ccc == ">")
                            CURX += 1
                        else if (ccc == "<")
                            CURX -= 1
                        else
                            move = 0
                    }
                }
                if (ccc != " " && ccc != "　")
                    found = 1
            } until found;
        }
    }
}
else if (fadebuffer < 0 && FINISH == false)
{
    CURX = 1
    CURX = 0
}
if (TYPE >= 0 && TYPE <= 2)
{
    DRAWHEART = 1
    if (CURX >= 0)
    {
        IDEALX = NAMEX[CURX][CURY]
        IDEALY = NAMEY[CURX][CURY]
        if (TYPE == 0)
        {
            "main"
            IDEALX += ((string_width(NAME[CURX][CURY]) / 2) - 10)
        }
    }
    else
    {
        IDEALX = 150
        IDEALY = 180
    }
    if ((HEARTX - IDEALX) <= 2)
        HEARTX = IDEALX
    if ((HEARTY - IDEALY) <= 2)
        HEARTY = IDEALY
    HEARTDIFF = ((IDEALX - HEARTX) * 0.3)
    HEARTX += HEARTDIFF
    if (DRAWHEART == 0)
    {
        HEARTX = IDEALX
        DRAWHEART = 1
    }
    HEARTDIFF = ((IDEALY - HEARTY) * 0.3)
    HEARTY += HEARTDIFF
    if (DRAWHEART == 0)
    {
        HEARTY = IDEALY
        DRAWHEART = 1
    }
    if (FINISH == false)
    {
        if (CURX >= 0 && ONEBUFFER < 0)
        {
            global.choice = CURX
            if (TYPE == 2)
                global.choice = CURY
            FINISH = true
            ONEBUFFER = 99
        }
    }
}
if (TYPE == 3)
{
    DRAWHEART = 1
    var str = NAME[CURX][CURY]
    var cmd = ""
    if (str > 1)
    {
        cmd = string_char_at(str, 2)
        str = string_copy(str, 4, (str - 3))
    }
    "main"
    IDEALX = ((NAMEX[CURX][CURY] + (string_width(str) / 2)) - 10)
    IDEALY = (NAMEY[CURX][CURY] - 2)
    if ((HEARTX - IDEALX) <= 2)
        HEARTX = IDEALX
    if ((HEARTY - IDEALY) <= 2)
        HEARTY = IDEALY
    HEARTDIFF = ((IDEALX - HEARTX) * 0.5)
    if (HEARTDIFF > 60)
        DRAWHEART = 0
    HEARTX += HEARTDIFF
    if (DRAWHEART == 0)
    {
        HEARTX = IDEALX
        DRAWHEART = 1
    }
    HEARTDIFF = ((IDEALY - HEARTY) * 0.5)
    if (HEARTDIFF > 60)
        DRAWHEART = 0
    HEARTY += HEARTDIFF
    if (DRAWHEART == 0)
    {
        HEARTY = IDEALY
        DRAWHEART = 1
    }
    ERASE = false
    if (FINISH == false)
    {
        ERASE = true
        if (ONEBUFFER < 0)
        {
            if (cmd == "")
            {
                if (NAMESTRING < STRINGMAX)
                    NAMESTRING += NAME[CURX][CURY]
            }
            if (cmd == "B")
                ERASE = true
            if (cmd == "1" || cmd == "2" || cmd == "3")
            {
                var new_type = cmd
                if (LANGSUBTYPE != new_type)
                {
                    LANGSUBTYPE = new_type
                    // WARNING: Popz'd an empty stack.
                }
            }
            if (cmd == "E" && ONEBUFFER < 0 && NAMESTRING >= 1)
            {
                ONEBUFFER = 99
                FINISH = true
                global.choice = 1
            }
        }
    }
    if (ERASE == true && FINISH == false)
    {
        if (NAMESTRING > 0)
            NAMESTRING = string_delete(NAMESTRING, string_length(NAMESTRING), 1)
    }
}
ONEBUFFER -= 1
if (FINISH == false)
    fadebuffer -= 1
if (FINISH == true)
{
    global.flag[20] = 1
    if (fadebuffer < 0)
        fadebuffer = 0
    fadebuffer += 1
    if (fadebuffer >= 10)
        // WARNING: Popz'd an empty stack.
}
