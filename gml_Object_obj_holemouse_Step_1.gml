if place_meeting(x, y, obj_mouseKiller)
{
    visible = false
    con = 1
    if (x < 260)
        fall = gml_Script_instance_create((x + 38), (y + 8), obj_holemouse_descend)
    else
        fall = gml_Script_instance_create((x + 2), (y + 10), obj_holemouse_descend)
    fall.target = target
    // WARNING: Popz'd an empty stack.
}
