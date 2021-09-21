con = -1
customcon = 0
if (global.chapter != 2 || global.flag[315] == 1)
    instance_destroy()
else
{
    snowy = gml_Script_scr_marker(135, 1130, spr_snowy_ut)
    with (snowy)
        gml_Script_scr_depth()
    monsterkid = gml_Script_scr_marker(170, 1130, spr_mkid_ut)
    with (monsterkid)
        gml_Script_scr_depth()
}
