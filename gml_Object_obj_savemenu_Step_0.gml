buffer -= 1
if (menuno == 0)
{
    if (xcoord == 2 && buffer < 0)
    {
        xcoord = 99
        endme = 1
    }
    if (xcoord < 2)
    {
        if 1
        {
            if (xcoord == 1)
                xcoord = 0
            else
                xcoord = 1
        }
    }
    if (type == 1)
    {
        if 1
        {
            if (ycoord == 1)
                ycoord = 0
            else
                ycoord = 1
        }
    }
    if (xcoord == 0 && ycoord == 0 && buffer < 0)
    {
        if (type == 0)
        {
            257
            // WARNING: Popz'd an empty stack.
            saved = 1
            xcoord = 2
            buffer = 3
            if (d == 2)
            {
                name = global.truename
                love = global.llv
            }
            room
            level = global.lv
            time = global.time
            minutes = (time / 1800)
            seconds = (((time / 1800) - minutes) * 60)
            if (seconds == 60)
                seconds = 59
            if (seconds < 10)
                seconds = ("0" + string(seconds))
        }
        else
        {
            menuno = 1
            buffer = 3
            260
        }
    }
    if (xcoord == 1 && ycoord == 0 && buffer < 0)
        endme = 1
    if (xcoord == 0 && ycoord == 1 && buffer < 0)
    {
        global.interact = 1
        menu = gml_Script_instance_create(0, 0, obj_fusionmenu)
        menu.type = 4
        endme = 2
    }
    if (xcoord == 1 && ycoord == 1 && buffer < 0 && haverecruited)
    {
        global.interact = 1
        menu = gml_Script_instance_create(0, 0, obj_fusionmenu)
        menu.type = 3
        menu.subtype = recruitsubtype
        endme = 2
    }
    if (buffer < 0 && endme == 0)
        endme = 1
    if (endme == 1)
    {
        global.interact = 0
        with (obj_mainchara)
            onebuffer = 3
        // WARNING: Popz'd an empty stack.
    }
    if (endme == 2)
    {
        with (obj_mainchara)
            onebuffer = 3
        // WARNING: Popz'd an empty stack.
    }
}
if (menuno == 1)
{
    var menuwidth = 60
    var menuheight = 80
    (((((110 + menuheight) + 120) + menuwidth) + 110) + 120)
}
