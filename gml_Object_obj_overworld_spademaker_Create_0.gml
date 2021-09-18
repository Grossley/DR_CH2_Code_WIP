timer = 0
darkamt = 0
with (obj_mainchara)
    battlemode = 1
global.charinstance[0] = obj_mainchara
alarm[0] = 5
side = 0
homing = 0
sidespade[0] = 4732847832
sidespade[1] = 4732847832
intensity = 0
tile_fade = false
if (room == 9999999999)
{
    alpha_changed = false
    tile_fade = true
    tile_layer_choice = 99999
    tilearray = tile_layer_choice
    for (var i = 0; i < array_length_1d(tilearray); i++)
        gml_Script_tile_set_alpha(tilearray[i], 0)
}
