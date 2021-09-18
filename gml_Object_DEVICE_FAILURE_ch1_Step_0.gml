if (EVENT == 1)
{
    // WARNING: Popz'd an empty stack.
    global.currentsong[0] = "AUDIO_DRONE.ogg"
    global.currentsong[1] = global.currentsong[0]
    global.typer = 667
    global.fc = 0
    global.msg[0] = "DEVICE_FAILURE_slash_Step_0_gml_10_0"
    EVENT = 2
    W = gml_Script_instance_create_ch1(70, 80, 1327)
    if (global.tempflag[3] >= 1)
    {
        with (obj_writer_ch1)
            // WARNING: Popz'd an empty stack.
    }
}
if (EVENT == 0)
    EVENT = 1
if (EVENT == 2 && (!1327))
{
    JA_XOFF = 0
    if (global.lang == "ja")
        JA_XOFF = 44
    global.msg[0] = "DEVICE_FAILURE_slash_Step_0_gml_28_0"
    if (global.tempflag[3] >= 1)
    {
        JA_XOFF = 0
        global.msg[0] = "DEVICE_FAILURE_slash_Step_0_gml_32_0"
    }
    EVENT = 3
    alarm[4] = 30
    if (global.tempflag[3] >= 1)
        alarm[4] = 15
    W = gml_Script_instance_create_ch1((40 + JA_XOFF), 80, 1327)
}
if (EVENT == 4)
{
    choice = gml_Script_instance_create_ch1(100, 120, 1634)
    EVENT = 5
}
if (EVENT == 5)
{
    if (global.choice == 0)
    {
        with (obj_writer_ch1)
            // WARNING: Popz'd an empty stack.
        EVENT = 6
    }
    if (global.choice == 1)
    {
        with (obj_writer_ch1)
            // WARNING: Popz'd an empty stack.
        EVENT = 26
    }
}
if (EVENT == 6)
{
    // WARNING: Popz'd an empty stack.
    global.flag[6] = 1
    global.msg[0] = "DEVICE_FAILURE_slash_Step_0_gml_68_0"
    W = gml_Script_instance_create_ch1(50, 80, 1327)
    EVENT = 7
    alarm[4] = 30
    if (global.tempflag[3] >= 1)
    {
        with (obj_writer_ch1)
            // WARNING: Popz'd an empty stack.
        alarm[4] = 1
    }
}
if (EVENT == 8)
{
    WHITEFADE = 1
    FADEUP = 0.01
    EVENT = 9
    alarm[4] = 120
    if (global.tempflag[3] >= 1)
    {
        FADEUP = 0.03
        alarm[4] = 45
    }
    global.tempflag[3] += 1
}
if (EVENT == 10)
{
    "DEVICE_FAILURE_slash_Step_0_gml_95_0"
    // WARNING: Popz'd an empty stack.
    EVENT = 11
}
if (EVENT == 26)
{
    // WARNING: Popz'd an empty stack.
    global.msg[0] = "DEVICE_FAILURE_slash_Step_0_gml_103_0"
    EVENT = 27
    W = gml_Script_instance_create_ch1(60, 80, 1327)
}
if (EVENT == 27 && (!1327))
{
    global.currentsong[0] = "AUDIO_DARKNESS.ogg"
    global.currentsong[1] = global.currentsong[0]
    EVENT = 28
    DARK_WAIT = 0
}
if (EVENT == 28)
{
    DARK_WAIT += 1
    if (DARK_WAIT >= 2040)
        // WARNING: Popz'd an empty stack.
    if (!global.currentsong[1])
        // WARNING: Popz'd an empty stack.
    if (os_type == os_ps4 || os_type == os_switch)
    {
        if (DARK_WAIT >= 90 && (!restart))
        {
            var i = 0
            while (i < array_length_1d(gamepad_controls))
            {
                if gamepad_button_check_pressed(obj_gamecontroller.gamepad_id, gamepad_controls[i])
                {
                    if (gamepad_controls[i] == global.button0 || gamepad_controls[i] == global.button1 || gamepad_controls[i] == global.button2 || gamepad_controls[i] == 32775)
                    {
                        gml_Script_mus_volume_ch1(global.currentsong[1], 0, 80)
                        restart = 1
                        break
                    }
                    else
                    {
                        i++
                        continue
                    }
                }
                else
                {
                    i++
                    continue
                }
            }
        }
        if restart
        {
            restart_timer++
            if (restart_timer >= 100)
                // WARNING: Popz'd an empty stack.
        }
    }
}
if (EVENT >= 0 && EVENT <= 4)
{
    with (obj_writer_ch1)
    {
        if (pos < (length - 3))
            pos += 2
        if (specfade <= 0.9)
            specfade -= 0.1
        if (rate <= 1)
            rate = 1
    }
}
