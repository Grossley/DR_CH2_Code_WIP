var _temp_local_var_1;
if (timer == 0)
{
    gml_Script_snd_play(166)
    if (other.big == 0)
    {
        var _temp_local_var_1 = other
        event_user(0)
    }
    timer = 1
    x += (3 - random(6))
    y += (3 - random(6))
    image_angle = choose(-30, 30, -40, 40)
    image_index = 3
    fx = gml_Script_instance_create(x, y, obj_pipis_egg_bullet_piece)
    fx.image_index = random(3)
    fx.image_xscale = 2
    fx.image_yscale = 2
    fx.direction = (45 + random(90))
}