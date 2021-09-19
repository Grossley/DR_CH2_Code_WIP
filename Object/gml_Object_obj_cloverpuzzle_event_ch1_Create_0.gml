con = 99
pcon = 0
ptimer = 0
puzzle = gml_Script_instance_create_ch1(500, 440, 1542)
with (puzzle)
{
    max_suit = 3
    drawclue = 0
    sol[0] = 9
    sol[1] = 9
    sol[2] = 9
    sol[3] = 9
}
if (global.plot < 75)
    con = 0
spiken[0] = gml_Script_scr_dark_marker_ch1(520, 280, 3607)
spiken[1] = gml_Script_scr_dark_marker_ch1(560, 280, 3607)
with (spiken[0])
    depth = 970000
with (spiken[1])
    depth = 970000
if (global.flag[234] == 0)
{
    blockn = gml_Script_instance_create_ch1(520, 280, 1656)
    with (blockn)
        image_xscale = 2
}
else
{
    with (spiken[0])
        image_index = 1
    with (spiken[1])
        image_index = 1
}
if (global.flag[235] == 0)
{
    blocke = gml_Script_instance_create_ch1(1040, 400, 1656)
    with (blocke)
        instance_destroy()
    with (blocke)
        image_yscale = 2
}
