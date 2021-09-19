var _temp_local_var_1, _temp_local_var_2;
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
    i = 0
    while (i < 12)
    {
        radialshot = gml_Script_instance_create(x, y, obj_sneo_heatattack_bullet)
        var _temp_local_var_1 = radialshot
        gml_Script_scr_bullet_init()
    }
    radialshot = gml_Script_instance_create(x, y, obj_sneo_heatattack_bullet)
    var _temp_local_var_2 = radialshot
    gml_Script_scr_bullet_init()
}
