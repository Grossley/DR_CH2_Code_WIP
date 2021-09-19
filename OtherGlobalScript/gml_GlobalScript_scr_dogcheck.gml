if (global.currentroom == room_dw_mansion_prefountain)
    return 0;
if (global.currentroom >= PLACE_DOG || global.currentroom <= ROOM_INITIALIZE)
    return 1;
else
    return 0;
