var _temp_local_var_2, _temp_local_var_3;
if 80
{
    if (obj_mainchara.x >= triggerPoint && spawned == 0)
    {
        ralsei = gml_Script_scr_dark_marker(310, 80, 793)
        susie = gml_Script_scr_dark_marker(360, 80, 822)
        global.plot = 67
        spawned = 1
    }
}
if ralsei
{
    var _temp_local_var_2 = ralsei
    image_blend = make_color_rgb(100, 100, 100)
    depth = (obj_cityEntrance_event.depth + 1)
    image_speed = 0.25
    hspeed = 4
    if (x > 640)
    {
    }
}
if susie
{
    var _temp_local_var_3 = susie
    image_blend = make_color_rgb(100, 100, 100)
    depth = (obj_cityEntrance_event.depth + 1)
    image_speed = 0.25
    hspeed = 4
    if (x > 640)
    {
    }
}
