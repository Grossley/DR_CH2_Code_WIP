collidetimer -= 1
if (collidetimer < 0 && collide == 1 && global.interact == 1)
{
    collide = 0
    global.interact = 0
    if (collider >= 10)
    {
        if (abovey == 1)
        {
            with (obj_mainchara)
            {
                fun = false
                sprite_index = spr_krisd
            }
            slide_noise
        }
        gml_Script_instance_create(x, ((y + sprite_height) - 40), obj_soliddark)
        // WARNING: Popz'd an empty stack.
    }
}
