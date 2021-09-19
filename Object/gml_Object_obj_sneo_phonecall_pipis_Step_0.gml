var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6;
timer++
if (timer == 5)
{
    instance_destroy()
    fx = gml_Script_instance_create(x, y, obj_pipis_destroy_fx)
    fx.image_xscale = 2
    fx.image_yscale = 2
    obj_spamton_neo_enemy.partsprite[5] = 1978
    repeat (obj_pipisFireworkGenerator)
    {
        fx = gml_Script_instance_create(x, y, obj_pipis_egg_bullet_piece)
        fx.image_index = random(3)
        fx.image_xscale = 2
        fx.image_yscale = 2
        fx.direction = (45 + random(90))
    }
    var a = random(45)
    var _temp_local_var_1 = obj_mettaton_bomb_hitbox
    if (obj_mettaton_bomb_hitbox <= obj_sneo_friedpipis)
    {
    }
    else
    {
        while (true)
        {
            part = gml_Script_instance_create(x, y, obj_sneo_phonecall_sneohead)
            part.direction = (a + random(15))
            part.speed = random(8)
            _temp_local_var_1.x = (part.x + lengthdir_x(random(25), a))
            part.y = (part.y + lengthdir_y(random(25), a))
            a += 45
            var _temp_local_var_2 = (obj_mettaton_bomb_hitbox - 1)
            var _temp_local_var_3 = -9
            var _temp_local_var_4 = part
            var _temp_local_var_5 = -9
            var _temp_local_var_6 = part
            if (obj_mettaton_bomb_hitbox - 1)
                continue
        }
    }
}
