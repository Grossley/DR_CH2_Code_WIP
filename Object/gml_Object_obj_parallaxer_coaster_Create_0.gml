with (obj_mainchara)
    bg = 1
con = -1
bg_hspeed = 0
var layersprites = [3140, 3141]
for (var i = 0; i < array_length_1d(layersprites); i++)
{
    var tracks = layer_create((1000500 - (i * 100)), ("BG_Layer_" + string(i)))
    var layerid = layer_background_create(tracks, layersprites[i])
    layer_background_htiled(layerid, 1)
    layer_hspeed(tracks, (-((0.1 * array_length_1d(layersprites)) + (0.5 * i))))
}
