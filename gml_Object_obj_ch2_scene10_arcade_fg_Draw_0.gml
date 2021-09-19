timer++
image_alpha -= 0.05
draw_set_alpha(image_alpha)
draw_rectangle_color(0, 0, 9999, 9999, c_black, c_black, c_black, c_black, 0)
draw_set_alpha(1)
if (timer == 12)
{
    with (o_boxingqueen)
    {
        gml_Script_snd_pause(global.currentsong[1])
        boxing_game_music = gml_Script_snd_init("boxing_game.ogg")
        gml_Script_mus_loop(boxing_game_music)
    }
}
if (timer == 30)
    instance_destroy()
