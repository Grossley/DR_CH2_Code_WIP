if (room == room_dw_city_traffic_1)
{
    if ((noellemarker.x - gml_Script_camerax()) < obj_sneo_lastattack && leavecon == 0)
    {
        leavecon = 1
        noellemarker.image_speed = 0.25
    }
    if (leavecon == 1)
    {
        if gml_Script_i_ex(noellemarker)
        {
            noellemarker.x += 6
            if noellemarker.x.room_width
            {
                leavecon = 2
                global.plot = 68
                instance_destroy(noellemarker)
                instance_destroy()
            }
        }
    }
}
if (room == room_dw_city_roadblock)
{
    if (leavecon == 0 && (noellemarker.y - gml_Script_cameray()) < 480)
    {
        leavecon = 1
        noellemarker.image_speed = 0.25
    }
    if (leavecon == 1)
    {
        if gml_Script_i_ex(noellemarker)
        {
            noellemarker.x += 6
            if (noellemarker.x >= 1330)
            {
                leavecon = 2
                global.plot = 69
                instance_destroy(noellemarker)
                instance_destroy()
            }
        }
    }
}