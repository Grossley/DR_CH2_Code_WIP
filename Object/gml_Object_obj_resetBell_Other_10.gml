if (play == 0)
{
    gml_Script_snd_play(39)
    if gml_Script_i_ex(1171)
    {
        with (obj_holemouse_block_clockwise)
            reset = true
    }
    if gml_Script_i_ex(1169)
    {
        with (obj_holemouse_block_counterclockwise)
            reset = true
    }
    if gml_Script_i_ex(1170)
    {
        with (obj_holemouse_block_clockwise_moveable)
            reset = true
    }
    play = 1
    timer = 20
    image_speed = 0.25
}
