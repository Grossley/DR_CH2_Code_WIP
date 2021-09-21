if (global.plot < 95 && (!gml_Script_scr_havechar(2)))
{
    var susie = gml_Script_scr_dark_marker(415, 190, spr_cutscene_15_susie_cotton_candy)
    susie.image_speed = 0.1
    with (susie)
        gml_Script_scr_depth()
    var ralsei = gml_Script_scr_dark_marker(340, 205, spr_ralsei_cotton_talk)
    ralsei.image_speed = 0.1
    with (ralsei)
        gml_Script_scr_depth()
}
