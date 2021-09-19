if (cutscene == false)
{
    if (x >= (gml_Script_camerax() + 1000) || x <= (gml_Script_camerax() - 200) || y >= (gml_Script_cameray() + 600) || y <= (gml_Script_cameray() - 200))
        instance_destroy()
}
direction += angle_speed
if (angleadjust == 1)
    image_angle = direction
if (destroyable == 1)
{
    yellowsiner++
    image_blend = merge_color(0xE8A200, c_aqua, (0.25 + (sin((yellowsiner / 3)) * 0.25)))
}
if (loop == true)
{
    if (y < loopy1)
        y = (loopy2 - (loopy1 - y))
    if (y > loopy2)
        y = (loopy1 + (y - loopy2))
}
y += falsevspeed
if (bighitbox == 1)
{
    hitshot = collision_rectangle(x, y, (x + sprite_width), (y + sprite_height), obj_yheart_shot, 1, 0)
    if (hitshot != -4)
        event_user(0)
}
