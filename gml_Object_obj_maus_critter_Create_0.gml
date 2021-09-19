event_inherited()
active = false
destroyonhit = 0
initialspeed = 0
eyetimer = 0
init = 0
big = 0
stuck = 0
if instance_exists(obj_mauswheel_enemy)
{
    damage = (global.monsterat[obj_mauswheel_enemy.myself] * 5)
    grazepoints = 3
}
