con = 0
if (global.flag[255] == 0)
{
    global.interact = 1
    con = 1
    n = gml_Script_scr_marker_ch1(118, 88, 3489)
    n.depth = 100000
    sprite_index = spr_rudy_l_ch1
}
else
{
    gml_Script_instance_create_ch1(x, y, 1408)
    instance_destroy()
}
interact = 0
myinteract = 0
talked = 0
