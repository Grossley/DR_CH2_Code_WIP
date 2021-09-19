con = 0
customcon = 0
if (global.chapter != 2)
    instance_destroy()
else
{
    if (global.plot < 66)
    {
        con = -1
        dogcone1 = gml_Script_scr_dark_marker(408, 350, 84)
        with (dogcone1)
            depth = 1000150
        dogcone2 = gml_Script_scr_dark_marker(dogcone1.x, dogcone1.y, 84)
        with (dogcone2)
            depth = 1000150
        dogcone3 = gml_Script_scr_dark_marker(dogcone1.x, dogcone1.y, 84)
        with (dogcone3)
            depth = 1000150
    }
    if (global.plot >= 66)
    {
        dogcone1 = gml_Script_scr_dark_marker(368, 350, 84)
        with (dogcone1)
            gml_Script_scr_depth()
        dogcone2 = gml_Script_scr_dark_marker((dogcone1.x - 40), 350, 84)
        with (dogcone2)
            gml_Script_scr_depth()
        dogcone3 = gml_Script_scr_dark_marker((dogcone1.x - 80), 350, 84)
        with (dogcone3)
            gml_Script_scr_depth()
    }
}
