if (loc_check == 0)
{
    loc_check = 1
    if (room == room_forest_starwalker_ch1)
    {
        if (obj_mainchara_ch1.x.room_width / 2)
            x = 240
    }
}
if (myinteract == 3)
{
    myinteract = 0
    with (obj_mainchara_ch1)
        onebuffer = 5
}
if (bellcon == true)
{
    belltimer += 1
    if (belltimer >= 30)
    {
        belltimer = 0
        image_speed = 0
        bellcon = false
        image_index = 0
    }
}
