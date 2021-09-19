var _temp_local_var_1, _temp_local_var_2;
choicetimer = 0
flush = 0
con = 0
if (room == room_town_mid_ch1)
{
    if (global.flag[271] == 0)
    {
        bnpc = gml_Script_instance_create_ch1(x, y, 1409)
        bnpc.sprite_index = spr_npc_icemascot1_ch1
    }
    else
    {
        bnpc = gml_Script_instance_create_ch1((x + 7), (y + 4), 1408)
        bnpc.sprite_index = spr_npc_burgerpants_ch1
    }
}
if (room == room_town_south_ch1)
{
    policewindow = gml_Script_scr_marker_ch1(292, 57, 3670)
    var _temp_local_var_1 = policewindow
    depth = 940000
}
if (policewindow.room == room_graveyard_ch1)
{
    overlay = gml_Script_instance_create_ch1(0, 0, 1458)
    with (obj_mainchara_ch1)
        bg = 1
    var _temp_local_var_2 = overlay
    image_alpha = 0.4
    ss = 0.1
    sprite_index = spr_graveyard_overlay_ch1
    depth = 1000
}
