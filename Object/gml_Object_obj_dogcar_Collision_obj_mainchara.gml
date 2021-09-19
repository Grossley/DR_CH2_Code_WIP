if (mode == 0)
{
    gml_Script_snd_stop(170)
    gml_Script_snd_play(170)
    gml_Script_snd_stop(217)
    gml_Script_snd_play(217)
    doghit = gml_Script_instance_create(x, (y + 40), obj_animation)
    doghit.image_xscale = 2
    doghit.image_yscale = 2
    doghit.sprite_index = spr_dogcar_hit
    x += 48
    dmgwriter = gml_Script_instance_create(obj_mainchara.x, ((obj_mainchara.y + obj_mainchara.myheight) - 24), obj_dmgwriter)
    dmgwriter.damage = choose(2, 3, 4, 5)
    dmgwriter.type = 0
    dmgwriter.depth = -100
    dmgwriter.hspeed = -10
    global.interact = 1
    with (obj_mainchara)
        alarm[1] = 1
    fakedamage += 4
    if (fakedamage >= 120)
    {
        with (obj_dogcar_controller)
            con = 2
    }
}
