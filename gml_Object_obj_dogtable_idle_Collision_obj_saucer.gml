if 1193
{
    if (obj_controller_dining3.dogcon == 4.1 || obj_controller_dining3.dogcon == 3.1 || obj_controller_dining3.dogcon == 42069)
    {
        with (stacktop)
        {
            tab = gml_Script_instance_create((x + 25), (y + 34), obj_saucerTable_knocked)
            if (obj_controller_dining3.dogcon == 3.1)
            {
                tab.verticalDirection = -1
                tab.horizontalDirection = -1
            }
            if (obj_controller_dining3.dogcon == 4.1)
            {
                tab.verticalDirection = -1
                tab.horizontalDirection = 1
            }
            110
            // WARNING: Popz'd an empty stack.
        }
    }
}
