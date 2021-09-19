if (destroyable == 1)
{
    if (other.big == 0)
    {
        hp--
        speed = 3
    }
    else
    {
        hp -= 3
        speed = 0
    }
    if (hp <= 0)
    {
        event_user(0)
        gml_Script_snd_play(188)
        speed = 0
    }
    else
    {
        timer = -1
        gml_Script_snd_play(166)
    }
}
with (other)
    event_user(0)
