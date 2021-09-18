var _temp_local_var_1;
if (initialized == 0)
    initialized = 1
if (waiting == 0)
{
    i = current_command
    while (i < maximum_command)
    {
        command_actor[i] = actor_selected_id
        _c = command[i]
        // WARNING: Popz'd an empty stack.
        if (breakme == 1)
        {
            breakme = 0
            break
        }
        else
        {
            i += 1
            continue
        }
    }
}
current_command = (i + 1)
if (waiting == 1)
{
    if (cs_wait_amount > 0)
    {
        cs_wait_timer++
        if (cs_wait_timer >= cs_wait_amount)
        {
            cs_wait_amount = 0
            cs_wait_timer = 0
            waiting = 0
        }
    }
    if (cs_wait_box >= 0)
    {
        if (!mydialoguer)
        {
            cs_wait_box = -1
            waiting = 0
        }
        else if (mydialoguer.active == true)
        {
            if mydialoguer.writer
            {
                if (mydialoguer.writer.msgno >= cs_wait_box)
                {
                    cs_wait_box = -1
                    waiting = 0
                }
            }
        }
    }
    if (cs_wait_dialogue == 1)
    {
        if (!mydialoguer)
        {
            cs_wait_dialogue = 0
            waiting = 0
        }
    }
}
if (terminate_this_frame == 1)
{
    if (kill_actors == 1)
    {
        jj = 0
        while (jj < 20)
            var _temp_local_var_1 = actor_id[jj]
    }
    // WARNING: Popz'd an empty stack.
}
