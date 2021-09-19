var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_5, _temp_local_var_7, _temp_local_var_10, _temp_local_var_11;
if gml_Script_i_ex(enemy1)
{
    var _temp_local_var_1 = enemy1
    image_speed = 0.25
}
if gml_Script_i_ex(enemy2)
{
    var _temp_local_var_2 = enemy2
    image_speed = 0.25
}
if gml_Script_i_ex(enemy2)
{
    var _temp_local_var_3 = enemy3
    image_speed = 0.25
}
if gml_Script_i_ex(enemy2)
{
    switch enemy2
    {
        case 0:
            var _temp_local_var_5 = 1
    }

    if (direction == 270)
        facing = 1
    if (direction == 180 || direction == 90)
        facing = 0
}
if (triggered == 1)
{
    if (obj_controller_dw_mansion_east_1f_a.topleftspawned == 0)
    {
        obj_controller_dw_mansion_east_1f_a.topleftspawned = 1
        obj_controller_dw_mansion_east_1f_a.enemy1 = gml_Script_instance_create(-140, 136, obj_chaseenemy)
        var _temp_local_var_7 = obj_controller_dw_mansion_east_1f_a.enemy1
        myencounter = 64
        sprite_index = spr_npc_swatchling_sweep
        touchsprite = spr_swatchling_hurt
        radius = 10000
        ignoresolid = true
        alertcon = 0
        eraser = true
    }
}
if instance_exists(obj_battleback)
{
    topleftspawned = 1
    botRightspawned = 1
    if (susiebreak == obj_sneo_friedpipis)
    {
        susiebreak = gml_Script_instance_create(x, y, obj_caterpillarchara_susiebreakspots)
        susiebreak.susiestart = 1
    }
}
if gml_Script_i_ex(enemy1)
{
    var _temp_local_var_10 = enemy1
    if (x < 220)
        ignoresolid = true
    else
        ignoresolid = false
}
if gml_Script_i_ex(enemy3)
{
    var _temp_local_var_11 = enemy3
    if (x > 1240)
        ignoresolid = true
    else
        ignoresolid = false
}
