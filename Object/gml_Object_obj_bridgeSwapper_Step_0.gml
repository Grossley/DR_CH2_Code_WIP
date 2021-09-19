if (con == 1)
{
    global.interact = 1
    if (skip == 0)
    {
        notallcharactersaresafe = 0
        with (obj_mainchara)
        {
            if (place_meeting(x, y, obj_solidblock) || place_meeting(x, y, obj_bridgeSwappable))
            {
                gml_Script_scr_debug_print("kris isn't safe")
                other.notallcharactersaresafe++
            }
        }
        with (obj_caterpillarchara)
        {
            if (place_meeting(x, y, obj_solidblock) || place_meeting(x, y, obj_bridgeSwappable))
            {
                gml_Script_scr_debug_print("ralsei isn't safe")
                other.notallcharactersaresafe++
            }
        }
        if (notallcharactersaresafe == 0)
            con = 99
        else
            con = 2
    }
    else
        con = 99
}
if (con == 2)
{
    gml_Script_scr_debug_print("con=2")
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    con++
}
if (con == 3)
{
    if (dir == 0)
    {
        if (rax == 0)
            ralx = mtx
        else
            ralx = rax
        if (ray == 0)
            raly = (mty - 4)
        else
            raly = ray
        krisface = "d"
    }
    if (dir == 1)
    {
        if (rax == 0)
            ralx = (mtx - 4)
        else
            ralx = rax
        if (ray == 0)
            raly = mty
        else
            raly = ray
        krisface = "e"
    }
    if (dir == 2)
    {
        if (rax == 0)
            ralx = mtx
        else
            ralx = rax
        if (ray == 0)
            raly = (mty + 4)
        else
            raly = ray
        krisface = "u"
    }
    if (dir == 3)
    {
        if (rax == 0)
            ralx = (mtx + 4)
        else
            ralx = rax
        if (ray == 0)
            raly = mty
        else
            raly = ray
        krisface = "l"
    }
    panpoint = gml_Script_scr_dark_marker(mtx, mty, kr_actor.sprite_index)
    with (panpoint)
        visible = false
}
if (con == 98)
{
    con = 99
    with (panpoint)
        instance_destroy()
}
if (con == 99)
{
    alarm[0] = 1
    gml_Script_snd_play(59)
    gml_Script_instance_create(x, y, obj_shakeobj)
    global.interact = 0
    con = 0
}
