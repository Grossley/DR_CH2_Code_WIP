con = 0
if (global.plot >= 15)
    instance_destroy()
else
{
    con = 1
    susie = gml_Script_scr_dark_marker_ch1(1200, 760, 3551)
    var _temp_local_var_1 = susie
    depth = 500000
}
aftercon = false
tilearray = gml_Script_tile_get_ids_at_depth_ch1(99999)
for (var i = 0; i < array_length_1d(tilearray); i++)
    gml_Script_tile_set_alpha_ch1(tilearray[i], 0)
