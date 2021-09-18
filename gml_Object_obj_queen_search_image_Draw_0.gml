var _temp_local_var_1;
if (loading > 0)
{
    if (loading == 9)
    {
        loopindex = (sprite_index - 3)
        image_index = 2
        loopindex = 2
    }
    loading--
    if (loading == 0)
        image_index = 0
    else if ((loading % 3) == 0)
        image_index++
}
else
{
    if (loopindex > 1)
    {
    }
    else
        var _temp_local_var_1 = 0
    animtimer++
    if (animtimer >= (loopindex * 4))
        animtimer = 0
    image_index = (animtimer / 4)
}
// WARNING: Popz'd an empty stack.
