anim = gml_Script_instance_create((x + 15), (y + 15), obj_animation)
gml_Script_snd_play(188)
anim.sprite_index = spr_realisticexplosion
instance_destroy()
