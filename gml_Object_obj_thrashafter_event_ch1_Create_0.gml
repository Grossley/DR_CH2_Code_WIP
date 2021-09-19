con = 1
image_xscale = 2
image_yscale = 2
if (global.flag[229] >= 1 && global.plot < 150)
{
    npc = gml_Script_instance_create_ch1(x, (y - 80), 1408)
    npc.sprite_index = spr_lancer_dt_ch1
    con = 999
    instance_destroy()
}
