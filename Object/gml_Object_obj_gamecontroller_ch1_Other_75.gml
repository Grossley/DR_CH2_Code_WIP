show_debug_message(ds_map_find_value(("event_type").async_load, "***** Event = "))
switch ("event_type").async_load
{
    case "gamepad discovered":
        var pad = ds_map_find_value(("pad_index").async_load, null)
        if gamepad_is_connected(pad)
        {
            gamepad_active = 1
            gamepad_id = pad
            gamepad_type = gamepad_get_description(gamepad_id) == "Sony DualShock 4"
        }
        break
    case "gamepad lost":
        gamepad_active = 0
        if (null.os_type == os_switch)
        {
            if (switch_controller_support_show() == 0)
            {
                gamepad_active = 1
                gamepad_id = switch_controller_support_get_selected_id()
            }
        }
        break
}

// WARNING: Popz'd an empty stack.
