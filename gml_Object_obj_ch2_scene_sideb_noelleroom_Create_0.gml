con = -1
customcon = 0
timer = 0
if (gml_Script_scr_sideb_get_phase() >= 3)
{
    door = gml_Script_scr_marker(540, 160, 2862)
    doorsolid = gml_Script_instance_create(540, 240, obj_soliddark)
    doorsolid.image_xscale = 3
    door.depth = 500000
}
if (gml_Script_scr_sideb_get_phase() < 3)
    instance_destroy()
else if (global.flag[915] < 9)
    con = 0
else
    instance_destroy()
