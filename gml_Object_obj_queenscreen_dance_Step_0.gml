if (init == 0)
    init = 1
if (activecon == 0)
{
    if 80
    {
        aligned = 0
        if (extflag == 3)
            aligned = 1
        if (extflag == 7)
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
if dance_active
{
    var countmod = 0.4877
    var audio_pos = global.currentsong[1]
    if (audio_pos >= 16.5)
        countmod = 1.9508
    else if (audio_pos >= 130)
        countmod = 0.4877
    count += countmod
    if (count >= 30)
    {
        count -= 30
        dance_con = 1
    }
    if (dance_con == 1)
    {
        dance_con = 0
        image_index++
        image_alpha = 1
        if (global.flag[8] == 0)
            gml_Script_scr_lerpvar_instance(id, "image_alpha", 2, 0.5, 14)
    }
}
