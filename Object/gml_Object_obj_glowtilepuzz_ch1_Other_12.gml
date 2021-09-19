funbuffer = 0
gml_Script_snd_play_ch1(381)
with (obj_glowtile_ch1)
{
    active = false
    stepped = false
    stepbuffer = -1
    sprite_index = spr_glowtile_off_ch1
}
if (wonamt < wonmax)
{
    if (wonamt == 0)
    {
        choice1 = 2
        choice2 = 2
        funtotal = 1
    }
    if (wonamt == 1)
    {
        choice1 = 0
        choice2 = 1
        funtotal = 2
    }
    if (wonamt >= 2)
    {
        choice1 = 1
        choice2 = 2
        funtotal = 2
    }
    choice3 = choice1
    if (room == room_field_puzzle2_ch1)
    {
        if (wonamt == 0)
        {
            choice1 = 3
            choice2 = 3
            choice3 = 3
            funtotal = 1
        }
        if (wonamt == 1)
        {
            choice1 = 2
            choice2 = 2
            choice3 = 1
            funtotal = 2
        }
        if (wonamt == 2)
        {
            choice1 = 2
            choice2 = 3
            choice3 = 4
            funtotal = 3
        }
        if (wonamt >= 3)
        {
            choice1 = 1
            choice2 = 0
            choice3 = 4
            funtotal = 3
        }
    }
    var _temp_local_var_1 = tileid[choice1]
    active = true
    sprite_index = spr_glowtile_step_ch1
}
