con = -1
visible = true
exitcollider = obj_sneo_friedpipis
if (global.chapter != 2)
    // WARNING: Popz'd an empty stack.
else if (global.flag[340] == 1)
    layer_set_visible("TILES_Secret", 0)
else
{
    exitcollider = gml_Script_instance_create(0, 320, obj_solidblocksized)
    exitcollider.image_xscale = 1
    exitcollider.image_yscale = 2
}
