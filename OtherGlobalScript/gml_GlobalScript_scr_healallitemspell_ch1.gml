var _temp_local_var_1, _temp_local_var_2;
gml_Script_scr_healall_ch1(argument0)
i = 0
while (i < 3)
{
    var _temp_local_var_1 = global.charinstance[i]
    ha = gml_Script_instance_create_ch1(x, y, 1618)
    ha.target = id
    dmgwr = gml_Script_scr_dmgwriter_selfchar_ch1()
    var _temp_local_var_2 = dmgwr
    delay = 8
    type = 3
    damage = argument0
}
global.spelldelay = 20
return;
