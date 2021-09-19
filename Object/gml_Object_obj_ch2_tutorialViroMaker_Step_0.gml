if (global.flag[438] == 0 && other.havenoelle == 1)
{
    if instance_exists(obj_battleback)
    {
        if (room == room_dw_city_big_1)
            global.flag[438] = 1
        if (room == room_dw_city_roadblock)
            global.flag[438] = 2
        gml_Script_debug_message(("global.flag[438]=" + string(global.flag[438])))
        gml_Script_scr_tempsave()
    }
}
