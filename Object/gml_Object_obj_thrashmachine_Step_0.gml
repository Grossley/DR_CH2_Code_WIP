if (init == 0)
{
    part[1] = global.flag[220]
    part[0] = global.flag[221]
    part[2] = global.flag[222]
    if (part[0] == 3 && part[1] == 3 && part[2] == 3)
        duckmode = 1
    init = 1
}
if gml_Script_scr_debug()
{
    if keyboard_check_pressed(ord("B"))
    {
        dbselect = (!dbselect)
        gml_Script_scr_debug_print(("Thrash machine piece debug " + (dbselect ? "enabled." : "disabled.")))
    }
    if (keyboard_check_pressed(ord("0")) || keyboard_check_pressed(vk_numpad0))
    {
        part[0] = irandom(3)
        randomise()
        part[1] = irandom(3)
        randomise()
        part[2] = irandom(3)
        gml_Script_scr_debug_print("Thrash machine randomized.")
        if (part[0] == 3 && part[1] == 3 && part[2] == 3)
        {
            gml_Script_scr_debug_print("Your random machine has made you lose points.")
            duckmode = 1
        }
        else
            duckmode = 0
    }
    if keyboard_check_pressed(vk_space)
        a = 1
    if dbselect
    {
        if keyboard_check_pressed(vk_decimal)
        {
            gml_Script_scr_debug_print("Thrash machine pieces reset to defaults.")
            init = 0
        }
        if (dbselect && (!duckmode) && part[0] == 3 && part[1] == 3 && part[2] == 3)
        {
            gml_Script_scr_debug_print("Debug mode won't prevent you from losing points.")
            duckmode = 1
        }
        else if (duckmode && (!(part[0] == 3 && part[1] == 3 && part[2] == 3)))
            duckmode = 0
    }
}
