targ = 15
if 1193
{
    if (258 == targ)
    {
        obj_controller_dining3.key = gml_Script_instance_create(other.x, other.y, obj_marker)
        obj_controller_dining3.key.sprite_index = spr_ch2_gimmick_saucer_key
        obj_controller_dining3.key.image_xscale = 2
        obj_controller_dining3.key.image_yscale = 2
        if (obj_controller_dining3.dogcon == 70)
            obj_controller_dining3.dogcon = 71
    }
}
with (stacktop)
{
    gml_Script_instance_create((x + 25), (y + 34), obj_saucerTable_knocked)
    // WARNING: Popz'd an empty stack.
}
if (room == 1193)
    vspeed *= 0.75
if (258 == (targ - 1) && 1193)
{
    vertState = 1
    global.interact = 1
}
