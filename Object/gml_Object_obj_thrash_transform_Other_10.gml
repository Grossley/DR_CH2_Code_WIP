transformstate++
if (transformstate == 1)
{
    var _sparkdir = 255
    repeat (5)
    {
        var _sparks = gml_Script_instance_create(x, y, obj_thrash_spark)
        _sparks.direction = (_sparkdir + random_range(-15, 15))
    }
    _sparkdir = 315
    repeat (5)
    {
        _sparks = gml_Script_instance_create(x, y, obj_thrash_spark)
        _sparks.direction = (_sparkdir + random_range(-15, 15))
    }
}
else if (transformstate == 2)
{
    _sparkdir = 10
    repeat (5)
    {
        _sparks = gml_Script_instance_create(x, y, obj_thrash_spark)
        _sparks.direction = (_sparkdir + random_range(-15, 15))
    }
    _sparkdir = 170
    repeat (5)
    {
        _sparks = gml_Script_instance_create(x, y, obj_thrash_spark)
        _sparks.direction = (_sparkdir + random_range(-15, 15))
    }
}
else if (transformstate == 3)
{
    _sparkdir = 170
    repeat (10)
    {
        _sparks = gml_Script_instance_create(x, y, obj_thrash_spark)
        _sparks.direction = (_sparkdir + random_range(-20, 20))
    }
}
else if (transformstate == 4)
    gml_Script_scr_move_to_point_over_time(x, (y + 30), 20)
else if (transformstate == 5)
    gml_Script_scr_move_to_point_over_time(x, (gml_Script_cameray() - 40), 20)
image_index++
