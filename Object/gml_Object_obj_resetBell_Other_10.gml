if (play == false)
{
    gml_Script_snd_play(snd_bell)
    if gml_Script_i_ex(obj_holemouse_block_clockwise)
    {
        with (obj_holemouse_block_clockwise)
            reset = true
    }
    if gml_Script_i_ex(obj_holemouse_block_counterclockwise)
    {
        with (obj_holemouse_block_counterclockwise)
            reset = true
    }
    if gml_Script_i_ex(obj_holemouse_block_clockwise_moveable)
    {
        with (obj_holemouse_block_clockwise_moveable)
            reset = true
    }
    play = true
    timer = 20
    image_speed = 0.25
}
