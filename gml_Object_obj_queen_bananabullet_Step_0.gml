var _temp_local_var_5;
if (image_angle > 90 && image_angle < 270)
    image_angle -= 180
if (bufferstate == 0)
{
}
else
    var _temp_local_var_5 = 0
image_blend = c_gray
bufferstate = 1
originalspeed = speed
speed = 0
image_speed = 0
timer++
if (fadeaway == 1 && timer >= 90)
{
    image_alpha -= 0.1
    if (image_alpha < 0)
        // WARNING: Popz'd an empty stack.
}
if (slowdown == 1)
{
    if (speed > 2)
        speed -= 0.2
}
