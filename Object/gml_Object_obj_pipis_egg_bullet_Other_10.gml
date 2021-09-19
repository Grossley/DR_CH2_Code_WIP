fx = gml_Script_instance_create(x, y, obj_pipis_destroy_fx)
fx.image_xscale = 1.5
fx.image_yscale = 1.5
if (obj_spamton_neo_enemy.difficulty != 4)
{
    if (type == 2)
    {
        for (i = 0; i < 10; i++)
        {
            hed = gml_Script_instance_create(x, y, obj_pipis_bullet_cone)
            hed.direction = ((point_direction(x, y, (obj_heart.x + 10), (obj_heart.y + 10)) - 25) + random(50))
            hed.speed = (15 + random(5))
            hed.depth = (depth - 100)
            hed.sprite_index = spr_sneo_crew
            hed.image_xscale = 0.5
            hed.image_yscale = 0.5
            hed.target = target
            hed.damage = damage
            hed.grazed = 0
            hed.element = 6
        }
    }
    else if (type == 3)
    {
        for (i = 0; i < 10; i++)
        {
            hed = gml_Script_instance_create(x, y, obj_pipis_bullet_cone)
            hed.direction = ((point_direction(x, y, (obj_heart.x + 10), (obj_heart.y + 10)) - 20) + random(40))
            hed.speed = (15 + random(5))
            hed.depth = (depth - 100)
            hed.target = target
            hed.damage = damage
            hed.grazed = 0
            hed.element = 6
        }
    }
    else
    {
        center = gml_Script_instance_create(x, y, obj_pipis_center)
        center.target = target
        center.damage = damage
    }
}
if (obj_spamton_neo_enemy.difficulty == 4)
{
    i = 0
    while (i < 15)
    {
        radialshot = gml_Script_instance_create(x, y, obj_sneo_heatattack_bullet)
        var _temp_local_var_1 = radialshot
        gml_Script_scr_bullet_init()
    }
    radialshot = gml_Script_instance_create(x, y, obj_sneo_heatattack_bullet)
    var _temp_local_var_2 = radialshot
    gml_Script_scr_bullet_init()
}
repeat (3)
{
    fx = gml_Script_instance_create(x, y, obj_pipis_egg_bullet_piece)
    fx.image_index = random(3)
    fx.image_xscale = 2
    fx.image_yscale = 2
    fx.direction = (45 + random(90))
}
instance_destroy()
