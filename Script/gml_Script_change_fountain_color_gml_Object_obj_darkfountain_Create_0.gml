if (room == room_cc_fountain)
{
    __background_set_colour(argument0)
    nowcolor = argument0
}
else if (global.chapter == 2)
{
    if (room == room_dw_mansion_fountain)
    {
        fountainbg.image_blend = argument0
        nowcolor = argument0
    }
}
return;
