if (paused && (!pausing))
{
    pausing = true
    audio_pause_all()
    instance_deactivate_all(true)
    if global.is_console
        instance_activate_object(obj_border_controller)
}
if (pausing && (!os_is_paused()))
{
    paused = 0
    pausing = false
    instance_activate_all()
    audio_resume_all()
    alarm[0] = 1
}
