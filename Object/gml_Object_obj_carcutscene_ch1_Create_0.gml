var _temp_local_var_1;
for (i = 0; i < 20; i += 1)
{
    prevalpha[i] = 0
    prevwx[i] = -200
    prevwy[i] = -200
    prevstringmax[i] = 0
    prevhspace[i] = 0
    prevlinecount[i] = 0
    prevvspace[i] = 0
}
carcon = 0
drawwave = 0
con = 0
dhaver = false
v = 0
vx = 0
vy = 0
myd = 23827382
if (global.plot > 1)
    instance_destroy()
else
{
    global.facing = 0
    with (obj_npc_sign_ch1)
        instance_destroy()
    global.currentsong[0] = gml_Script_snd_init_ch1("mus_introcar.ogg")
    con = 1
    alarm[4] = 30
    global.interact = 1
    k = 1347
    t = gml_Script_scr_marker_ch1(195, 240, 3465)
    var _temp_local_var_1 = t
    depth = 400000
}