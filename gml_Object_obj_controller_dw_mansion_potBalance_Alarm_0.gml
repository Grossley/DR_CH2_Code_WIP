var _temp_local_var_1;
if 107
{
    with (obj_npc_butler)
    {
        if (image_xscale == -2)
            var modifier = -100
        else
            modifier = -36
        newenem = gml_Script_instance_create((x + modifier), y, obj_chaseenemy)
        var _temp_local_var_1 = newenem
        myencounter = 56
        sprite_index = spr_npc_swatchling_sweep_walk
        if (other.image_xscale == -2)
            facing = 1
        touchsprite = spr_npc_swatchling_sweep_walk
        radius = 10000
        ignoresolid = false
        alertcon = 0
        eraser = true
        noAlertSound = 1
        frozen = false
    }
}
spawnVase = 2
triggered = 1
if (con == 0)
    global.interact = 0
