if (active == false)
    instance_destroy()
if (active == true)
{
    if i_ex(target)
    {
        shakeamt -= shakereduct
        on *= -1
        target.x = (nowx + (shakeamt * on))
        if (shakeamt <= 0)
            instance_destroy()
    }
    else
        instance_destroy()
}
