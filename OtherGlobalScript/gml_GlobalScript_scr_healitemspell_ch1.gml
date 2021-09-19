var _temp_local_var_1, _temp_local_var_2;
gml_Script_scr_heal_ch1(star, argument0)
var _temp_local_var_1 = global.charinstance[star]
ha = gml_Script_instance_create_ch1(x, y, 1618)
ha.target = id
dmgwr = gml_Script_scr_dmgwriter_selfchar_ch1()
var _temp_local_var_2 = dmgwr
delay = 8
type = 3
damage = argument0
