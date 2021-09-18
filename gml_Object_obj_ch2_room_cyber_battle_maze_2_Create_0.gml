southcon = 0
northcon = 0
if (global.chapter != 2)
    // WARNING: Popz'd an empty stack.
else
{
    hacker = gml_Script_instance_create(740, 100, obj_readable_room1)
    hacker.visible = true
    hacker.sprite_index = spr_npc_cursor_walk_right
    hacker.image_xscale = 2
    hacker.image_yscale = 2
    hacker.image_speed = 0
    northcollider = gml_Script_instance_create(1230, 115, obj_solidblock)
    northcollider.image_xscale = 4
    northcollider.image_yscale = 4
    southcollider = gml_Script_instance_create(157, 927, obj_solidblock)
    southcollider.image_xscale = 4
    southcollider.image_yscale = 4
}
