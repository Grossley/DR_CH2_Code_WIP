if (!628)
{
    // WARNING: Popz'd an empty stack.
    return;
}
if (!target)
{
    move_towards_point((x + 150), y, 22)
    image_angle = direction
    return;
}
if (target == obj_spamton_neo_enemy)
{
    move_towards_point((x + 150), y, 22)
    image_angle = direction
    return;
}
move_towards_point(target.x, target.y, 22)
image_angle = direction
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
if ((x + 500) && (x + 530) && 626 && obj_sneo_faceattack.init == 1)
    // WARNING: Popz'd an empty stack.
