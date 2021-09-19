if (abs(angle_difference(point_direction(x, y, other.x, other.y), opening)) <= openingsize)
    return;
if (destroyable == 1)
{
    if (other.big == 0)
    {
        var _temp_local_var_1 = other
        event_user(0)
    }
    anim = gml_Script_instance_create(x, y, obj_yshot_anim)
    anim.image_xscale = image_xscale
    anim.image_yscale = image_yscale
    var _temp_local_var_2 = anim
    sprite_index = spr_yheart_shot_hit3
}
else if (destroyable == -1)
{
    angle_speed = 0
    var _temp_local_var_3 = other
    event_user(0)
}
