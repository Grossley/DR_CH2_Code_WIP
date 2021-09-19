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
            with (spellwriter)
                instance_destroy()
            instance_destroy()
        }
        else if (gml_Script_scr_monsterpop() > 0)
        {
            if (gotitem[char] == 1)
            {
                re_castyet = 1
                with (global.charinstance[char])
                    state = 4
                with (spellwriter)
                    instance_destroy()
                gml_Script_scr_spelltext(global.charspecial[char], char)
                spellwriter = gml_Script_scr_battletext_default()
            }
            if (gotspell[char] == 1)
            {
                re_castyet = 1
                with (global.charinstance[char])
                    state = 2
                with (spellwriter)
                    instance_destroy()
                gml_Script_scr_spelltext(global.charspecial[char], char)
                spellwriter = gml_Script_scr_battletext_default()
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
            with (spellwriter)
                instance_destroy()
            instance_destroy()
        }
    }
}
