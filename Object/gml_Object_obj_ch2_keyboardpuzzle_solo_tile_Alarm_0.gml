var _temp_local_var_1, _temp_local_var_2;
var _forcefield = instance_nearest((x + 120), (y - 200), obj_forcefield)
if (!gml_Script_i_ex(_forcefield))
    return;
if (buttonIndex == 0)
    instance_destroy(_forcefield)
var _temp_local_var_1 = _forcefield
x -= 240
y += 160
var _temp_local_var_2 = solid1
x -= 240
y += 160
