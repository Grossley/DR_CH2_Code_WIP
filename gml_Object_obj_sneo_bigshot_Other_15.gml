if (sprite_index == spr_sneo_bigshot_l)
{
    playerhit = 1
    0
    with (obj_spamton_neo_enemy)
        2
}
else if (sprite_index == spr_sneo_bigshot_s)
{
    if (active == true)
    {
        with (obj_spamton_neo_enemy)
            2
        if (destroyonhit == 1)
            // WARNING: Popz'd an empty stack.
    }
}
