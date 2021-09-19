var lerpvalue = (timer / growtime)
var currentsize = lerp(minradius, maxradius, gml_Script_scr_ease_out(lerpvalue, easepower))
var thickness = lerp(startwidth, endwidth, gml_Script_scr_ease_out(lerpvalue, easepower))
if (timer >= (growtime - fadetime))
    draw_set_alpha(((fadetime - (timer - (growtime - fadetime))) / fadetime))
var oldColor = draw_get_color()
draw_set_color(color)
gml_Script_scr_draw_circle_width_qb(x, y, currentsize, thickness, 30)
draw_circle_color(x, y, currentsize, color, color, 1)
draw_set_color(oldColor)
draw_set_alpha(1)
timer++
if (timer > growtime)
    instance_destroy()