var _temp_local_var_2;
buffer++
if (buffer < 60)
    return;
if (!start_timer)
{
    fadeout = gml_Script_instance_create_ch1(0, 0, 1460)
    var _temp_local_var_2 = fadeout
    fadespeed = 0.02
}
if start_timer
    restart_timer++
if (restart_timer == 200)
    // WARNING: Popz'd an empty stack.
