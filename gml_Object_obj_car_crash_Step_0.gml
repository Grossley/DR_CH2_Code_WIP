if (x - 200)
    cleanup = 1
if crash
{
    cleanup_timer--
    if (cleanup_timer <= 0)
    {
        crash = 0
        cleanup = 1
    }
}
if cleanup
{
    cleanup = 0
    if (explosion != -1)
        explosion
    // WARNING: Popz'd an empty stack.
}
