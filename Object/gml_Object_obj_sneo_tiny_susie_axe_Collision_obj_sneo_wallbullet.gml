if (other.active == false)
    return;
if (other.destroyable == 1)
{
    instance_destroy()
    gml_Script_snd_play(166)
    with (other)
        instance_destroy()
}
