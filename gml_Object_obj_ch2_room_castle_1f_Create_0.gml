con = -1
with (obj_npc_room_animated)
{
    if (sprite_index == spr_castle_cauldron)
    {
        depthcancel = true
        // WARNING: Popz'd an empty stack.
        depth += 250
    }
}
if (global.chapter != 2 || global.plot > 12)
    // WARNING: Popz'd an empty stack.
