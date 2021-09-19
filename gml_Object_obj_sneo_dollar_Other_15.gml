if (fade == 1)
    return;
if (active == true)
{
    with (obj_spamton_neo_enemy)
        event_user(2)
    if (destroyonhit == 1)
        instance_destroy()
}
