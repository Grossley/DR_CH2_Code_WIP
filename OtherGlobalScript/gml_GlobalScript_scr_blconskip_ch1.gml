if (argument0 != -1)
{
    if (gml_Script_button1_p_ch1() && talktimer > argument0)
        talktimer = talkmax
    talktimer += 1
    if (talktimer >= talkmax)
    {
        with (obj_writer_ch1)
            instance_destroy()
        global.mnfight = 2
    }
}
if (argument0 == -1)
{
    if (instance_exists(obj_writer_ch1) == 0)
        global.mnfight = 2
}
return;
