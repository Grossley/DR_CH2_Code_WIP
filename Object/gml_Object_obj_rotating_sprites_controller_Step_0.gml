var _temp_local_var_3, _temp_local_var_9;
if (state == 0 && o_boxingcontroller.dead == 1)
    state = 1
if (state == 1)
{
    timer++
    if (timer > (0 / f) && timer < (50 / f))
    {
        var _temp_local_var_3 = rotating_sprite_piece1
        image_alpha -= 0.04
    }
    if (timer > (50 / f))
    {
        instance_destroy()
        var _temp_local_var_9 = rotating_sprite_piece1
        instance_destroy()
    }
}
