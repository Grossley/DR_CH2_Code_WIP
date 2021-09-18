global.charinstance[0] = obj_mainchara_ch1
image_speed = 0
image_xscale = 2
image_yscale = 2
// WARNING: Popz'd an empty stack.
wobbled = 0
if (room == room_dark_wobbles_ch1)
{
    tilearray = 777777
    for (var i = 0; i < array_length_1d(tilearray); i++)
        gml_Script_tile_set_alpha_ch1(tilearray[i], 0)
}
