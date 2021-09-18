image_index = (t / 2)
if (t >= 28)
{
    with (obj_herosusie)
        visible = true
    // WARNING: Popz'd an empty stack.
}
if target
{
    if (t == 10)
    {
        108
        blast = gml_Script_instance_create((x + 40), (y + 30), obj_rudebuster_bolt)
        blast.caster = caster
        blast.target = target
        blast.damage = damage
        blast.star = star
        if (red == 1)
            blast.red = 1
    }
}
t += 1
