if (con == 0 || con == 2)
    image_angle = direction
if (x > (xx + 700) || y < (yy - 40))
{
    if (con == 0)
    {
        gravity = 0
        speed = 0
        x = (xx - 40)
        y = obj_heroralsei.y
        sprite_index = spr_ralseib_idle
        image_angle = 0
        hspeed = 20
        con = 10
    }
}
if (con == 10)
{
    timer += 1
    if (x >= (obj_heroralsei.x - 10))
    {
        if (collided == 0)
        {
            global.msg[0] = gml_Script_stringsetloc("* Missed!/%", "obj_ralseithrown_slash_Step_0_gml_23_0")
            // WARNING: Popz'd an empty stack.
        }
        with (obj_heroralsei)
            visible = true
        with (obj_herosusie)
            visible = true
        with (obj_checkers_enemy)
        {
            actcon = 1
            visible = true
        }
        with (obj_throwtarget)
            // WARNING: Popz'd an empty stack.
        with (obj_throwralsei)
            // WARNING: Popz'd an empty stack.
        // WARNING: Popz'd an empty stack.
    }
}
if (con == 2)
{
    if (x < (xx - 40) || y > (yy + 520))
    {
        timer = 0
        gravity = 0
        speed = 0
        x = (xx - 40)
        y = obj_heroralsei.y
        sprite_index = spr_ralseib_idle
        image_angle = 0
        hspeed = 20
        con = 10
    }
}
