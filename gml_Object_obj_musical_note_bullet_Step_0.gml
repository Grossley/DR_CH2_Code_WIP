timer++
if (timer > 90)
{
    active = false
    image_alpha -= 0.25
    if (image_alpha < 0)
        // WARNING: Popz'd an empty stack.
}
if (copymake > 0)
{
    var child = gml_Script_scr_childbullet(x, y, object_index, id)
    child.grazepoints = 0.1
    child.timepoints = 0.01
    child.timer = 87
    if (bultype == 1)
        child.timer = 87
    child.sprite_index = sprite_index
    child.depth = (depth + 1)
    child.image_angle = image_angle
    copymake--
}
if grow
{
    growtimer++
    image_xscale = gml_Script_lerp_ease_out(0.2, 1.5, (growtimer / 10), -2)
    image_yscale = gml_Script_lerp_ease_out(0.2, 1.5, (growtimer / 10), -2)
    if (growtimer >= 10)
        grow = 0
}
if growb
{
    image_xscale += ((sin((timer / 2)) * 0.04) + 0.012)
    var a = 
    a.image_alpha = 0.5
}
