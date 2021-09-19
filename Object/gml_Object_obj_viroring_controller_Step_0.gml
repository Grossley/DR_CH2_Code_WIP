var _temp_local_var_1;
if (noleave == 0)
{
    with (obj_mainchara)
    {
        if place_meeting(x, y, obj_traffic_road_trigger)
            other.noleave = 1
    }
}
if (noleave == 1)
{
    with (obj_traffic_road_trigger)
        instance_destroy()
    barrier = gml_Script_instance_create(200, 240, obj_forcefield)
    barrier.image_xscale = 2
    barrier.image_yscale = 8
    barrier.skip = 1
    noleave = 2
}
if (noleave == 2)
{
    if (global.flag[352] != 0)
    {
        var _temp_local_var_1 = barrier
        instance_destroy()
    }
    instance_destroy()
}
