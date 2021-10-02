if ((con == 0 && bonk == 0) || (con == 2 && bonk == 0))
    image_angle = direction
if (x > (xx + 700) || y < (yy - 40))
{
    if (con == 0)
    {
        gravity = 0
        speed = 0
        x = (xx - 40)
        y = obj_heroralsei.y
        sprite_index = spr_ralsei_idle
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
            global.msg[0] = stringsetloc("* Missed!/%", "obj_queen_ralseithrown_slash_Step_0_gml_23_0")
            scr_battletext_default()
        }
        with (obj_herokris)
            visible = true
        with (obj_herosusie)
            visible = true
        with (obj_heroralsei)
            visible = true
        visible = false
        with (obj_queen_throwtarget)
            instance_destroy()
        with (obj_queen_throwkris)
            instance_destroy()
        con = 11
    }
}
if (con == 11 && (!instance_exists(obj_writer)))
{
    obj_queen_enemy.actcon = 35
    instance_destroy()
}
if (con == 2)
{
    if (x < (xx - 40) || y > (cameray() + 380))
    {
        timer = 0
        gravity = 0
        speed = 0
        x = (xx - 40)
        y = obj_heroralsei.y
        sprite_index = spr_ralsei_idle
        image_angle = 0
        hspeed = 20
        con = 10
    }
}
if (instance_exists(obj_queenshield_enemy) && x > (obj_queenshield_enemy.x - 60) && bonk == 0)
{
    block_star = instance_create((x + 60), (y + 34), obj_boxing_block_star)
    block_star.direction = (0 + random(90))
    block_star = instance_create((x + 60), (y + 34), obj_boxing_block_star)
    block_star.direction = (90 + random(90))
    block_star = instance_create((x + 60), (y + 34), obj_boxing_block_star)
    block_star.direction = (180 + random(90))
    block_star = instance_create((x + 60), (y + 34), obj_boxing_block_star)
    block_star.direction = (270 + random(90))
    with (obj_boxing_block_star)
        depth = (obj_queenshield_enemy.depth - 1)
    obj_queen_enemy.shieldhp -= 20
    with (obj_queenshield_enemy)
        con = 1
    with (obj_queenshield_enemy)
        event_user(0)
    bonk = 1
    con = 2
    snd_play(snd_bell)
    speed *= -0.2
    x += 15
    obj_queenshield_enemy.shaketimer = 4
}
if (y > (cameray() + 240))
    depth = (obj_herokris.depth + 1000)
