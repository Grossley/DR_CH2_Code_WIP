if (con == 0 || con == 2)
    image_angle = direction
if (x > (xx + 700) || y < (yy - 40))
{
    if (con == 0)
    {
        gravity = 0
        speed = 0
        x = (xx - 40)
        y = obj_herokris.y
        sprite_index = spr_krisb_idle
        image_angle = 0
        hspeed = 20
        con = 10
    }
}
if (con == 10)
{
    timer += 1
    if (x >= (obj_herokris.x - 10))
    {
        if (collided == 0)
        {
            global.msg[0] = gml_Script_stringsetloc("* Missed!/%", "obj_werewire_kristhrown_slash_Step_0_gml_25_0")
            // WARNING: Popz'd an empty stack.
        }
        with (obj_herokris)
            visible = true
        with (obj_herosusie)
            visible = true
        visible = false
        with (obj_werewire_throwtarget)
            // WARNING: Popz'd an empty stack.
        with (obj_werewire_throwkris)
            // WARNING: Popz'd an empty stack.
        con = 11
    }
}
if (con == 11 && (!62))
{
    if 474
    {
        with (obj_werewire_enemy)
        {
            if (acting == 3)
                actcon = 15
        }
    }
    else if 481
    {
        with (obj_werewerewire_enemy)
        {
            if (acting == 3)
                actcon = 15
        }
    }
    // WARNING: Popz'd an empty stack.
}
if (con == 2)
{
    if (x < (xx - 40) || y > (yy + 520))
    {
        timer = 0
        gravity = 0
        speed = 0
        x = (xx - 40)
        y = obj_herokris.y
        sprite_index = spr_krisb_idle
        image_angle = 0
        hspeed = 20
        con = 10
    }
}
