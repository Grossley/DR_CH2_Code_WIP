topwall = instance_create((x - 40), (y - 30), obj_basicbullet_sneo)
topwall.depth = -999999
topwall.image_xscale = 1
topwall.image_yscale = -17
topwall.sprite_index = spr_hitbox_10px
topwall.mask_index = spr_hitbox_10px
topwall.visible = false
topwall.active = true
topwall.destroyable = -1
topwall.destroyonhit = false
bottomwall = instance_create((x - 40), (y + 30), obj_basicbullet_sneo)
bottomwall.depth = -999999
bottomwall.image_xscale = 1
bottomwall.image_yscale = 17
bottomwall.sprite_index = spr_hitbox_10px
bottomwall.mask_index = spr_hitbox_10px
bottomwall.visible = false
bottomwall.active = true
bottomwall.destroyable = -1
bottomwall.destroyonhit = false
creatednewalls = 1
