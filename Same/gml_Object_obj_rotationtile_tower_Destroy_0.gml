if (init == true)
{
    for (i = 0; i < tilemax; i++)
    {
        with (tile[i])
            instance_destroy()
    }
}
with (mouseKiller)
    instance_destroy()
