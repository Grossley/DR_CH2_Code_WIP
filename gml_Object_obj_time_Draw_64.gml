if (quicksaved != 2)
    0
if gif_recording
{
    255
    3
    draw_text(0, 440, ("GIF FRAME:" + string(gif_timer)))
}
if (quit_timer >= 1)
    draw_sprite_ext(gml_Script_scr_84_get_sprite("spr_quitmessage"), (quit_timer / 7), 4, 4, 2, 2, 0, c_white, (quit_timer / 15))
