myinteract = 0
talked = 0
checked = false
image_xscale = 2
image_yscale = 2
con = 0
image_speed = 0
teleportmode = 0
door_destination = room
door_location = room
on = 1
weirdlight = gml_Script_scr_dark_marker((x + 6), (y + 96), 1203)
with (weirdlight)
{
    depth = 895000
    image_speed = 0.125
}
if (global.chapter == 1)
{
    if (global.plot < 60)
        on = 0
}
if (global.chapter == 2)
{
    gml_Script_scr_depth()
    if (global.plot < 100)
        on = 0
}
if (global.chapter == 2 && room == room_dw_mansion_entrance && gml_Script_scr_sideb_get_phase() > 2)
    on = 0
if (on == 0)
{
    sprite_index = spr_shortcut_door_off
    with (weirdlight)
        instance_destroy()
}
