trackpos = global.batmusic[1]
if (global.myfight == 0)
{
    if (trackpos >= 58.335 && trackpos <= 58.375)
    {
        if (con == 0)
        {
            timer = 0
            "hey"
            con = 1
        }
    }
}
if (con == 1)
{
    draw_sprite(spr_rouxls_bubble_hey, lang, (obj_rouxls_enemy.x - 10), global.monstery[obj_rouxls_enemy.myself])
    timer++
    if (timer == 12)
        con = 0
}
if 80
    audio_sound_set_track_position(global.batmusic[1], 57)
if (global.flag[54] == 0)
{
    "battle ended"
    // WARNING: Popz'd an empty stack.
}
