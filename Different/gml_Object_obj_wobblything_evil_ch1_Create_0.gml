global.charinstance[0] = obj_mainchara_ch1
image_speed = 0
image_xscale = 2
image_yscale = 2
scr_depth_ch1()
wobbled = 0
if (room == room_dark_wobbles_ch1)
{
    tilearray = tile_get_ids_at_depth_ch1(777777)
    for (var i = 0; i < array_length_1d(tilearray); i++)
        tile_set_alpha_ch1(tilearray[i], 0)
}
