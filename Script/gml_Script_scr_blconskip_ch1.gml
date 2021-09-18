if (argument0 != -1)
{
    if (talktimer > argument0)
        talktimer = talkmax
    talktimer += 1
    if (talktimer >= talkmax)
    {
        with (obj_writer_ch1)
            // WARNING: Popz'd an empty stack.
        global.mnfight = 2
    }
}
if (argument0 == -1)
{
    if (1327 == 0)
        global.mnfight = 2
}
return;
