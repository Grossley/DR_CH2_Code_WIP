myinteract = 0
talked = 0
image_speed = 0
image_xscale = 2
image_yscale = 2
con = 0
gml_Script_scr_depth_ch1()
image_speed = 0
type = 0
siner = 0
active = false
emotion = 0
beanie[0] = false
beanie[1] = false
beanie[2] = false
if (x < 350)
{
    beanie[1] = false
    beanie[0] = true
    type = 1
}
if (x < 250)
{
    beanie[0] = true
    beanie[2] = true
    type = 2
}
if (x < 150)
{
    beanie[0] = true
    beanie[1] = true
    beanie[2] = true
    type = 3
    if (room == room_field_puzzletutorial_ch1)
    {
        hole = gml_Script_scr_dark_marker_ch1(270, 126, 4057)
        hole.image_index = 1
        hole.depth = 900000
    }
}