if instance_exists(obj_mainchara)
{
    if (obj_mainchara.x >= triggerPoint && spawned == 0)
    {
        ralsei = gml_Script_scr_dark_marker(310, 80, spr_ralsei_walk_right)
        susie = gml_Script_scr_dark_marker(360, 80, spr_susie_walk_right_dw)
        global.plot = 67
        spawned = 1
    }
}
if gml_Script_i_ex(ralsei)
{
    with (ralsei)
    {
        image_blend = make_color_rgb(100, 100, 100)
        depth = (obj_cityEntrance_event.depth + 1)
        image_speed = 0.25
        hspeed = 4
        if (x > 640)
            instance_destroy()
    }
}
if gml_Script_i_ex(susie)
{
    with (susie)
    {
        image_blend = make_color_rgb(100, 100, 100)
        depth = (obj_cityEntrance_event.depth + 1)
        image_speed = 0.25
        hspeed = 4
        if (x > 640)
            instance_destroy()
    }
}
