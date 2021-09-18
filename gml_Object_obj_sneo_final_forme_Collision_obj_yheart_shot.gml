with (stacktop)
    0
with (obj_sneo_final_forme)
    hurtalpha = 1
if 635
{
    if ((obj_sneo_final_forme.destroyable && obj_sneo_final_forme.state == 0) || (obj_sneo_final_forme.state == 1 && obj_sneo_final_forme.formtimer < 30))
    {
    }
    else
        return;
}
166
if 635
{
    with (obj_sneo_final_forme)
        hurtalpha = 1
    if (destroyable == 1)
    {
        if (other.big == 0)
        {
            x += 6
            formtimer += 4
        }
        else
        {
            pushback = 10
            formtimer += 10
        }
    }
}
