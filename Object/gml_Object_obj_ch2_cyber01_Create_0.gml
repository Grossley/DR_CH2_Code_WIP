var _temp_local_var_2, _temp_local_var_3;
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
    nisesweet = (gml_Script_camerax() + 700)
    nisesweet.image_speed = 0.25
    nisehatguy = gml_Script_scr_dark_marker(0, (gml_Script_cameray() - 200), 1754)
    nisehatguy.image_speed = 0
    nisekk = gml_Script_instance_create(0, (gml_Script_cameray() - 200), obj_kk_npc)
    var _temp_local_var_2 = nisekk
    var _temp_local_var_3 = (((1774).room_height / 2) - 80)
    gml_Script_scr_depth()
}
