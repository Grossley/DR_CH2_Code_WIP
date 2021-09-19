con = -1
customcon = 0
if (global.chapter != 2 || global.flag[315] == 1)
    instance_destroy()
else
{
    snowy = gml_Script_scr_marker(135, 1130, 951)
    with (snowy)
        gml_Script_scr_depth()
    monsterkid = gml_Script_scr_marker(170, 1130, 956)
    with (monsterkid)
        gml_Script_scr_depth()
}
