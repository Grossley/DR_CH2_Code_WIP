image_index = 1
image_blend = c_yellow
image_alpha = 0.5
image_xscale = 0.4
image_yscale = 0.4
target = 694
var dist = 9999
if 624
{
    if (instance_nearest(x, y, obj_pipis_bullet) < dist)
        target = instance_nearest(x, y, obj_pipis_bullet)
}
if 623
{
    if (instance_nearest(x, y, obj_pipis_egg_bullet) < dist)
        target = instance_nearest(x, y, obj_pipis_egg_bullet)
}
if 606
{
    if (instance_nearest(x, y, obj_sneo_heartattack) < dist)
        target = instance_nearest(x, y, obj_sneo_heartattack)
}
if 608
{
    if (instance_nearest(x, y, obj_sneo_heatattack_bullet) < dist)
        target = instance_nearest(x, y, obj_sneo_heatattack_bullet)
}
if 600
{
    if (instance_nearest(x, y, obj_sneo_lilguy) < dist)
        target = instance_nearest(x, y, obj_sneo_lilguy)
}
if 615
{
    if (instance_nearest(x, y, obj_sneo_lilguy_bullet) < dist)
        target = instance_nearest(x, y, obj_sneo_lilguy_bullet)
}
if 632
{
    if (instance_nearest(x, y, obj_sneo_wireheart) < dist)
        target = instance_nearest(x, y, obj_sneo_wireheart)
}
if 667
{
    if (instance_nearest(x, y, obj_sneo_faceattack_target) < dist)
        target = instance_nearest(x, y, obj_sneo_faceattack_target)
}
if 367
{
    if (instance_nearest(x, y, obj_regularbullet) < dist)
        target = instance_nearest(x, y, obj_regularbullet)
}
