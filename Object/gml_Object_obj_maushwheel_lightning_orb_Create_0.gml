gml_Script_scr_bullet_init()
image_speed = 0.25
image_xscale = 0.1
image_yscale = 0.1
siner = 0
timer = 0
con = 0
depth = (obj_heart.depth - 100)
_pitch = 1
gml_Script_snd_play(snd_sneo_overpower)
gml_Script_snd_loop(snd_sneo_overpower)
gml_Script_snd_pitch(snd_sneo_overpower, _pitch)
gml_Script_snd_volume(snd_sneo_overpower, 0, 0)
gml_Script_snd_volume(snd_sneo_overpower, 2, 6)
destroyonhit = 0
obj_mauswheel_enemy.mytarget = target
grazepoints = 16
if instance_exists(obj_mauswheel_enemy)
    damage = (global.monsterat[obj_mauswheel_enemy.myself] * 5)
goal = choose(20, 100)
