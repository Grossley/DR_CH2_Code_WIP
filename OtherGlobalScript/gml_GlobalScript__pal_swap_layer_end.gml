if (event_type == 8)
{
    gml_Script_pal_swap_reset()
    if ds_priority_empty(global.Pal_Layer_Priority)
    {
        ds_priority_copy(global.Pal_Layer_Priority, global.Pal_Layer_Temp_Priority)
        ds_priority_clear(global.Pal_Layer_Temp_Priority)
    }
}
return;
