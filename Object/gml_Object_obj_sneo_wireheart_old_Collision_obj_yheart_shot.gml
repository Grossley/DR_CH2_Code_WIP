if (invincibility_timer > 0 && other.big == 0)
{
    with (other)
        instance_destroy()
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
else
{
    if (type == 0 || (type == 1 && obj_spamton_neo_enemy.difficulty > 2))
    {
        if (other.big == 1)
        {
            global.turntimer -= (80 - (chargeshothitcount * 10))
            if (chargeshothitcount < 3)
                chargeshothitcount++
        }
        else
        {
            global.turntimer -= (20 - normalshothitcount)
            if (normalshothitcount < 10)
                normalshothitcount++
        }
    }
    else if (other.big == 1)
        hp -= 5
    else
        hp--
    if gml_Script_scr_debug()
    {
        show_debug_message(type)
        show_debug_message(hp)
    }
}
with (other)
    instance_destroy()
damagetimer = 5
gml_Script_snd_play(166)
if (hp <= 0)
    destroyed = 1
