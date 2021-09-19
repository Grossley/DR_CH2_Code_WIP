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
    x = xpos[followindex]
    y = ypos[followindex]
    followindex++
    var _temp_local_var_3 = memory
    var _temp_local_var_4 = memory
}
d = gml_Script_instance_create(x, y, obj_maus_cursor_trail)
d.image_blend = image_blend
d.damage = damage
d.target = target
