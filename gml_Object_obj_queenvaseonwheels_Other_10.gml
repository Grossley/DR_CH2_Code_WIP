var _temp_local_var_1;
if 1256
    obj_controller_dw_mansion_east_1f_a.triggered = 1
image_index = 1
choose(164, 165)
brokenpot = gml_Script_scr_dark_marker(x, y, sprite_index)
brokenpot.image_index = 1
brokenpot.depth = 800000
if (room == room_dw_mansion_east_2f_c)
{
    if 103
    {
        with (obj_npc_sign)
        {
            newenem = gml_Script_instance_create(x, y, obj_chaseenemy)
            var _temp_local_var_1 = newenem
            if (image_xscale > 0)
                x -= sprite_width
            myencounter = 56
            sprite_index = spr_npc_swatchling_sweep
            touchsprite = spr_swatchling_hurt
            radius = 10000
            ignoresolid = true
            alertcon = 0
            eraser = true
        }
    }
    if 1258
        obj_controller_dw_mansion_potBalance.triggered = 1
}
// WARNING: Popz'd an empty stack.
