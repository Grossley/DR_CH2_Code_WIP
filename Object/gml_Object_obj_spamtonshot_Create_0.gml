if (instance_exists(obj_sneo_heartattack) && obj_sneo_heartattack.heart_health < 1)
{
    instance_destroy()
    return;
}
gml_Script_scr_bullet_init()
element = 6
f = 2
con = 0
mode = 1
dontexplode = 0
destroyable = 0
image_xscale = 1
image_yscale = 1
siner = 0
fluffyguarddestroysthis = 0
targetx = (gml_Script_camerax() + (gml_Script_camerawidth() / 2))
targety = (gml_Script_cameray() + (gml_Script_cameraheight() / 4))
if instance_exists(obj_heart)
{
    targetx = obj_heart.x
    targety = obj_heart.y
}
move_towards_point(targetx, targety, 5)
angle_speed = 0
grazepoints = 4
if instance_exists(obj_sneo_bulletcontroller)
    target = obj_sneo_bulletcontroller.target
