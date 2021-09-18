burst = 0
shift = 1
image_alpha = 0
flytime = 8
if 1527
{
    distx = obj_heartmarker_ch1.x
    disty = obj_heartmarker_ch1.y
}
else
{
    distx = (gml_Script___view_get(0, 0) + 310)
    disty = (gml_Script___view_get(1, 0) + 160)
}
dist = point_distance(x, y, distx, disty)
move_towards_point(distx, disty, (dist / flytime))
alarm[0] = flytime
image_speed = 0
gml_Script_instance_create_ch1(x, y, 1526)
