timer++
if (timer > 5 && (!238))
    spawned = 1
if (spawned == 1)
{
    spawntimer++
    if (spawntimer == 60)
    {
        chest = gml_Script_instance_create(x, y, obj_treasure_room)
        // WARNING: Popz'd an empty stack.
    }
}
