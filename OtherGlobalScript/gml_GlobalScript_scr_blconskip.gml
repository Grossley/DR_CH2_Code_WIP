if (argument0 >= 0)
{
    if (gml_Script_button1_p() && talktimer > argument0)
        talktimer = talkmax
    talktimer += 1
    if (talktimer >= talkmax)
    {
        with (obj_writer)
            instance_destroy()
        global.mnfight = 2
    }
}
else if (argument0 == -1)
{
    if (instance_exists(obj_writer) == 0)
        global.mnfight = 2
}
else if (argument0 == -2)
{
    talktimer += 1
    if (talktimer > 15)
        talktimer = talkmax
    if (talktimer >= talkmax)
    {
        with (obj_writer)
            instance_destroy()
        global.mnfight = 2
    }
}
return;
