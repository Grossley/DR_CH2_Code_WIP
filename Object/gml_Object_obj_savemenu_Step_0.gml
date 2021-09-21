buffer -= 1
if (menuno == 0)
{
    if (xcoord == 2 && buffer < 0)
    {
        if gml_Script_button1_p()
        {
            xcoord = 99
            endme = 1
        }
    }
    if (xcoord < 2)
    {
        if (gml_Script_left_p() || gml_Script_right_p())
        {
            if (xcoord == 1)
                xcoord = 0
            else
                xcoord = 1
        }
    }
    if (type == 1)
    {
        if (gml_Script_up_p() || gml_Script_down_p())
        {
            if (ycoord == 1)
                ycoord = 0
            else
                ycoord = 1
        }
    }
    if (xcoord == 0 && ycoord == 0 && buffer < 0)
    {
        if gml_Script_button1_p()
        {
            if (type == 0)
            {
                gml_Script_snd_play(snd_save)
                gml_Script_scr_save()
                saved = 1
                xcoord = 2
                buffer = 3
                if (d == 2)
                {
                    name = global.truename
                    love = global.llv
                }
                gml_Script_scr_roomname(room)
                level = global.lv
                time = global.time
                minutes = floor((time / 1800))
                seconds = round((((time / 1800) - minutes) * 60))
                if (seconds == 60)
                    seconds = 59
                if (seconds < 10)
                    seconds = ("0" + string(seconds))
            }
            else
            {
                menuno = 1
                buffer = 3
                gml_Script_snd_play(snd_select)
            }
        }
    }
    if (gml_Script_button1_p() && xcoord == 1 && ycoord == 0 && buffer < 0)
        endme = 1
    if (gml_Script_button1_p() && xcoord == 0 && ycoord == 1 && buffer < 0)
    {
        global.interact = 1
        menu = gml_Script_instance_create(0, 0, obj_fusionmenu)
        menu.type = 4
        endme = 2
    }
    if (gml_Script_button1_p() && xcoord == 1 && ycoord == 1 && buffer < 0 && haverecruited)
    {
        global.interact = 1
        menu = gml_Script_instance_create(0, 0, obj_fusionmenu)
        menu.type = 3
        menu.subtype = recruitsubtype
        endme = 2
    }
    if (gml_Script_button2_p() && buffer < 0 && endme == 0)
        endme = 1
    if (endme == 1)
    {
        global.interact = 0
        with (obj_mainchara)
            onebuffer = 3
        instance_destroy()
    }
    if (endme == 2)
    {
        with (obj_mainchara)
            onebuffer = 3
        instance_destroy()
    }
}
if (menuno == 1)
{
    var menuwidth = 60
    var menuheight = 80
    gml_Script_scr_darkbox_black((gml_Script_camerax() + 120), (gml_Script_cameray() + 110), ((gml_Script_camerax() + 120) + menuwidth), ((gml_Script_cameray() + 110) + menuheight))
}
