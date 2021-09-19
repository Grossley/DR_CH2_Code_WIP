var _temp_local_var_1, _temp_local_var_2, _temp_local_var_4;
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
        if (_curhp <= 0)
            var _healpower = ((-_curhp) + 5)
        else
            _healpower = 1
        gml_Script_scr_heal(i, _healpower)
        var _temp_local_var_1 = global.charinstance[i]
        ha = gml_Script_instance_create(x, y, obj_healanim)
        ha.target = id
        dmgwr = gml_Script_scr_dmgwriter_selfchar()
        var _temp_local_var_2 = dmgwr
        delay = 8
        type = 3
        damage = _healpower
    }
}
i = 0
while (i < 3)
{
    var _temp_local_var_4 = global.charinstance[i]
    tu--
}
return;
