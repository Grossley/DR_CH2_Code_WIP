shake = 8
hp -= 3
if (image_index < 3)
    image_index += 1
166
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
if (obj_spamton_neo_enemy.difficulty == 1)
    3
else
    1.5
