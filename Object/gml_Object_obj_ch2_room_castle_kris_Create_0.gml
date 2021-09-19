if (global.flag[394] == 1)
{
    icee_cushion = gml_Script_instance_create(128, 224, obj_npc_sign)
    icee_cushion.sprite_index = spr_dw_icee_cushion
    icee_cushion.setdepth = 0
    icee_cushion.depth = 97000
}
if (global.flag[106] == 1)
{
    moss_readable = gml_Script_instance_create(470, 386, obj_readable_room1)
    moss = gml_Script_scr_marker(460, 366, 3126)
    with (moss)
        depth = 900000
}
if (global.flag[207] >= 2)
{
    trash = gml_Script_scr_marker(301, 108, 3298)
    with (trash)
        gml_Script_scr_depth()
}
else
{
    manual_stand = gml_Script_scr_marker(301, 108, 1194)
    with (manual_stand)
        gml_Script_scr_depth()
}
