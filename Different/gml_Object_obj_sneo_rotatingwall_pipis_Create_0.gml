scr_bullet_init()
image_xscale = 2
image_yscale = 2
timer = 0
con = 0
element = 6
destroyable = false
bighitbox = 1
image_speed = 0
if instance_exists(obj_spamton_neo_enemy)
    damage = (global.monsterat[obj_spamton_neo_enemy.myself] * 5)
if instance_exists(obj_sneo_bulletcontroller)
    target = obj_sneo_bulletcontroller.target
grazepoints = 2
wallspeed = -7
wallnumber = 0
