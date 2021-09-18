var _temp_local_var_1, _temp_local_var_3;
with (obj_dmgwriter)
{
    if (delaytimer >= 1)
        killactive = 1
}
for (i = 0; i < 3; i++)
{
    if (global.char[i] == 0)
    {
    }
    else
    {
        var _hltarget = global.char[i]
        var _curhp = global.hp[_hltarget]
        if (argument0 == 0)
            var _healpower = (global.maxhp[_hltarget] / 2)
        else if (argument0 == 1)
            _healpower = (global.maxhp[_hltarget] / 5)
        else if (argument0 == 2)
            _healpower = 1
        else
            _healpower = 0
        gml_Script_scr_heal(i, _healpower)
        ha = gml_Script_instance_create(x, y, obj_healanim)
        ha.target = id
        dmgwr = global.charinstance[i]
        var _temp_local_var_1 = dmgwr
        delay = 8
        type = 3
        damage = _healpower
    }
}
i = 0
while (i < 3)
{
    var _temp_local_var_3 = global.charinstance[i]
    tu--
}
return;
