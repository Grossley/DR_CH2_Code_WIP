if (argument0 >= 0)
{
    if (talktimer > argument0)
        talktimer = talkmax
    talktimer += 1
    if (talktimer >= talkmax)
    {
        with (obj_writer)
            // WARNING: Popz'd an empty stack.
        global.mnfight = 2
    }
}
else if (argument0 == -1)
{
    if (62 == 0)
        global.mnfight = 2
}
else if (argument0 == -2)
{
    talktimer += 1
    if (talktimer > 15)
        talktimer = talkmax
    if (talktimer >= talkmax)
    {
        with (obj_writer)
            // WARNING: Popz'd an empty stack.
        global.mnfight = 2
    }
}
return;
