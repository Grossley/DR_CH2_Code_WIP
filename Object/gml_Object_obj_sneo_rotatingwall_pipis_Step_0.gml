if (global.turntimer < 1)
    instance_destroy()
if (timer > 0)
{
    timer++
    x += (3 - random(6))
    y += (3 - random(6))
}
else if gml_Script_i_ex(50)
    x += obj_sneo_wall_controller_new.wallspeed[wallnumber]
if (timer == 8)
{
    gml_Script_snd_play(141)
    instance_destroy()
    fx = gml_Script_instance_create(x, y, obj_pipis_destroy_fx)
    fx.image_xscale = 1.5
    fx.image_yscale = 1.5
    for (i = 0; i < 12; i++)
    {
        radialshot = gml_Script_instance_create(x, y, obj_sneo_heatattack_bullet)
        with (radialshot)
            gml_Script_scr_bullet_init()
        radialshot.sprite_index = spr_diamondbullet
        radialshot.dir = (((i * 30) + random(28)) - 14)
        radialshot.active = true
        radialshot.depth = (depth - 1)
        radialshot.target = target
        radialshot.damage = damage
        radialshot.grazed = 0
        radialshot.element = 6
    }
    radialshot = gml_Script_instance_create(x, y, obj_sneo_heatattack_bullet)
    with (radialshot)
        gml_Script_scr_bullet_init()
    radialshot.sprite_index = spr_diamondbullet
    radialshot.dir = ((point_direction(x, y, (obj_heart.x + 10), (obj_heart.y + 10)) - 5) + random(10))
    radialshot.active = true
    radialshot.depth = (depth - 1)
    radialshot.target = target
    radialshot.damage = damage
    radialshot.grazed = 0
    radialshot.element = 6
}
