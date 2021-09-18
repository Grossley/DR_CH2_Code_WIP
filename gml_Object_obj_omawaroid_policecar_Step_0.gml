if (wall_destroy == 1)
{
    if (x < (gml_Script___view_get(0, 0) - 80))
        // WARNING: Popz'd an empty stack.
    if (x > (gml_Script___view_get(0, 0) + 760))
        // WARNING: Popz'd an empty stack.
    if (y < (gml_Script___view_get(1, 0) - 80))
        // WARNING: Popz'd an empty stack.
    if (y > (gml_Script___view_get(1, 0) + 580))
        // WARNING: Popz'd an empty stack.
}
if (!init)
{
    var laneOffset = (x > obj_growtangle.x ? 0 : obj_growtangle.x)
    inst = collision_rectangle((obj_growtangle.x - laneOffset), gml_Script_gt_miny(), (gml_Script_gt_maxx() - laneOffset), gml_Script_gt_maxy(), obj_omawaroid_policecar, 0, 1)
    if (inst != noone)
    {
        var finishtime = ((inst.y - 20) / inst.speed)
        var catchuptime = 0
        if (inst.speed < speed)
        {
            catchuptime = ((ystart - (inst.y + 40)) / (speed - inst.speed))
            if (catchuptime < finishtime)
                turnSignal = 1
        }
    }
    if turnSignal
        sprite_index = (x > obj_growtangle.x ? leftTurnSprite : rightTurnSprite)
    init = 1
}
if (initialSpeed == 0)
    initialSpeed = speed
if (state == 2)
    speed -= 0.5
else if (state == 1)
{
    laneTimer += 0.05
    lanePosition = 0
    if (laneTimer < 1)
        lanePosition = lerp(0, 1.25, gml_Script_scr_ease_inout(laneTimer, 3))
    else if (laneTimer < 1.5)
        lanePosition = lerp(1.25, 0.9, gml_Script_scr_ease_inout(((laneTimer - 1) * 2), 4))
    else if (laneTimer < 2)
        lanePosition = lerp(0.9, 1, gml_Script_scr_ease_inout(((laneTimer - 1.5) * 2), 4))
    else
    {
        state = 0
        lanePosition = 1
        x = lane
    }
    if (turnSignal && laneTimer >= 1)
    {
        turnSignal = 0
        sprite_index = forwardSprite
        image_index %= 4
    }
    speed = (initialSpeed - (0.25 * (1 - abs((laneTimer - 1)))))
    x = lerp(previousLane, lane, lanePosition)
    image_angle = lerp(0, (point_direction(x, y, (lane - (x - lane)), (y - 50)) - 90), min((laneTimer * 2), 1))
}
else if turnSignal
{
    bottomScan = (y - 20)
    var laneCheck = (x - obj_growtangle.x)
    inst = collision_rectangle((obj_growtangle.x + (laneCheck * 3)), ((y - 15) - (speed * 7)), (obj_growtangle.x + (laneCheck * 30)), bottomScan, obj_omawaroid_policecar, 0, 1)
    if (inst != -4)
    {
        previousLane = x
        lane = (obj_growtangle.x - (x - obj_growtangle.x))
        laneTimer = 0
        state = 1
    }
}
