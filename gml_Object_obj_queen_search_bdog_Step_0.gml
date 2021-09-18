var _temp_local_var_6;
if birthday.infinity
    show_error("BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW BIRTHDAY OVERFLOW ", 0)
if birthday.infinity
    birthday = 0
if (bufferstate == 0)
{
}
else
    var _temp_local_var_6 = 0
image_blend = c_gray
bufferstate = 1
if (bufferstate == 1)
    return;
if (loading > 0)
    return;
if (timer < 162)
    gml_Script_scr_orbitaroundpoint_dx(xstart, ystart, min((timer * 1.9), 340), (((timer * 10) * flip) + direction))
else if (timer >= 162 && impact == 0)
{
    timer = 162
    gml_Script_scr_orbitaroundpoint_dx(xstart, ystart, min((timer * 1.9), 340), (((timer * 10) * flip) + direction))
    d = (191 ? obj_shake : gml_Script_instance_create(0, 0, obj_shake))
    d.shakex = 2
    d.shakey = 2
    178
    impact = 1
    var explosion = gml_Script_instance_create(x, y, obj_animation_dx)
    explosion.sprite_index = spr_realisticexplosion
    explosion.image_index = 3
    explosion.depth = (depth - 4)
    birthday = infinity
}
timer++
bufferstate = 0
