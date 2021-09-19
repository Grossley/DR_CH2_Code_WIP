var _temp_local_var_2;
rot += rotspeed
xx = (lengthdir_x(eyer, rot) + offx)
yy = (lengthdir_y(eyer, rot) + offy)
if (boss == true)
{
    if instance_exists(obj_mainchara)
    {
        obj_mainchara.battlemode = 0
        with (obj_darkponman_ow)
        {
            if (obj_mainchara.x > (x - xrange) && obj_mainchara.x < (x + xrange) && obj_mainchara.y > (y - yrange) && obj_mainchara.y < (y + yrange))
                obj_mainchara.battlemode = 1
        }
    }
}
if (con == 0)
{
    if (made == 0)
    {
        i = 0
        while (i < bmax)
        {
            xa = (lengthdir_x((eyer * (2 + (i * 2))), (rot - (i * 2))) + offx)
            ya = (lengthdir_y((eyer * (2 + (i * 2))), (rot - (i * 2))) + offy)
            fb[i] = gml_Script_instance_create((x + xa), (y + ya), obj_overworldbulletparent)
            fb[i].sprite_index = spr_diamondbullet
            fb[i].active = true
            fb[i].target = 3
            fb[i].damage = 16
            fb[i].image_angle = (rot - i)
            fb[i].depth = 200
            alarm[0] = fb[i]
            fb[i].image_alpha = 0
            fb[i].image_xscale = 0.7
            i += 1
            var _temp_local_var_2 = -10
        }
        made = 1
    }
    if (eyer <= 10)
        eyer += 1
    else
    {
        con = 1
        image_speed = 0.1
    }
}
if (made == 1)
{
    if (rotspeed > 0)
        siner += 1
    if (rotspeed < 0)
        siner -= 1
    for (i = 0; i < bmax; i += 1)
    {
        if gml_Script_i_ex(fb[i])
        {
            xa = (lengthdir_x((eyer * (2 + (i * 2))), (rot - (sin((siner / 10)) * (i * 2)))) + offx)
            ya = (lengthdir_y((eyer * (2 + (i * 2))), (rot - (sin((siner / 10)) * (i * 2)))) + offy)
            fb[i].x = (x + xa)
            fb[i].y = (y + ya)
            fb[i].image_alpha = (0.8 + (sin((((i * 4) + siner) / 5)) * 0.2))
            if (con < 1)
                fb[i].image_alpha = (0 + (eyer / 10))
            fb[i].image_angle = (rot - (sin((siner / 10)) * (i * 4)))
        }
    }
}
