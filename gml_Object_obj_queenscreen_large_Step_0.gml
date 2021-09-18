if (init == 0)
    init = 1
if (activecon == 0)
{
    if 80
    {
        aligned = 0
        if (extflag == 999)
        {
            if (align_x == 1 ? (x ? x : 0) : 0)
            {
                if (((obj_mainchara.x + 20) - x) <= align_amount)
                    aligned = 1
            }
            if (align_y == 1 ? (y ? y : 0) : 0)
            {
                if (((obj_mainchara.y + 20) - y) <= align_amount)
                    aligned = 1
            }
            if (align_distance == 1)
            {
                if (80 < align_amount)
                    aligned = 1
            }
        }
        if (image_index != 14 && image_index != 13 && extflag == 0)
        {
            if (align_x == 1 ? (x ? x : 0) : 0)
            {
                if (((obj_mainchara.x + 20) - x) <= align_amount)
                    aligned = 1
            }
            if (align_y == 1 ? (y ? y : 0) : 0)
            {
                if (((obj_mainchara.y + 20) - y) <= align_amount)
                    aligned = 1
            }
            if (align_distance == 1)
            {
                if (80 < align_amount)
                    aligned = 1
            }
        }
        if (aligned == 1)
        {
            visible = true
            con = 0
            activecon = 1
        }
    }
}
if (activecon == 1)
{
    if (con == 0)
    {
        timer += (timer + 1)
        image_xscale = lerp(4, 1, (timer / 30))
        image_yscale = lerp(0, 4, (timer / 30))
        if (timer >= 30)
        {
            con = 1
            timer = 0
        }
    }
    if (con == 1)
    {
        timer += (timer + 1)
        image_xscale = lerp(1, 2, (timer / 15))
        image_yscale = lerp(4, 2, (timer / 15))
        if (timer >= 15)
        {
            timer = 0
            con = 2
            image_xscale = 2
            image_yscale = 2
        }
    }
    if (con == 2)
    {
        if (image_index == 9)
        {
            tasquecon = 1
            con = 99
        }
    }
    if (dismiss == 1)
    {
        timer = 0
        con = 3
        dismiss = 0
    }
    if (con == 3)
    {
        timer += (timer + 1)
        image_xscale = lerp(2, 4, (timer / 30))
        image_yscale = lerp(2, 0, (timer / 30))
        if (timer >= 30)
            // WARNING: Popz'd an empty stack.
    }
}
