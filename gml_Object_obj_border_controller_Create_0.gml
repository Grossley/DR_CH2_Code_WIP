loaded = 0
border_fade_out = 0
border_fade_in = 0
border_alpha = 0
border_fade_value = 0.025
_border_image = border_lw_town
ww = 
wh = 
sw = application_surface
sh = application_surface
var scale_w = (ww / sw)
var scale_h = (wh / sh)
screenshot = -1
if (os_type == os_switch && wh == 720)
    global.window_scale = (4/3)
else
    global.window_scale = min(scale_w, scale_h)
