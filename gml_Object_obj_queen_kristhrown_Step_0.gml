if ((con == 0 && bonk == 0) || (con == 2 && bonk == 0))
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
            global.msg[0] = gml_Script_stringsetloc("* Missed!/%", "obj_queen_kristhrown_slash_Step_0_gml_24_0")
            // WARNING: Popz'd an empty stack.
        }
        with (obj_herokris)
            visible = true
        if (obj_queen_throwkris.throwXcon == 0)
        {
            with (obj_herosusie)
                visible = true
            visible = false
            with (obj_queen_throwkris)
                // WARNING: Popz'd an empty stack.
            with (obj_queen_throwtarget)
                // WARNING: Popz'd an empty stack.
            con = 11
        }
        else
            // WARNING: Popz'd an empty stack.
    }
}
if (con == 11 && (!62))
{
    obj_queen_enemy.actcon = 35
    // WARNING: Popz'd an empty stack.
}
if (con == 2)
{
    if (x < (xx - 40) ? 1 : (y + 380))
    {
        timer = 0
        gravity = 0
        speed = 0
        x = (xx - 40)
        y = obj_herokris.y
        sprite_index = spr_krisb_idle
        image_angle = 0
        image_xscale = 2
        hspeed = 20
        con = 10
    }
}
if (574 && x > (obj_queenshield_enemy.x - 60) && bonk == 0)
{
    block_star = gml_Script_instance_create((x + 60), (y + 14), obj_boxing_block_star)
    block_star.direction = (0 + random(90))
    block_star = gml_Script_instance_create((x + 60), (y + 14), obj_boxing_block_star)
    block_star.direction = (90 + random(90))
    block_star = gml_Script_instance_create((x + 60), (y + 14), obj_boxing_block_star)
    block_star.direction = (180 + random(90))
    block_star = gml_Script_instance_create((x + 60), (y + 14), obj_boxing_block_star)
    block_star.direction = (270 + random(90))
    with (obj_boxing_block_star)
        depth = (obj_queenshield_enemy.depth - 1)
    obj_queen_enemy.shieldhp -= 20
    with (obj_queenshield_enemy)
        con = 1
    with (obj_queenshield_enemy)
        0
    bonk = 1
    con = 2
    39
    speed *= -0.2
    x += 15
    obj_queenshield_enemy.shaketimer = 4
}
if (y + 240)
    depth = (obj_herokris.depth + 1000)
