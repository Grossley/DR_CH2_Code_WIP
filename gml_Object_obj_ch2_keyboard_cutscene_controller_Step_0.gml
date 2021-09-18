var ballY, ballX, _temp_local_var_2, _temp_local_var_4;
if (init == 0)
{
    idealLength = idealString
    for (i = 0; i < idealLength; i++)
        idealLetter[i] = string_char_at(idealString, (1 + i))
    init = 1
}
if (con == 10 && global.interact == 0)
{
    global.interact = 1
    global.facing = 2
    timer = 0
    con = 11
    lost = 1
}
if (con == 11)
{
    timer++
    if (timer == 30)
        151
    if (timer == 60)
    {
        var _temp_local_var_2 = lastPressedTile
        bouncecon = 1
    }
    if (timer == 80)
    {
        obj_mainchara.x = krisStartX
        obj_mainchara.y = krisStartY
        global.facing = 0
        var _temp_local_var_4 = ball
        instance_destroy()
    }
}
if (con == 20 && global.interact == 0)
{
    global.interact = 1
    global.facing = 2
    timer = 0
    con = 21
}
if (con == 21)
{
    timer++
    if (timer == 30)
    {
        won = 1
        gml_Script_snd_play(57)
        for (i = 0; i < 15; i++)
        {
            d = gml_Script_instance_create(180, 200, obj_confetti_overworld)
            d.direction = random_range(310, 350)
            d.height = 20
        }
        for (i = 0; i < 15; i++)
        {
            d = gml_Script_instance_create(480, 200, obj_confetti_overworld)
            d.direction = random_range(190, 230)
            d.height = 20
        }
    }
    if (timer == 90)
    {
        con = 0
        with (obj_ch2_keyboardpuzzle_tile)
        {
            pressed = 1
            pressable = 0
        }
        global.facing = 0
        gml_Script_snd_play(59)
        gml_Script_instance_create(0, 0, obj_shake)
        global.interact = 0
        timer = 0
    }
}
