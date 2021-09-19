if (global.flag[encounterflag] == 1)
    instance_destroy()
if (global.flag[encounterflag] == 6 && init == 0)
{
    if (frozensprite == IMAGE_LOGO)
        frozensprite = 1643
    frozennpc = gml_Script_instance_create(x, y, obj_frozennpc)
    frozennpc.sprite_index = frozensprite
    frozennpc.fresh = 1
    instance_destroy()
    init = 1
}
offX = (x + 42)
offY = (y + 62)
if (weird == 0)
{
    if instance_exists(obj_mainchara)
        dist = point_distance(offX, offY, gml_Script_charaX(), gml_Script_charaY())
    if (dist < radius && con == 0)
    {
        speed1 = 0.25
        con = 2
    }
    if (con == 0 && room == room_dw_city_roadblock)
    {
        if point_in_rectangle(gml_Script_charaX(), gml_Script_charaY(), 880, 640, 1040, 760)
        {
            speed1 = 0.25
            con = 2
        }
    }
    if (con == 2)
    {
        image_speed = 0.5
        if (image_index == 7)
            image_index = 3
        if (speedboost == 0)
            speed1 *= 1.1
        if (speedboost == 1)
            speed1 *= 1.4
        if (speedboost == 0)
            speed1 = clamp(speed1, 0, 8)
        if (speedboost == 1)
            speed1 = clamp(speed1, 0, 16)
        if (global.interact == 0)
        {
            if (speed1 == 0)
                speed1 = memspeed
        }
        else
        {
            if (speed1 != 0)
                memspeed = speed1
            speed1 = 0
        }
        if instance_exists(obj_mainchara)
            move_towards_point((gml_Script_charaHeartX() - 42), ((gml_Script_charaHeartY() - 20) - 62), speed1)
    }
}
if (weird == 1)
{
    if (con == 0)
    {
        image_speed = 0.25
        if (image_index >= 7)
            image_index = 3
        if gml_Script_i_ex(80)
        {
            if (distance_to_object(obj_mainchara) < 120)
                con = 1
        }
    }
    if (con == 1)
    {
        image_speed = 0
        if (image_index != 0)
            image_index = lerp(image_index, 0, 0.5)
        if (distance_to_object(obj_mainchara) > 120)
        {
            image_index = 0
            con = 0
        }
    }
}
gml_Script_scr_depth_alt()
if (place_meeting(x, y, obj_mainchara) && global.interact == 0 && (!gml_Script_i_ex(188)))
{
    sprite_index = spr_poppup_intro
    image_index = 0
    marker = gml_Script_instance_create(x, y, obj_marker)
    marker.image_index = image_index
    marker.sprite_index = sprite_index
    marker.x = x
    marker.y = y
    marker.image_speed = 0.45
    marker.image_xscale = image_xscale
    marker.image_yscale = image_yscale
    if (topsprite != IMAGE_LOGO)
    {
        flyoff = gml_Script_instance_create((x + 42), ((y + 106) - 24), obj_poppup_topobjflyaway)
        flyoff.sprite_index = topsprite
        flyoff.image_xscale = 2
        flyoff.image_yscale = 2
        flyoff.depth = 2
        flyoff.image_angle = -10
    }
    global.flag[55] = x
    global.flag[56] = y
    global.flag[54] = encounterflag
    if (encountertype == 0)
        gml_Script_scr_battle(51, 0, marker, 0, 0)
    if (encountertype == 1)
        gml_Script_scr_battle(88, 0, marker, 0, 0)
    if (encountertype == 2)
        gml_Script_scr_battle(101, 0, marker, 0, 0)
    instance_destroy()
}
