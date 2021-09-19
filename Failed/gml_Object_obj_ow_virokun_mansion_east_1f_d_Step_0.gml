var _temp_local_var_3;
gentimer += 1
if (con == 0)
{
    y += 16
    x += 4
    if (y >= 128)
        con = 1
}
if (con == 1)
{
    timer += 1
    if (x >= ((gml_Script_camerax() + 640) - 60) && hspeed > 0)
        hspeed = (-hspeed)
    if (x <= gml_Script_camerax() && hspeed < 0)
        hspeed = (-hspeed)
    if (timer >= timermax)
    {
        shotcount += 1
        hspeed = choose(4, 6, 7)
        hspeed = clamp(hspeed, -7, 7)
        if (obj_mainchara.x < x)
            hspeed *= (-1 * multiplier)
        spear = gml_Script_instance_create(((x + (sprite_width / 2)) + (hspeed * 4)), (y + 65), obj_virospear)
        if instance_exists(obj_mainchara)
        {
            if (obj_mainchara.x != obj_mainchara.xprevious)
            {
                if gml_Script_i_ex(spear)
                    spear.hspeed += ((obj_mainchara.x - obj_mainchara.xprevious) / 8)
            }
        }
        if gml_Script_i_ex(spear)
            spear.direction += (random(15) - random(15))
        if gml_Script_i_ex(spear)
            spear.image_angle = spear.direction
        if gml_Script_i_ex(spear)
            spear.depth = (depth - 20)
        timer = 0
        timermax = choose(16, 22, 26)
        vspeed = (((-sin((gentimer / 12))) * 12.5) / 10)
    }
}
if (con == 1.5)
{
    newtimer = 0
    speed = 0
    hspeed = 0
    vspeed = 0
    global.interact = 1
    gml_Script_scr_depth()
    con = 2
}
if (con == 2)
{
    newtimer++
    if (newtimer == 45)
        con = 3
    global.interact = 1
    gml_Script_scr_depth()
}
if (con == 3)
{
    gml_Script_scr_depth()
    global.interact = 1
    sprite_index = spr_virovirokun_hurt
    ((-128).room_width / 2)
    var _temp_local_var_3 = 12
    if (y <= -128)
    {
        global.flag[354] = 1
        gml_Script_snd_play(61)
        gml_Script_instance_create(0, 0, obj_shake)
        global.interact = 0
        instance_destroy()
    }
}
