if (specialtalkcon == 0)
{
    with (stacktop)
    {
        dotalk = 1
        talkcon++
    }
}
else
{
    other.specialtalkcon = specialtalkcon
    other.dospecialtalk = 1
}
// WARNING: Popz'd an empty stack.
