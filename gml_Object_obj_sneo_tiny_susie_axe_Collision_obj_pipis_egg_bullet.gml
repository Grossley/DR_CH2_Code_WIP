// WARNING: Popz'd an empty stack.
166
with (stacktop)
{
    hp -= 0.5
    if (image_index < 3)
        image_index += 0.5
    166
    if (hp < 1)
    {
        fx = gml_Script_instance_create(x, y, obj_pipis_destroy_fx)
        fx.image_xscale = 1.5
        fx.image_yscale = 1.5
        repeat (3)
        {
            fx = gml_Script_instance_create(x, y, obj_pipis_egg_bullet_piece)
            fx.image_xscale = 2
            fx.image_yscale = 2
        }
        // WARNING: Popz'd an empty stack.
    }
    else
    {
        fx = gml_Script_instance_create(x, y, obj_pipis_egg_bullet_piece)
        fx.image_index = image_index
    }
}
