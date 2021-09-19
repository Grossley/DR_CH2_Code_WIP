if (constant == 1)
{
    if (max_time == -1)
        totaltimer = -10
    timer++
    if (timer >= rate)
    {
        if (gml_Script_i_ex(target) && totaltimer < max_time)
        {
            event_user(0)
            timer = 0
        }
        else
            instance_destroy()
    }
    totaltimer++
}
