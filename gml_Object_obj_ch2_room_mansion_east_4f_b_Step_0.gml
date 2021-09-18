if (weretriggered == 0)
{
    with (obj_mainchara)
    {
        if place_meeting(x, y, obj_traffic_road_trigger)
            other.weretriggered = 1
    }
}
if (weretriggered == 1)
{
    gml_Script_instance_create(((gml_Script_camerax() + 640) + 12), 290, obj_chaseenemy)
    163
    weretriggered = 2
}
