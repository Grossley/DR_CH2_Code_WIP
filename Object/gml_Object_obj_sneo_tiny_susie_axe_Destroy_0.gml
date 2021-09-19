if (global.turntimer > 1)
{
    myanim = gml_Script_instance_create(x, y, obj_yshot_anim)
    with (myanim)
    {
        image_xscale = 2
        image_yscale = 2
        sprite_index = spr_yheart_shot_hit3
    }
}
