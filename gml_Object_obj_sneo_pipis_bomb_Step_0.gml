if (global.turntimer < 1)
    instance_destroy()
if (timer > 0)
    timer++
spawninvincibilitytimer++
if (timer == 6)
{
    gml_Script_snd_play(141)
    gml_Script_snd_stop(bomsfallsfx)
    sprite_index = spr_mettaton_bomb2
    image_index = 0
    gml_Script_instance_create(x, y, obj_shake)
    hitbox1 = gml_Script_instance_create(x, y, obj_mettaton_bomb_hitbox)
    hitbox1.image_xscale = 5000
    hitbox1.image_yscale = 0.5
    hitbox1.creator = id
    hitbox2 = gml_Script_instance_create(x, y, obj_mettaton_bomb_hitbox)
    hitbox2.image_xscale = 0.2
    hitbox2.image_yscale = 5000
    hitbox2.creator = id
}
if (timer == 12)
    instance_destroy()
if (y > ((obj_growtangle.y - 81) + obj_growtangle.sprite_height))
{
    if (alarm[0] < 1)
    {
        gml_Script_snd_play(110)
        gravity = 0.24
        vspeed = (-5.5 - random(3))
        con = 2
        alarm[0] = 10
    }
}
if (x < ((obj_growtangle.x + (obj_growtangle.sprite_width / 2)) + 10) && y > ((obj_growtangle.y - (obj_growtangle.sprite_height / 2)) + 10))
{
    if (timer == 0)
    {
        gml_Script_snd_play(166)
        gravity = 0
        speed = 0
        timer = 1
        image_speed = 1
        bomsfallsfx = gml_Script_snd_loop(142)
    }
}
