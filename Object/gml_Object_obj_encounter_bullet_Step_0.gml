frozen = false
if (global.interact == 0 || global.interact == 4)
    frozen = false
if gml_Script_scr_outside_camera(200)
    instance_destroy()
if (global.interact != 0 && global.interact != 4)
    frozen = true
if (speed != 0)
{
    fakespeed = speed
    speed = 0
}
fakedirection = direction
if (frozen == false)
{
    x += lengthdir_x(fakespeed, fakedirection)
    y += lengthdir_y(fakespeed, fakedirection)
}
if (!gml_Script_i_ex(creator))
    instance_destroy()
image_angle = fakedirection
if (instance_exists(obj_testoverworldenemy) || instance_exists(obj_encounterbasic))
{
    active = false
    instance_destroy()
}
