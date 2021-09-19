gml_Script_scr_heal(star, argument0)
global.spelldelay = 15
var _temp_local_var_1 = global.charinstance[star]
ha = gml_Script_instance_create(x, y, obj_healanim)
ha.target = id
if (global.chapter == 2 && instance_exists(o_boxingcontroller))
    ha.target = o_boxingcontroller.id
dmgwr = gml_Script_scr_dmgwriter_selfchar()
var _temp_local_var_3 = dmgwr
delay = 8
type = 3
damage = argument0
