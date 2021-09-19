var _temp_local_var_2, _temp_local_var_3, _temp_local_var_5;
if (t == 0)
{
    if (size > 1)
        startang = (-random(180))
    for (i = 0; i < maxspade; i += 1)
    {
        spadeang = (((360 / maxspade) * i) + startang)
        if (side == 1)
            spadeang = (-spadeang)
        spadex = lengthdir_x(300, (spadeang + 180))
        spadey = lengthdir_y(300, (spadeang + 180))
        spade[i] = gml_Script_instance_create_ch1((spadex + obj_battlesolid_ch1.x), (spadey + obj_battlesolid_ch1.y), 1518)
        gml_Script_scr_bullet_inherit_ch1(spade[i])
        spade[i].sprite_index = spr_spadebullet_ch1
        spade[i].image_alpha = 0
        spade[i].active = true
        spade[i].image_blend = c_silver
        spade[i].direction = spadeang
        spade[i].image_angle = spadeang
        spade[i].speed = 26
        spade[i].image_xscale = size
        spade[i].image_yscale = size
    }
}
if (t >= 1 && t < 15)
{
    i = 0
    while (i < maxspade)
    {
        var _temp_local_var_2 = spade[i]
        speed *= 0.87
        image_alpha += 0.1
    }
}
if (t == 15)
{
    i = 0
    while (i < maxspade)
    {
        var _temp_local_var_3 = spade[i]
        speed = 0
        image_alpha += 0.1
    }
}
if (t >= 15 && con == 0)
{
    spadet += 1
    if (special == 1)
        spadet += 6
    if (spadet >= 4)
    {
        var _temp_local_var_5 = spade[startspade]
        image_blend = c_white
        gravity_direction = direction
        speed = -3.4
    }
}
t += 1
