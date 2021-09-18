var _temp_local_var_4;
if 131
{
    with (obj_readable_room1)
    {
        if (visible == true)
        {
            image_speed = 0.25
            if (direction >= 136 && direction <= 225)
                image_xscale = 2
            if (direction >= 306 || direction <= 45)
                image_xscale = -2
            if (sprite_index == spr_tasque_idle_overworld)
                depth = (y > 350 ? (obj_mainchara.depth - 100) : (obj_mainchara.depth + 100))
            else
                // WARNING: Popz'd an empty stack.
        }
    }
}
if (howl_con == 1)
{
}
else
    var _temp_local_var_4 = 0
howl_con = 0
207
