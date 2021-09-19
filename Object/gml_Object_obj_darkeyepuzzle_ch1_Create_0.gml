siner = 0
con = 0
total = 0
if (global.flag[201] == 0)
{
    eye[0] = 0
    eye[1] = 0
    eye[2] = 0
    for (i = 0; i < 3; i += 1)
    {
        shine[i] = gml_Script_scr_dark_marker_ch1(((x + 30) + (i * 110)), (y + 110), 4168)
        shine[i].image_speed = 0.1
        shine[i].depth = 800000
    }
    block = gml_Script_instance_create_ch1(960, 320, 1656)
    block.image_yscale = 2
}
else
{
    con = 44
    eye[0] = 1
    eye[1] = 1
    eye[2] = 1
    for (i = 0; i < 3; i += 1)
    {
        glass = gml_Script_scr_dark_marker_ch1((960 + (i * 40)), 320, 4188)
        glass.depth = 950000
        glass = gml_Script_scr_dark_marker_ch1((960 + (i * 40)), 360, 4188)
        glass.depth = 950000
    }
    with (obj_darkeyepuzzle_switch_ch1)
        instance_destroy()
}
