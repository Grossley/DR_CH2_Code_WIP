var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3;
if (init == 0)
{
    if (count == 0)
    {
        obj_traffic_switch.groupcheck = swapgroup
        obj_traffic_switch.bossidcheck = id
        boss = true
        with (obj_traffic_switch)
        {
            if (swapgroup == groupcheck)
            {
                bossid = bossidcheck
                bossid.allcount++
                countid[count] = bossid
                counttimer[count] = bossid
                counttype[count] = bossid
                var _temp_local_var_1 = type
                var _temp_local_var_2 = default_time
                var _temp_local_var_3 = id
            }
        }
        obj_traffic_switch.allcountcheck = allcount
        with (obj_traffic_switch)
        {
            if (swapgroup == groupcheck)
                allcount = allcountcheck
        }
    }
    init = 1
}
if (myinteract == 1)
{
    myinteract = 0
    with (obj_mainchara)
        onebuffer = 5
}
if (active == true && (global.interact == 0 || gml_Script_i_ex(895)))
{
    timer--
    if (timer <= 0)
    {
        timer = (default_time * timefactor)
        active = false
        gml_Script_snd_play(64)
        if instance_exists(obj_traffic_car)
            obj_traffic_car.groupcheck = group
        if instance_exists(obj_traffic_car_generator)
            obj_traffic_car_generator.groupcheck = group
        with (obj_traffic_car)
        {
            if (group == groupcheck)
            {
                walking = 0
                active = true
            }
        }
        with (obj_traffic_car_generator)
        {
            if (group == groupcheck)
            {
                walking = 0
                active = true
            }
        }
        if instance_exists(obj_cybercity_bg_trafficlight_shine)
        {
            var group_check = group
            with (obj_cybercity_bg_trafficlight_shine)
            {
                if (group == group_check)
                    stop = 0
            }
        }
    }
}
if clear_traffic
{
    if gml_Script_i_ex(1112)
    {
        with (obj_traffic_car)
        {
            y += myspeed
            if (y >= ((gml_Script_cameray() + view_hport[0]) + 100))
                instance_destroy()
        }
    }
    else
        clear_traffic = 0
}
pressbuffer--