if (moveberd == 1)
{
    with (stacktop)
    {
        if (movetype == 0 && movetimer < (movethreshold - 1) && movecon == 0)
        {
            movebuffer = 1
            movetimer = (movethreshold - 1)
        }
    }
    // WARNING: Popz'd an empty stack.
}
