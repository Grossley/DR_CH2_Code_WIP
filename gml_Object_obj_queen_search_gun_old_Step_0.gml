var _temp_local_var_1, _temp_local_var_10;
if (loading > 0)
    return;
if smashed
{
    timer++
    if (timer >= 30)
    {
        var _xx = (x + gml_Script_scr_orbitx(0, 0, (64 * flip), -20, image_angle))
        var _yy = (y + gml_Script_scr_orbity(0, 0, (64 * flip), -20, image_angle))
        d = gml_Script_instance_create(_xx, _yy, obj_regularbullet)
        d.sprite_index = spr_spadebullet
        d.image_angle = (image_angle + (flip ? 0 : 180))
        d.damage = damage
        d.target = target
        d.speed = 12
        obj_queen_search_flail.broken = 1
        d.direction = (image_angle + (flip ? 0 : 180))
        // WARNING: Popz'd an empty stack.
    }
    return;
}
if (bufferstate == 0)
{
}
else
    var _temp_local_var_10 = 0
image_blend = c_gray
bufferstate = 1
if (bufferstate == 1)
    return;
if (timer < targetTime)
{
    timer++
    if (timer < 0)
        return;
    image_angle = lerp(0, targetAngle, gml_Script_scr_ease_inout((timer / targetTime), -1))
    if (timer >= targetTime)
    {
        _xx = (x + gml_Script_scr_orbitx(0, 0, (64 * flip), -20, image_angle))
        _yy = (y + gml_Script_scr_orbity(0, 0, (64 * flip), -20, image_angle))
        d = gml_Script_instance_create(_xx, _yy, obj_queen_search_laser)
        d.damage = damage
        d.target = target
        d.direction = (image_angle + (flip ? 0 : 180))
        state = 3
        timer = -15
        0
    }
}
