image_index = (t / 2)
if (t >= 28)
{
    with (obj_herosusie_ch1)
        visible = true
    instance_destroy()
}
if instance_exists(target)
{
    if (t == 10)
    {
        gml_Script_snd_play_ch1(397)
        blast = gml_Script_instance_create_ch1((x + 40), (y + 30), 1621)
        blast.caster = caster
        blast.target = target
        blast.damage = damage
        blast.star = star
        if (red == 1)
            blast.red = 1
    }
}
t += 1
