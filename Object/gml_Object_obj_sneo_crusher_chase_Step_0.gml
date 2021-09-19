if (init == 0)
{
    init = 1
    if (crushedObj != 1)
        offsetCap = (crushedObj == 2 ? 15 : 0)
}
if (vbounce == 1)
{
    if (y > bottomy)
    {
        y = (bottomy - 1)
        vspeed = (-abs(vspeed))
    }
    if (y < topy)
    {
        y = (topy + 1)
        vspeed = abs(vspeed)
    }
}
siner += 0.4
x = (xstart + (sin((siner / 6)) * 60))
shoottimer++
if (shoottimer >= 54)
{
    var b = 0
    var _temp_local_var_2 = 3
    if (3 <= 0)
    {
    }
    else
    {
        while (true)
        {
            radialshot = gml_Script_instance_create(x, y, obj_collidebullet)
            var _temp_local_var_3 = radialshot
            gml_Script_scr_bullet_init()
        }
        gml_Script_scr_bullet_init()
    }
}
