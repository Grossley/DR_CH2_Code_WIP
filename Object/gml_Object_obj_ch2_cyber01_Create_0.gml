con = -1
shortened = 0
tempcon = -1
visible = true
customcon = 0
steptimer = 0
floattimer = 0
if (global.chapter != 2 || global.plot >= 60)
{
    nobacktracking = gml_Script_instance_create(1880, 200, obj_soliddark)
    nobacktracking.image_xscale = 1
    nobacktracking.image_yscale = 7
    instance_destroy()
}
else
{
    if (global.tempflag[27] == 1)
        shortened = 1
    nisesweet = gml_Script_scr_dark_marker((gml_Script_camerax() + 700), ((room_height / 2) - 80), 1774)
    nisesweet.image_speed = 0.25
    nisehatguy = gml_Script_scr_dark_marker(0, (gml_Script_cameray() - 200), 1754)
    nisehatguy.image_speed = 0
    nisekk = gml_Script_instance_create(0, (gml_Script_cameray() - 200), obj_kk_npc)
    with (nisekk)
        gml_Script_scr_depth()
    djtable = gml_Script_scr_dark_marker((nisesweet.x - 40), (nisesweet.y + 64), 498)
    djtable.image_speed = 0.25
    targy = ((room_height / 2) - 80)
}
