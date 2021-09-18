if (global.chapter != 2 || global.plot >= 64)
{
    with (obj_solidblock_destructable)
        // WARNING: Popz'd an empty stack.
    layer_set_visible(layer_get_id("SLIDE_DECOR"), 1)
    layer_set_visible(layer_get_id("SLIDE_TILES"), 1)
    layer_set_visible(layer_get_id("SLIDE_TILES_Overlay"), 1)
    with (obj_doorA_musfade)
        // WARNING: Popz'd an empty stack.
    if 341
    {
        with (obj_cyber_wall_lights)
        {
            if (x == 2840)
                visible = false
        }
    }
}
else
{
    with (obj_npc_sign)
        // WARNING: Popz'd an empty stack.
    layer_set_visible(layer_get_id("SLIDE_DECOR"), 0)
    layer_set_visible(layer_get_id("SLIDE_TILES"), 0)
    layer_set_visible(layer_get_id("SLIDE_TILES_Overlay"), 0)
    if 341
    {
        with (obj_cyber_wall_lights)
        {
            if (x == 2840)
                visible = true
        }
    }
}
