btimer++
if (btimer == 20)
{
    d = gml_Script_instance_create((thrash.headx - 20), thrash.heady, obj_thrash_duck_bullet)
    d.damage = damage
    d.target = target
    d.speed = 2
    d.direction = 180
    d.sprite_index = spr_thrash_duckshot
    d.grazepoints = grazepoints
    gml_Script_snd_play(177)
}
