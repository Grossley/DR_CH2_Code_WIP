shake = 8
hp -= other.damage
if (image_index < 3)
    image_index += 1
gml_Script_snd_play(snd_damage)
if (other.big == 0)
{
    with (other)
        event_user(0)
}
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
    instance_destroy()
    if (obj_spamton_neo_enemy.difficulty == 1)
        gml_Script_scr_tensionheal(2)
    else
        gml_Script_scr_tensionheal(3)
}
else
{
    fx = gml_Script_instance_create(x, y, obj_pipis_egg_bullet_piece)
    fx.image_index = image_index
    if (x < (gml_Script_camerax() + 500))
        hspeed /= 1.05
}
