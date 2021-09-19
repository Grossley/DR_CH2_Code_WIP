var _temp_local_var_2, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6;
if (obj_mainchara.x > x && (!gml_Script_i_ex(carGen)) && victory == false)
{
    carGen = gml_Script_instance_create(1120, 262, obj_traffic_car_generator)
    var _temp_local_var_2 = carGen
    image_xscale = 2
    image_yscale = 2
    group = 0
    gen_rate = 10
    timer = -2
    gen_speed = 15
    car_sprite = 2371
    skipEvery = 0
}
if (obj_mainchara.x < x && gml_Script_i_ex(carGen))
{
    var _temp_local_var_4 = carGen
    instance_destroy()
}
if (obj_mainchara.x < x)
{
    with (obj_traffic_car)
    {
        if (x > 1090)
            endme = 1
    }
}
if (victory == true)
{
    if (con == 0)
    {
        global.flag[370] = 1
        global.interact = 1
        with (obj_traffic_car)
        {
            if (x <= obj_mainchara.x)
                active = false
            if (x > obj_mainchara.x)
                hspeed = 8
        }
        with (obj_traffic_car_generator)
            instance_destroy()
        con++
    }
    if (con == 1)
    {
        timer++
        with (obj_traffic_car)
        {
            if place_meeting((x + 10), y, obj_holemouse)
            {
                var runCar = gml_Script_instance_create(x, y, obj_marker)
                runCar.image_index = image_index
                runCar.sprite_index = sprite_index
                runCar.image_xscale = 2
                runCar.image_yscale = 2
                runCar.hspeed = -16
                if (madeblock == 1)
                {
                    var _temp_local_var_5 = myblock
                    instance_destroy()
                }
                instance_destroy()
            }
        }
        global.interact = 1
        if (timer == 65)
            global.facing = 0
        if (timer == 110)
            con++
    }
    if (con == 2)
    {
        with (obj_traffic_car)
        {
            if (madeblock == 1)
            {
                var _temp_local_var_6 = myblock
                instance_destroy()
            }
            instance_destroy()
        }
        with (obj_traffic_car_generator)
            instance_destroy()
        global.interact = 0
        con++
    }
    if (con == 3)
    {
        with (obj_traffic_car_generator)
            instance_destroy()
        with (obj_traffic_car)
            endme = 1
        if gml_Script_i_ex(carGen)
            instance_destroy()
        instance_destroy()
    }
}
if keyboard_check_pressed(vk_space)
{
    obj_mainchara.x = 4244
    obj_mainchara.y = 364
}