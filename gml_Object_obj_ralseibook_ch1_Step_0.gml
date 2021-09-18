if (turning == 0 && page > -1)
{
    turning = -1
    turnpage = page
    siner = 0
}
if (turning == 0 && page < 6)
{
    turning = 1
    turnpage = page
    siner = 0
}
if (global.interact == 1)
    global.interact = 0
// WARNING: Popz'd an empty stack.
