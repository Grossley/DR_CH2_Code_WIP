gml_Script_scr_healall_ch1(argument0)
i = 0
while (i < 3)
{
    with (global.charinstance[i])
    {
        ha = gml_Script_instance_create_ch1(x, y, 1618)
        ha.target = id
        dmgwr = gml_Script_scr_dmgwriter_selfchar_ch1()
        with (dmgwr)
        {
            delay = 8
            type = 3
            damage = argument0
        }
    }
}
global.spelldelay = 20
return;
