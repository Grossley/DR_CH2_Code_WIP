spawnVase = 0
triggered = 0
monsterCount = 0
con = 0
timer = 0
init_butler = 0
readtrigger = 0
readcount = 0
if (global.flag[541] != 0)
    global.flag[385] = 1
if (global.flag[385] == 0)
{
    with (obj_queenvase)
    {
        if (y > 540)
            // WARNING: Popz'd an empty stack.
    }
}
if (global.flag[385] != 0)
{
    with (obj_npc_butler)
        // WARNING: Popz'd an empty stack.
    gml_Script_instance_create(0, 0, obj_controller_potparadise)
    // WARNING: Popz'd an empty stack.
}
