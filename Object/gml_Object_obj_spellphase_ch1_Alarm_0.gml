var _temp_local_var_1, _temp_local_var_2;
for (xyz = 0; xyz < 3; xyz += 1)
{
    using[xyz] = 0
    gotspell[xyz] = 0
    gotitem[xyz] = 0
    if (global.charaction[xyz] == 2)
    {
        spelltotal += 1
        using[xyz] = 1
        gotspell[xyz] = 1
        if (castyet == 0)
        {
            var _temp_local_var_1 = global.charinstance[xyz]
            state = 2
            attacktimer = 0
        }
    }
    if (global.charaction[xyz] == 4)
    {
        spelltotal += 1
        using[xyz] = 1
        gotitem[xyz] = 1
        if (castyet == 0)
        {
            var _temp_local_var_2 = global.charinstance[xyz]
            state = 4
            attacktimer = 0
        }
    }
}
active = true
global.spelldelay = 90
