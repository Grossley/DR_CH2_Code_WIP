if (active == true)
{
    if (type == 0)
    {
        if (con >= 1)
        {
            with (stacktop)
            {
                if (con == 0 && disabled == 0)
                {
                    disabled = 1
                    disabledtimer = 95
                    xshake = 10
                    disabledtype = 0
                }
                if (con != 0 && nitro == 0)
                    damaged = 1
            }
            1
        }
        else if (bigcar == 0)
        {
            gml_Script_instance_create((x + 20), (y - 40), o_coastersmoke)
            // WARNING: Popz'd an empty stack.
        }
    }
    if (type == 1)
    {
        with (stacktop)
        {
            if (disabled == 0 && con == 1)
            {
                damaged = 1
                disabled = 1
                disabledtimer = 125
                disabledtype = 1
            }
        }
    }
}
