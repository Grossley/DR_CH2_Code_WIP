var _temp_local_var_2;
if (global.flag[310] == 1)
{
    if 1147
    {
        with (obj_solidblock_destructable)
            // WARNING: Popz'd an empty stack.
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
            "noelle"
            gml_Script_msgsetloc(0, "\\EE* KRIS!!!!!!!!!!!!!&!!!!!!!!!!!!/%", "obj_controller_city_cheesemaze_slash_Step_0_gml_18_0")
            d = 
            con++
        }
        if (con == 2)
        {
        }
        else
            var _temp_local_var_2 = 0
        global.interact = 0
        eventTriggered = 1
        // WARNING: Popz'd an empty stack.
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
        // WARNING: Popz'd an empty stack.
    }
}
