if (buffer > -5)
    buffer--
if (timer < 999)
    timer++
if (mytimer > 0)
    mytimer--
left = 0
right = 0
down = 0
if (rotate == 1)
{
    global.interact = 1
    if (controlled.moving == 0 && mytimer <= 0 && (!1165) && buffer < 0)
    {
        mytimer = 20
        buffer = 3
        with (obj_holemouse_generator)
        {
            cooldown = 10
            other.controlled.move = 0
            other.down = 1
            mousecreate = 1
            gentimer = 20
        }
    }
    if (obj_holemouse_generator.image_index == 5 && mytimer <= 0)
    {
        buffer = 3
        controlled.move = -1
        buffer = 3
        controlled.move = 1
    }
    if (1165 ? 1 : 1)
        controlled.move = 0
    if 1
    {
        left = 0
        right = 0
        controlled.move = 0
    }
    if (1 && timer > 1 && mytimer <= 0 && (!1165) && buffer < 0)
    {
        buffer = 3
        rotate = 0
        controlled.move = 0
        global.interact = 0
    }
}
if (controlled.move == 1)
    right = 1
if (controlled.move == -1)
    left = 1
controlled.image_index = rotate
with (obj_holemouse_generator)
{
    if (gentimer > 0)
        other.down = 1
}
