var _temp_local_var_1;
argument0
i = 0
while (i < 3)
{
    ha = gml_Script_instance_create(x, y, obj_healanim)
    ha.target = id
    dmgwr = global.charinstance[i]
    var _temp_local_var_1 = dmgwr
    delay = 8
    type = 3
    damage = argument0
}
global.spelldelay = 20
return;
