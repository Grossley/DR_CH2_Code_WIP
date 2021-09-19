with (obj_dmgwriter)
{
    if (delaytimer >= 1)
        killactive = 1
}
gml_Script_scr_healallitemspell(999)
i = 0
while (i < 3)
{
    with (global.charinstance[i])
		tu--
}
return;
