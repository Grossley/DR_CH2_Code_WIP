burst = 0
shift = 1
image_alpha = 0
flytime = 8
if instance_exists(obj_heartmarker)
{
    distx = obj_heartmarker.x
    disty = obj_heartmarker.y
}
else if (!instance_exists(obj_growtangle))
{
    distx = (gml_Script___view_get(0, 0) + 310)
    disty = (gml_Script___view_get(1, 0) + 160)
}
else
{
    distx = (obj_growtangle.x - 10)
    disty = (obj_growtangle.y - 10)
}
dist = point_distance(x, y, distx, disty)
move_towards_point(distx, disty, (dist / flytime))
alarm[0] = flytime
image_speed = 0
gml_Script_instance_create(x, y, obj_heartburst)
