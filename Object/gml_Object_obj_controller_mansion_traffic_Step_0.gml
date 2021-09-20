if (obj_mainchara.x >= 1246 && (!gml_Script_i_ex(carGen)) && victory == false)
{
    carGen = gml_Script_instance_create(1241, 120, obj_traffic_car_generator)
    carGen.image_xscale = 2
    carGen.image_yscale = 2
    carGen.group = 0
    carGen.gen_rate = 5
    carGen.timer = -5
    carGen.gen_speed = 12
    carGen.car_sprite = 2371
    carGen.skipEvery = 0
    carGen.walking = 0
    carGen.speedadjust = 1
    carGen.alwayswalking = 1
    carGen.prepopulate = 0
}
if (obj_mainchara.x < 1246 && gml_Script_i_ex(carGen))
{
    with (carGen)
        instance_destroy()
}
if (victory == true)
{
    if instance_exists(obj_traffic_car)
    {
        with (obj_traffic_car)
        {
            animsiner = 0
            if place_meeting(x, y, obj_mouse_traffic)
            {
                other.hitcount++
                run = gml_Script_instance_create(((x - 6) - 5), ((y - 24) + 92), obj_traffic_car_run)
                if ((other.hitcount % 2) == 0)
                    run.dir = 1
                instance_destroy()
            }
        }
    }
    if (con == 0)
    {
        global.flag[370] = 1
        global.interact = 1
        with (obj_traffic_car)
        {
            if (y <= obj_mainchara.y && x > 1160)
                active = false
            else
                vspeed = 8
            if (x < (gml_Script_camerax() - 100) || x > ((gml_Script_camerax() + 100) + 640) || y < (gml_Script_cameray() - 100) || y > ((gml_Script_cameray() + 100) + 480))
                instance_destroy()
        }
        with (obj_traffic_car_generator)
            instance_destroy()
        timer = 0
        con++
    }
    if (con == 1)
    {
        timer++
        if (timer == 1)
        {
            hole = gml_Script_scr_dark_marker(1400, 1360, 2681)
            with (hole)
                gml_Script_scr_depth()
            hole.image_index = 5
            hole.image_speed = 0
        }
        if (timer == 2)
            hole.image_index = 4
        if (timer == 3)
            hole.image_index = 3
        if (timer == 4)
            hole.image_index = 2
        if (timer == 5)
            hole.image_index = 1
        if (timer == 6)
            hole.image_index = 0
        if (timer == 15)
        {
            mousetail = gml_Script_scr_dark_marker(1420, 1380, 2692)
            mousetail.image_angle = -90
            mousetail.image_speed = 0
            with (mousetail)
                gml_Script_scr_depth()
            mouse1 = gml_Script_scr_dark_marker(1418, 1380, 2687)
            with (mouse1)
                gml_Script_scr_depth()
            gml_Script_snd_play(176)
        }
        if (timer == 30)
            gml_Script_instance_create(1420, 1390, obj_mouse_traffic)
        if (timer == 35 || timer == 40 || timer == 45 || timer == 50)
        {
            gml_Script_instance_create(1420, 1390, obj_mouse_traffic)
            gml_Script_snd_play(176)
        }
        if (timer == 30)
        {
            with (mouse1)
                instance_destroy()
            with (mousetail)
                instance_destroy()
        }
        if (timer == 50)
            hole.image_index++
        if (timer == 51)
            hole.image_index++
        if (timer == 52)
            hole.image_index++
        if (timer == 53)
            hole.image_index++
        if (timer == 54)
            hole.image_index++
        if (timer == 55)
        {
            with (hole)
                instance_destroy()
        }
        if (timer > 50 && (!instance_exists(obj_mouse_traffic)))
            con++
    }
    if (con == 2)
    {
        if instance_exists(obj_traffic_road_trigger)
        {
            with (obj_traffic_road_trigger)
            {
                x = (room_width * 2)
                y = (room_height * 2)
            }
        }
        global.interact = 0
        global.facing = 0
        con++
    }
}
if gml_Script_scr_debug()
{
    if keyboard_check_pressed(vk_space)
    {
        obj_mainchara.x = 1143
        obj_mainchara.y = 360
    }
}
