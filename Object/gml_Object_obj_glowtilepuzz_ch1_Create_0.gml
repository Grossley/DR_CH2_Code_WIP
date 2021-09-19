record = 0
tiletotal = 0
image_xscale = 2
image_yscale = 2
image_speed = 0.1
funtotal = 99
order = 0
funbuffer = 0
stepnoise = false
wonamt = 0
active = false
failtimer = 0
failamt = 0
talked = 0
wonmax = 3
plotamt = 1
failmax = 200
if (room == room_field_puzzle1_ch1)
{
    failmax = 240
    wonmax = 3
    plotamt = 35
    for (i = 0; i < wonmax; i += 1)
    {
        block[i] = gml_Script_instance_create_ch1((1280 + (i * 40)), 280, 1656)
        block[i].image_yscale = 2
        spike1[i] = gml_Script_scr_dark_marker_ch1((1280 + (i * 40)), 280, 3607)
        with (spike1[i])
            depth = 900000
        spike2[i] = gml_Script_scr_dark_marker_ch1((1280 + (i * 40)), 320, 3607)
        with (spike2[i])
            depth = 900000
        if (global.plot >= 35)
        {
            active = 2
            with (spike1[i])
                image_index = 1
            with (spike2[i])
                image_index = 1
            with (block[i])
                instance_destroy()
        }
    }
}
if (room == room_field_puzzle2_ch1)
{
    failmax = 240
    wonmax = 3
    plotamt = 38
    for (i = 0; i < wonmax; i += 1)
    {
        if (global.plot >= 38)
            active = 2
    }
}
shakecon = 0
