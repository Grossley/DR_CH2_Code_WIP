f = 2
wireframe_boxing = 1
disable_surface = 0
draw_timer = 0
draw_selection_buffer_timer = 0
cyber_bg_alpha = -0.3
introcon = 0
introtimer = 0
draw_janky_timer = 0
o_boxingqueen_janky_x = 0
o_boxingqueen_janky_y = 0
o_boxingqueen_janky_sprite_index = IMAGE_LOGO
o_boxingqueen_janky_image_index = 0
o_boxingcontroller_janky_x = 0
o_boxingcontroller_janky_y = 0
o_boxingcontroller_sprite_index = 0
o_boxingcontroller_image_index = 0
pacifist_timer = 0
pacifist_state = 0
draw_draw_timer = 0
text = stringsetloc("Press Z and X to Punch!", "o_boxing_wireframe_slash_Create_0_gml_28_0")
text_timer = 0
text_reset_timer = 0
down_arrow_con = 0
zx_timer = 0
zx_state = 0
lose_timer = 0
lose_state = 0
talking = 0
talktimer = 0
talktype = 0
introtalk = 0
hintcount = 0
losscount = 0
hidebg = 0
if (disable_surface == 1)
    return;
surface = surface_create(320, 240)
surface_set_target(surface)
surface_reset_target()
draw_surface(surface, 160, 120)
depth = -1000
