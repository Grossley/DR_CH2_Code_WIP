var table_collider, _temp_local_var_1, _temp_local_var_2;
con = 0
key = -1
dooropen = self
keyfloat = 0
floattimer = 0
keysparkle = 0
sparkletimer = 0
fadeplatters = 0
keyXPos = 0
keyYPos = 0
make_forcefield = 0
forcefield = -4
if (global.chapter != 2)
    // WARNING: Popz'd an empty stack.
else
{
    if (global.flag[344] == 1)
    {
        dooropen = gml_Script_scr_dark_marker(180, 40, 2859)
        dooropen.depth = 899999
    }
    else
    {
        doorlocked = gml_Script_scr_marker(180, 40, 2861)
        doorlocked.depth = 899999
        monty = gml_Script_instance_create(170, 240, obj_saucer_monty)
        exitcollider = gml_Script_instance_create(180, 80, obj_solidblock)
        exitcollider.image_xscale = 4
        exitcollider.image_yscale = 4
    }
    var i = 0
    while (i < 3)
    {
        table[i] = gml_Script_instance_create((870 + (321 * i)), 200, obj_saucer)
        table[i].image_speed = 0
        var _temp_local_var_1 = table[i]
        mode = 1
        if (i == 0)
            contentsprite = 2308
        if (i == 1)
            contentsprite = 1798
        if (i == 2)
        {
            if (global.flag[357] == 1)
                contentsprite = 2485
            else
                contentsprite = 1796
        }
    }
    swatch_npc = gml_Script_instance_create(1760, 135, obj_npc_butler)
    var _temp_local_var_2 = swatch_npc
}
