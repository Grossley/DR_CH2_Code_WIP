gml_Script_scr_bullet_init()
init = 0
if (!instance_exists(obj_heart))
    instance_destroy()
childSpeed = 5
childgravity = 0
firingSpeed = 3
timer = firingSpeed
totalBullets = 8
bulletsSpawned = 0
shotRotation = 0
childBullet = 367
visible = false