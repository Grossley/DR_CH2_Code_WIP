layer_set_visible("reference", 0)
init = 0
if (global.flag[542] != 0)
{
    swatch = gml_Script_instance_create(500, 500, obj_chaseenemy)
    var _temp_local_var_1 = swatch
    myencounter = 64
    encounterflag = 558
    sprite_index = spr_npc_swatchling_sweep_walk
    touchsprite = sprite_index
    alertskip = 1
    pacetype = 0
    chasetype = -1
    cancelwalk = true
    image_speed = 0.25
    eraser = true
}
else
    instance_destroy()
pathProg = 0
timer = 0
