image_speed = 0.2
myinteract = 0
talked = 0
mydialoguer = 3478247328
gml_Script_scr_depth_ch1()
if (global.darkzone == true)
{
    image_speed = 0.2
    image_xscale = 2
    image_yscale = 2
}
if (room == room_cc_throneroom_ch1)
{
    if (global.plot >= 240)
        instance_destroy()
}
