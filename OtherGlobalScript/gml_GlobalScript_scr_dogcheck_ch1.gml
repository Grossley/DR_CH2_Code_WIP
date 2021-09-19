if (global.currentroom >= PLACE_DOG_ch1 || global.currentroom <= ROOM_INITIALIZE_ch1)
{
    if (gml_Script_scr_debug_ch1() == 0)
        return 1;
    else
        return 0;
}
else
    return 0;
