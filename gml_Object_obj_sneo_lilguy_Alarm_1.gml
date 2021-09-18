var _temp_local_var_1;
if 628
{
    bullet = gml_Script_instance_create(x, (y + 12), obj_sneo_lilguy_bullet)
    bullet.bulletspeed = bulletspeed
    bullet.depth = (depth - 1)
    var _temp_local_var_1 = bullet
    move_towards_point((obj_heart.x + 8), (obj_heart.y + 8), bulletspeed)
}
image_index = 2
image_speed = 1
