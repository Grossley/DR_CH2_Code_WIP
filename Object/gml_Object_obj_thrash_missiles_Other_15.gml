d = gml_Script_instance_create(x, y, obj_animation_dx)
d.sprite_index = spr_thrash_missile_explosion
gml_Script_snd_play(snd_bomb)
d.depth = (depth - 5)
event_inherited()
obj_rouxls_enemy.wheel_difficulty = 0
