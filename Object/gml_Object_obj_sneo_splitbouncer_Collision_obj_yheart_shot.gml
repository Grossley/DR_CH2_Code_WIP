if (destroyable == 1)
{
    hp--
    if (other.big == 1 || hp <= 0)
    {
        breaking = 10
        destroyable = 0
        speed = 0
        obj_shrinktangle.sizeup += shrinksize
        image_blend = c_white
        sprite_index = spr_sneo_c_weakpoint_hit
    }
    flash = true
    if (other.big == 0)
    {
        var _temp_local_var_2 = other
        event_user(0)
    }
}
