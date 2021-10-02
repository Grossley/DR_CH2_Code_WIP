if (mycater == obj_sneo_friedpipis)
{
    with (obj_caterpillarchara)
    {
        if (name == "noelle")
            other.mycater = id
    }
}
if (idealPositionProgress < 1)
{
    idealPositionProgress += 0.08
    if (idealPositionProgress > 1)
        idealPositionProgress = 1
}
with (obj_mainchara)
{
    if place_meeting(x, y, obj_traffic_road_trigger)
    {
        if (other.stickToKris == 0)
            other.idealPositionProgress = 0
        other.stickToKris = 1
    }
    else
    {
        if (other.stickToKris == 1)
            other.idealPositionProgress = 0
        other.stickToKris = 0
    }
}
if (stickToKris == 1)
{
    if (room != room_dw_city_traffic_3)
    {
        idealX = (obj_mainchara.x - 4)
        idealY = (obj_mainchara.y + 30)
        if (room == room_dw_city_traffic_1)
            idealY = clamp(idealY, 0, 262)
        if (room == room_dw_city_traffic_2)
            idealY = clamp(idealY, 0, 222)
    }
    if (room == room_dw_city_traffic_3)
    {
        with (obj_mainchara)
        {
            if (y > yprevious)
                other.pos = "down"
            if (y < yprevious)
                other.pos = "up"
        }
        if (pos != prevpos)
            idealPositionProgress = 0
        if (pos == "up")
        {
            idealX = (obj_mainchara.x - 4)
            idealY = (obj_mainchara.y + 30)
        }
        if (pos == "down")
        {
            idealX = (obj_mainchara.x - 4)
            idealY = (obj_mainchara.y - 30)
        }
        prevpos = pos
    }
    x = lerp(x, idealX, idealPositionProgress)
    y = lerp(y, idealY, idealPositionProgress)
    image_speed = 0
    image_index = obj_mainchara.image_index
    if (xprevious > x)
        sprite_index = spr_noelle_cower_left
    if (xprevious < x)
        sprite_index = spr_noelle_cower_right
}
if (stickToKris == 0)
{
    if place_meeting(x, y, obj_triggervolume)
    {
        debug_message("ahhhh")
        y -= 8
    }
    else
    {
        with (mycater)
        {
            x = other.x
            y = other.y
            visible = true
            scr_caterpillar_interpolate()
        }
        instance_destroy()
    }
}
scr_depth()
