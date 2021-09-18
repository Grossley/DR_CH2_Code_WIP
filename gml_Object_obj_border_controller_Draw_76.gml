var ww = 
var wh = 
var sw = application_surface
var sh = application_surface
var scale_w = (ww / sw)
var scale_h = (wh / sh)
if (os_type == os_switch || os_type == os_ps4)
{
    if (os_type == os_switch && wh == 720)
        global.window_scale = (4/3)
    else
        global.window_scale = min(scale_w, scale_h)
}
else
    global.window_scale = min(scale_w, scale_h)
