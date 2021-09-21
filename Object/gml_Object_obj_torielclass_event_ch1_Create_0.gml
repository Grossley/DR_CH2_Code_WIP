global.facing = 0
obj[0] = gml_Script_scr_marker_ch1(126, 63, spr_torieldesk_ch1)
obj[1] = gml_Script_scr_marker_ch1(107, 116, spr_smalldesk_ch1)
obj[2] = gml_Script_scr_marker_ch1(158, 116, spr_smalldesk_ch1)
obj[3] = gml_Script_scr_marker_ch1(208, 116, spr_smalldesk_ch1)
obj[4] = gml_Script_scr_marker_ch1(107, 145, spr_smalldesk_ch1)
obj[5] = gml_Script_scr_marker_ch1(158, 145, spr_smalldesk_ch1)
obj[6] = gml_Script_scr_marker_ch1(208, 145, spr_smalldesk_ch1)
obj[7] = gml_Script_scr_marker_ch1(49, 179, spr_toyblock_ch1)
obj[8] = gml_Script_scr_marker_ch1(261, 183, spr_godthrone_ch1)
for (i = 0; i < 9; i += 1)
{
    with (obj[i])
        gml_Script_scr_depth_ch1()
}
sunset = gml_Script_scr_marker_ch1(0, 0, spr_torielclass_sunsetoverlay_ch1)
with (sunset)
{
    image_alpha = 0.4
    depth = 2000
}
