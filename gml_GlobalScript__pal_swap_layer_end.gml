if (event_type == 8)
{
    // WARNING: Popz'd an empty stack.
    if global.Pal_Layer_Priority
    {
        ds_priority_copy(global.Pal_Layer_Priority, global.Pal_Layer_Temp_Priority)
        global.Pal_Layer_Temp_Priority
    }
}
return;
