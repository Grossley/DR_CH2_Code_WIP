var _temp_local_var_1;
bullet = gml_Script_instance_create((x + (sprite_width / 2)), (y + (sprite_height / 2)), obj_basicbullet)
bullet.bulletspeed = bulletspeed
var _temp_local_var_1 = bullet
move_towards_point((obj_yellowheart.x + 8), (obj_yellowheart.y + 8), bulletspeed)
