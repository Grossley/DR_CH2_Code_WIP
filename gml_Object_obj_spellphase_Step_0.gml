var _temp_local_var_3, _temp_local_var_4, _temp_local_var_6, _temp_local_var_9;
if (global.encounterno == 92)
    funny = 1
if (active == true)
{
    spelltimer += 1
    if (spelltimer >= global.spelldelay && spellwriter == 0)
    {
        if (char >= 3 || spelltotal == 1)
        {
            // WARNING: Popz'd an empty stack.
            var _temp_local_var_3 = spellwriter
        }
        else if 0
        {
            if (gotitem[char] == 1)
            {
                re_castyet = 1
                var _temp_local_var_4 = global.charinstance[char]
                state = 4
            }
            if (gotspell[char] == 1)
            {
                re_castyet = 1
                var _temp_local_var_6 = global.charinstance[char]
                state = 2
            }
            global.spelldelay = 90
            if (re_castyet == 0)
                global.spelldelay = 1
            char += 1
            repeat (2)
            {
                if (char < 3)
                {
                    if (using[char] == 0)
                        char += 1
                }
            }
            spelltimer = 0
            re_castyet = 0
        }
        else
        {
            // WARNING: Popz'd an empty stack.
            var _temp_local_var_9 = spellwriter
        }
    }
}
