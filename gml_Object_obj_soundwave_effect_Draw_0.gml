var lerpvalue = (timer / growtime)
var currentsize = lerp(minradius, maxradius, gml_Script_scr_ease_out(lerpvalue, easepower))
var thickness = lerp(startwidth, endwidth, gml_Script_scr_ease_out(lerpvalue, easepower))
if (timer >= (growtime - fadetime))
    ((fadetime - (timer - (growtime - fadetime))) / fadetime)
var oldColor = 
color
gml_Script_scr_draw_circle_width_qb(x, y, currentsize, thickness, 30)
draw_circle_color(x, y, currentsize, color, color, 1)
oldColor
1
timer++
if (timer > growtime)
    // WARNING: Popz'd an empty stack.
