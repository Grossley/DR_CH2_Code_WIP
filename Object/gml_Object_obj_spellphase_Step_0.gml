if (global.encounterno == 92)
    funny = 1
if (active == true)
{
    spelltimer += 1
    if (spelltimer >= global.spelldelay && gml_Script_i_ex(spellwriter) == 0)
    {
        if (char >= 3 || spelltotal == 1)
        {
            gml_Script_scr_attackphase()
            var _temp_local_var_3 = spellwriter
            instance_destroy()
        }
        else if (gml_Script_scr_monsterpop() > 0)
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
            gml_Script_scr_attackphase()
            var _temp_local_var_9 = spellwriter
            instance_destroy()
        }
    }
}
