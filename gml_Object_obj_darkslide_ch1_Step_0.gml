collidetimer -= 1
if (collidetimer < 0 && collide == 1 && global.interact == 1)
{
    collide = 0
    global.interact = 0
    if (collider >= 10)
    {
        if (abovey == 1)
        {
            with (obj_mainchara_ch1)
            {
                fun = false
                sprite_index = spr_krisd_dark_ch1
            }
            slide_noise
        }
        gml_Script_instance_create_ch1(x, ((y + sprite_height) - 40), 1656)
        // WARNING: Popz'd an empty stack.
    }
}
