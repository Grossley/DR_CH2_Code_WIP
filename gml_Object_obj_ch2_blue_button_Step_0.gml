if pressed
    return;
var checkPress = 0
if (80 && (!pressed) && global.interact == 0)
{
    if place_meeting(x, y, obj_mainchara)
        checkPress = 1
}
if checkPress
{
    if (pressed == 0)
    {
        pressed = 1
        alarm[0] = 30
    }
}
