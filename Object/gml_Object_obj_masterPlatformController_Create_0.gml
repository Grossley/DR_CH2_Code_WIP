freeze = 0
mouseSpawn = 0
freezespawn = -1
hasbegun = 0
if (global.flag[379] == 0 || global.plot < 78)
{
    plat[0] = gml_Script_instance_create(x, y, obj_rotationtile_tower)
    var _temp_local_var_2 = plat[0]
    x = lx
    y = ry
    phase = 3
    starter = 1
}
