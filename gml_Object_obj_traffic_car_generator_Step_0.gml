var _temp_local_var_1, _temp_local_var_3;
if (prepopulate == 1)
{
    var i = 0
    while (i < 6)
    {
        car = gml_Script_instance_create(x, (y + ((gen_speed * gen_rate) * i)), obj_traffic_car)
        car.walkdir = cartype
        car.myspeed = gen_speed
        car.remspeed = gen_speed
        car.sprite_index = car_sprite
        car.group = group
        car.walking = walking
        car.alwayswalking = alwayswalking
        car.speedadjust = speedadjust
        var _temp_local_var_1 = car
    }
    prepopulate = 0
}
if (active == true && (global.interact == 0 || 895))
{
    if (walking == 0)
        timer++
    if (walking == 1)
        timer += 0.25
}
if (timer >= gen_rate)
{
    carCount++
    if (skipEvery != 0)
    {
        if ((carCount % skipEvery) == 0)
            makeCar = 0
        else
            makeCar = 1
    }
    else
        makeCar = 1
    if (makeCar == 1)
    {
        car = gml_Script_instance_create(x, y, obj_traffic_car)
        car.walkdir = cartype
        car.myspeed = gen_speed
        car.remspeed = gen_speed
        car.sprite_index = car_sprite
        car.group = group
        car.walking = walking
        car.alwayswalking = alwayswalking
        car.speedadjust = speedadjust
        var _temp_local_var_3 = car
    }
    timer = 0
}
