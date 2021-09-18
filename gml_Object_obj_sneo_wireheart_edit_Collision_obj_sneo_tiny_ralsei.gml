if (other.active == false)
    return;
if (invincibility_timer > 0)
{
    with (stacktop)
        // WARNING: Popz'd an empty stack.
    return;
}
invincibility_timer = 10
if (global.turntimer < 150)
{
    hp = 0
    if (type == 0 || (type == 1 && obj_spamton_neo_enemy.difficulty > 2 && global.turntimer > 20))
    {
        global.turntimer = 20
        with (obj_sneo_wireheart)
        {
            hp = 0
            destroyed = 1
        }
    }
}
else if (type == 0 || (type == 1 && obj_spamton_neo_enemy.difficulty > 2))
    global.turntimer -= 80
else
{
    hp -= 5
    other.hp -= 10
    alarm[0] = 10
    if (!170)
        170
}
damagetimer = 5
166
if (hp <= 0)
    destroyed = 1
