timer++
image_alpha += 0.2
draw_set_alpha(image_alpha)
draw_rectangle_color(gml_Script_camerax(), gml_Script_cameray(), (gml_Script_camerax() + 640), (gml_Script_cameray() + 480), c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)