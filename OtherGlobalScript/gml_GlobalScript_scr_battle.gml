var _temp_local_var_1, _temp_local_var_2;
global.specialbattle = argument1
global.encounterno = argument0
if (global.flag[9] != 2)
{
    global.flag[9] = 1
    global.batmusic[0] = gml_Script_snd_init("battle.ogg")
}
gml_Script_instance_create(0, 0, obj_battleback)
gml_Script_instance_create(0, 0, obj_encounterbasic)
__enemymarker[0] = argument2
__enemymarker[1] = argument3
__enemymarker[2] = argument4
for (__ien = 0; __ien < 3; __ien++)
{
    if (global.monstertype[__ien] != 0)
    {
        if (!gml_Script_i_ex(__enemymarker[__ien]))
        {
            __enemymarker[__ien] = gml_Script_scr_dark_marker((global.monstermakex[__ien] + 300), global.monstermakey[__ien], object_get_sprite(global.monsterinstancetype[__ien]))
            __enemymarker[__ien].depth = (-__ien)
        }
        __enemymarker[__ien].__ien = __ien
        var _temp_local_var_1 = __enemymarker[__ien]
        gml_Script_scr_move_to_point_over_time(global.monstermakex[__ien], global.monstermakey[__ien], 20)
        __doom = gml_Script_instance_create(x, y, obj_doom)
        __doom.target = id
        alarm[0] = __doom
        var _temp_local_var_2 = 25
    }
}
return;
