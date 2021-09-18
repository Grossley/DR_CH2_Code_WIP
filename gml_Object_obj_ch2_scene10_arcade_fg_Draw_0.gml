timer++
image_alpha -= 0.05
image_alpha
draw_rectangle_color(0, 0, 9999, 9999, c_black, c_black, c_black, c_black, 0)
1
if (timer == 12)
{
    with (o_boxingqueen)
    {
        global.currentsong[1]
        boxing_game_music = "boxing_game.ogg"
        boxing_game_music
    }
}
if (timer == 30)
    // WARNING: Popz'd an empty stack.
