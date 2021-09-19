con = -1
customcon = 0
su_actor = -1
disable_face = 0
if (global.chapter != 2 || global.flag[309] == 9)
    instance_destroy()
else if (global.flag[358] == 1)
{
    nise_susie = gml_Script_scr_dark_marker(575, 275, 496)
    nise_susie.image_speed = 0.25
    with (nise_susie)
        gml_Script_scr_depth()
    nise_ralsei = gml_Script_scr_dark_marker(660, 280, 494)
    nise_ralsei.image_speed = 0.25
    with (nise_ralsei)
        gml_Script_scr_depth()
}
else if (global.flag[358] > 1)
{
    if (!gml_Script_scr_havechar(2))
        gml_Script_scr_getchar(2)
    if (!gml_Script_scr_havechar(3))
        gml_Script_scr_getchar(3)
}
