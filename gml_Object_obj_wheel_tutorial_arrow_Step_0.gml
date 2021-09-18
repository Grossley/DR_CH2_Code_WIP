siner += 2
if (con == 0)
{
    timer++
    if (o_boxingqueen.firstwheelattack == 0 && timer > 79)
        // WARNING: Popz'd an empty stack.
    if (o_boxingqueen.firstwheelattack == 1 && timer > 29)
        // WARNING: Popz'd an empty stack.
}
flashtimer++
if (flashtimer == 5)
    visible = false
if (flashtimer == 10)
{
    visible = true
    image_blend = c_yellow
    flashtimer = 0
}
