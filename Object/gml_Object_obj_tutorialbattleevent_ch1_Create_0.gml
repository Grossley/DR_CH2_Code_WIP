con = 1
xx = x
yy = 0
dummy = gml_Script_instance_create_ch1((xx + 500), (yy + 160), 1408)
if (global.plot >= 31)
    con = 400
if (global.plot < 6)
{
    gml_Script_scr_getchar_ch1(3)
    global.cinstance[0] = gml_Script_instance_create_ch1((obj_mainchara_ch1.x - 6), (obj_mainchara_ch1.y - 16), 1489)
    global.cinstance[0].target = 12
    with (global.cinstance[0])
    {
        usprite = spr_ralseiu_ch1
        dsprite = spr_ralseid_ch1
        rsprite = spr_ralseir_ch1
        lsprite = spr_ralseil_ch1
    }
}
