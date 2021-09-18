var _temp_local_var_4;
if (bufferstate == 0)
{
}
else
    var _temp_local_var_4 = 0
image_blend = c_gray
bufferstate = 1
originalspeed = speed
speed = 0
destroyonhit = 0
timer++
if (fadeaway == 1 && timer >= 60)
{
    image_alpha -= 0.1
    if (image_alpha < 0)
        // WARNING: Popz'd an empty stack.
}
if (slowdown == 1)
{
    if (speed > 3)
        speed -= 0.35
}
if (rotate == 1)
    image_angle += 5
