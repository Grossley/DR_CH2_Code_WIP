scr_bullet_init()
element = 6
f = 2
destroyable = false
angle_speed = 0
yellowsiner = 0
loop = false
loopy1 = 90
loopy2 = 240
falsevspeed = 0
bighitbox = 0
bighead = 0
angleadjust = 0
active = true
altdir = 0
altspeed = 0
altfriction = 0
altgravity = 0
changedirection = 0
bulletspeed = 8
image_speed = 0
cutscene = false
if instance_exists(obj_spamton_neo_enemy)
    damage = (global.monsterat[obj_spamton_neo_enemy.myself] * 5)
if instance_exists(obj_sneo_bulletcontroller)
    target = obj_sneo_bulletcontroller.target
grazepoints = 2
