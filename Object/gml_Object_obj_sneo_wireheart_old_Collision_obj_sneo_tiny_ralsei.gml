if (other.active == false)
    return;
if (invincibility_timer > 0)
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
else if (type == 0 || (type == 1 && obj_spamton_neo_enemy.difficulty > 2))
    global.turntimer -= 80
else
{
    hp -= 5
    other.hp -= 10
    other.alarm[0] = 10
    if (!audio_is_playing(snd_hurt1))
        gml_Script_snd_play(snd_hurt1)
}
damagetimer = 5
gml_Script_snd_play(snd_damage)
if (hp <= 0)
    destroyed = 1
