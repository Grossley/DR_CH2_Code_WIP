gml_Script_scr_bullet_init()
element = 6
destroyable = 0
bighitbox = 1
image_speed = 0
if instance_exists(obj_spamton_neo_enemy)
    damage = (global.monsterat[obj_spamton_neo_enemy.myself] * 5)
if instance_exists(obj_sneo_bulletcontroller)
    target = obj_sneo_bulletcontroller.target
grazepoints = 2
hspeed = -3
