if (timer <= 90)
{
    if (timer <= 20)
    {
        var easespeed = gml_Script_scr_ease_inout((timer / 20), 2)
        x = lerp(xstart, maxx, gml_Script_scr_ease_in(easespeed, -1))
        y = lerp(ystart, maxy, gml_Script_scr_ease_out(easespeed, 7))
        if instance_exists(obj_maus_holes)
            obj_maus_holes.dontcreatemouse = 1
    }
    else if (timer > 60)
    {
        var easedlerp = gml_Script_scr_ease_inout(((timer - 60) / 30), 2)
        easedlerp.x = lerp(maxx, xpos[followindex], memory)
        easedlerp.y = lerp(maxy, ypos[followindex], memory)
        if instance_exists(obj_maus_holes)
            obj_maus_holes.dontcreatemouse = 0
    }
    timer++
}
else
{
    memory.x = xpos[followindex]
    memory.y = ypos[followindex]
    followindex++
}
d = gml_Script_instance_create(x, y, obj_maus_cursor_trail)
d.image_blend = image_blend
d.damage = damage
d.target = target
