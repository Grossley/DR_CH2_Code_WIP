mysong = "na"
if (room == room_dw_city_savepoint)
{
    if (global.plot < 100)
    {
        if 1
            // WARNING: Popz'd an empty stack.
        else
            mysong = "cyberhouse.ogg"
    }
}
if (room == room_dw_city_spamton_house || room == room_dw_city_spamton_shop_exterior || room == room_dw_city_intro || room == room_dw_city_split)
    mysong = "alley_ambience.ogg"
if (mysong != "na" && (!global.currentsong[1]))
{
    global.currentsong[0] = mysong
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 0.8, 0.97)
}
