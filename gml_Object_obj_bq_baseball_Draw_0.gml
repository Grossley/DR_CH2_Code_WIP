if (hit_timer > 0 && hit_timer < 20)
    gml_Script_d3d_set_fog(true, c_white, 0, 0)
// WARNING: Popz'd an empty stack.
if (hit_timer > 0 && hit_timer < 20)
    gml_Script_d3d_set_fog(false, c_white, 0, 0)
reticletimer++
draw_sprite_ext(spr_baseball_reticle, 0, x, y, 2, 2, (image_angle * -1), c_white, (reticletimer / 7))
