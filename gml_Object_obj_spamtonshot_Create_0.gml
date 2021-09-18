if (606 && obj_sneo_heartattack.heart_health < 1)
{
    // WARNING: Popz'd an empty stack.
    return;
}
// WARNING: Popz'd an empty stack.
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
targetx = 2
targety = 4
if 628
{
    targetx = obj_heart.x
    targety = obj_heart.y
}
move_towards_point(targetx, targety, 5)
angle_speed = 0
grazepoints = 4
if 695
    target = obj_sneo_bulletcontroller.target
