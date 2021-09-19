with (obj_dmgwriter)
{
    if (delaytimer >= 1)
        killactive = 1
}
gml_Script_scr_healallitemspell(999)
for (i = 0; i < 3; i++)
{
    with (global.charinstance[i])
        tu--
}
return;
