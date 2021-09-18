if loaded
{
    if (save_ready == 1 && image_alpha == 1)
    {
        // WARNING: Popz'd an empty stack.
        save_ready++
    }
    if (!alpha_set)
    {
        fadespeed = 0.08
        alpha_set = 1
        save_ready++
    }
    if (save_ready == 2)
    {
        fadespeed = -0.08
        save_ready++
    }
}
