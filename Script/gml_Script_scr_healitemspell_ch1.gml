gml_Script_scr_heal_ch1(star, argument0)
with (global.charinstance[star])
{
    ha = gml_Script_instance_create_ch1(x, y, 1618)
    ha.target = id
}
dmgwr = gml_Script_scr_dmgwriter_selfchar_ch1()
with (dmgwr)
{
    delay = 8
    type = 3
    damage = argument0
}