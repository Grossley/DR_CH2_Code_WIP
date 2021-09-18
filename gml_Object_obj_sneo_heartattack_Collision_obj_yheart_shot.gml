if (con == 3)
    return;
if (visible == false)
    return;
shakex = 6
shakey = 6
heart_health -= other.damage
if (other.damage > 2)
    global.turntimer -= obj_spamton_neo_enemy.heart_hurt_timer_reduction_bigshot
else
    global.turntimer -= obj_spamton_neo_enemy.heart_hurt_timer_reduction
166
with (stacktop)
    0
if (heart_health < 1)
{
    con = 3
    shootcon = 0
    speed = 0
    obj_spamton_neo_enemy.partmode = 1
    bustertimer = 999
    if (global.turntimer > 2)
        global.turntimer = 37
    with (obj_sneo_guymaker)
        // WARNING: Popz'd an empty stack.
    with (obj_sneo_lilguy)
        // WARNING: Popz'd an empty stack.
    with (obj_sneo_heatattack_bullet)
        // WARNING: Popz'd an empty stack.
    with (obj_spamtonshot)
        // WARNING: Popz'd an empty stack.
    with (obj_sneo_biglaser)
        // WARNING: Popz'd an empty stack.
    with (obj_rouxls_power_up_orb)
        // WARNING: Popz'd an empty stack.
}
if (global.turntimer < 51)
{
    global.turntimer = 50
    attackcount = 0
}
