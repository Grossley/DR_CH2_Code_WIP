siner++
if (init == 0)
{
    wd = (sprite_width / 2)
    if (bosscheck == 0)
    {
        with (obj_cyber_light)
            bosscheck = 1
        boss = true
        depth += 1
        total = object_index
        for (i = 0; i < total; i++)
        {
            which[i] = instance_find(object_index, i)
            which[i].siner = (i * 4)
            wx[i] = which[i].x
            wy[i] = which[i].y
        }
    }
    init = 1
}
image_alpha = (((siner / 12) * 0.2) + 0.8)
