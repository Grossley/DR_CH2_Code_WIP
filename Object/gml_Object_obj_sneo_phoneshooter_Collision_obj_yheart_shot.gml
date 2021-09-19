var _temp_local_var_1, _temp_local_var_3, _temp_local_var_5;
if (destroyable == 1)
{
    if (other.big == 0)
    {
        var _temp_local_var_1 = other
        event_user(0)
    }
    hp--
    if (other.big || hp <= 0)
    {
        anim = gml_Script_instance_create(x, y, obj_yshot_anim)
        anim.image_xscale = image_xscale
        anim.image_yscale = image_yscale
        var _temp_local_var_3 = anim
        sprite_index = spr_yheart_shot_hit3
    }
    else
    {
        flash = true
        if (sin(((siner + swingdir) / 20)) < sin((siner / 20)))
            swingdir *= -1
    }
}
else if (destroyable == -1)
{
    var _temp_local_var_5 = other
    event_user(0)
}
