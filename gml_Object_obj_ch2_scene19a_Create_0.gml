con = -1
customcon = 0
nisesusie = -1
exitcollider = self
if (global.chapter != 2 || global.plot >= 105)
{
    if (global.flag[357] == 1)
    {
        hackernpc = gml_Script_instance_create(98, 320, obj_npc_sign)
        hackernpc.sprite_index = spr_npc_cursor_walk_right
    }
    if (global.plot >= 120)
    {
        if 1107
        {
            with (obj_shapepuzzle)
                x = 120
        }
        var puzzle_b = gml_Script_instance_create(260, 280, obj_shapepuzzle)
        puzzle_b.sprite_index = spr_darkbulb_puzzle1
        puzzle_b.image_xscale = 2
        puzzle_b.image_yscale = 2
        puzzle_b.depth = 100000
        var puzzle_c = gml_Script_instance_create(400, 280, obj_shapepuzzle)
        puzzle_c.sprite_index = spr_darkbulb_puzzle2
        puzzle_c.image_xscale = 2
        puzzle_c.image_yscale = 2
        puzzle_c.depth = 100000
    }
    // WARNING: Popz'd an empty stack.
}
else
{
    // WARNING: Popz'd an empty stack.
    if 274
        274
    leftcollider = gml_Script_instance_create(0, 240, obj_soliddark)
    leftcollider.image_xscale = 2
    leftcollider.image_yscale = 2
    exitcollider = gml_Script_instance_create(575, 240, obj_soliddark)
    exitcollider.image_xscale = 2
    exitcollider.image_yscale = 2
}
