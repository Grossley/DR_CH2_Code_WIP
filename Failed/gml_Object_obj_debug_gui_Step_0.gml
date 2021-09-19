if (timer[0] > 0)
{
    obj_sneo_friedpipis.timer[timer[obj_sneo_friedpipis]]--
    self
    totaltimer--
}
if (timer[0] <= 0)
{
    messagecount--
    if (messagecount <= 0)
        instance_destroy()
    else
    {
        for (i = 0; i < messagecount; i++)
        {
            message[i] = message[(i + 1)]
            timer[i] = timer[(i + 1)]
        }
        message[messagecount] = ""
        timer[messagecount] = 0
        debugmessage = message[0]
        for (i = 1; i < messagecount; i++)
            debugmessage += ("#" + message[i])
    }
}
