if i_ex(target)
{
    if (init == false)
    {
        if is_string(pointa)
            pointa = variable_instance_get(target, varname)
        init = true
    }
    time++
    if (easetype == 0)
        variable_instance_set(target, varname, lerp(pointa, pointb, (time / maxtime)))
    else
    {
        if (easeinout == "out")
            variable_instance_set(target, varname, lerp_ease_out(pointa, pointb, (time / maxtime), easetype))
        if (easeinout == "in")
            variable_instance_set(target, varname, lerp_ease_in(pointa, pointb, (time / maxtime), easetype))
        if (easeinout == "inout")
            variable_instance_set(target, varname, lerp_ease_inout(pointa, pointb, (time / maxtime), easetype))
    }
    if (time >= maxtime)
        instance_destroy()
}
else
    instance_destroy()
