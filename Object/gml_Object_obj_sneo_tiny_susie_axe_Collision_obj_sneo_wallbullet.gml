if (other.active == false)
    return;
if (other.destroyable == 1)
{
    instance_destroy()
    gml_Script_snd_play(snd_damage)
    with (other)
        instance_destroy()
}
