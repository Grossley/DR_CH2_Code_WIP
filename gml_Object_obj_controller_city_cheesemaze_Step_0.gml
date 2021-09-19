if (global.flag[310] == 1)
{
    if gml_Script_i_ex(1147)
    {
        with (obj_solidblock_destructable)
            instance_destroy()
    }
}
if (obj_mainchara.x >= trigX && eventTriggered == 0)
{
    global.flag[360] = 1
    if (global.flag[310] == 1)
    {
        if (con == 0)
        {
            global.interact = 1
            con++
        }
        if (con == 1)
        {
            gml_Script_scr_speaker("noelle")
            gml_Script_msgsetloc(0, "\\EE* KRIS!!!!!!!!!!!!!&!!!!!!!!!!!!/%", "obj_controller_city_cheesemaze_slash_Step_0_gml_18_0")
            d = gml_Script_d_make()
            con++
        }
        if (con == 2 && (!gml_Script_d_ex()))
        {
            global.interact = 0
            eventTriggered = 1
            instance_destroy()
        }
    }
    if (global.flag[310] == 0)
    {
        with (obj_mazecheese)
        {
            if (x < other.trigX)
            {
                image_index = 1
                type = 4
                con = 999
                global.flag[310] = 1
            }
        }
        eventTriggered = 1
        instance_destroy()
    }
}
