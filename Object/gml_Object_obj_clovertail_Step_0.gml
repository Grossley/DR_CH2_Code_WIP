if (con == 0)
{
    if (y < (gml_Script_cameray() + 40))
        y = lerp(y, (gml_Script_cameray() + 60), 0.2)
    else
    {
        con = 1
        timer = 0
    }
}
if (con == 1)
{
    siner += sineradd
    x = (xstart + (sin((siner / 10)) * 70))
    image_angle = (sin((siner / 6)) * 20)
    vspeed = (sin((siner / 4)) * 8)
    timer++
    if (timer >= 8)
    {
        timer = 0
        shot = gml_Script_instance_create(x, y, obj_regularbullet)
        if gml_Script_i_ex(shot)
        {
            shot.sprite_index = spr_clubsbullet_dark
            shot.image_angle = -90
            shot.speed = (6 + (vspeed / 4))
            shot.active = true
            shot.image_angle = (image_angle - 90)
            shot.direction = (image_angle - 90)
            shot.target = target
            shot.damage = damage
            shot.grazepoints = 6
        }
        gml_Script_scr_bullet_inherit(shot)
    }
}
if (con == 2)
{
    if (y > (gml_Script_cameray() - 30))
        y = lerp(y, (gml_Script_cameray() - 30), 0.3)
    destroytimer++
    if (destroytimer == 30)
        instance_destroy()
}
