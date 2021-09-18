myinteract = 0
image_speed = 0
read = 0
tempvar = 0
if (room == room_dark3a_ch1)
{
    if (global.flag[100] == 0)
    {
        shine = gml_Script_scr_dark_marker_ch1((x + 10), (y + 6), 4167)
        shine.image_speed = 0.1
    }
}
