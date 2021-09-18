var _temp_local_var_1;
gml_Script_scr_heal(star, argument0)
global.spelldelay = 15
ha = gml_Script_instance_create(x, y, obj_healanim)
ha.target = id
if (global.chapter == 2 && instance_exists(o_boxingcontroller))
    ha.target = o_boxingcontroller.id
dmgwr = global.charinstance[star]
var _temp_local_var_1 = dmgwr
delay = 8
type = 3
damage = argument0
