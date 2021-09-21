var lab_collider = gml_Script_instance_create(115, 50, obj_solidblock)
lab_collider.image_xscale = 4.25
var lab_interact = gml_Script_instance_create(144, 52, obj_readable_room1)
lab_interact.image_xscale = 1.6
if (global.chapter == 1)
{
    var upstairs_collider = gml_Script_instance_create(200, 60, obj_solidblock)
    upstairs_collider.image_xscale = 4
}
if (global.chapter == 2)
{
    if gml_Script_i_ex(obj_npc_facing)
    {
        with (obj_npc_facing)
            instance_destroy()
    }
    if gml_Script_i_ex(obj_npc_room)
    {
        with (obj_npc_room)
            instance_destroy()
    }
    if (global.plot >= 205 && (!gml_Script_scr_sideb_get_phase() >= 3))
    {
    }
}
