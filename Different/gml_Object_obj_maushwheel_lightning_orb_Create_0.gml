scr_bullet_init()
image_speed = 0.25
image_xscale = 0.1
image_yscale = 0.1
siner = 0
timer = 0
con = 0
depth = (obj_heart.depth - 100)
_pitch = 1
snd_play(snd_sneo_overpower)
snd_loop(snd_sneo_overpower)
snd_pitch(snd_sneo_overpower, _pitch)
snd_volume(snd_sneo_overpower, 0, 0)
snd_volume(snd_sneo_overpower, 2, 6)
destroyonhit = false
obj_mauswheel_enemy.mytarget = target
grazepoints = 16
if instance_exists(obj_mauswheel_enemy)
    damage = (global.monsterat[obj_mauswheel_enemy.myself] * 5)
goal = choose(20, 100)
