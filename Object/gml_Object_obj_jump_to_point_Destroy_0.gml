if (init == true)
{
    if gml_Script_i_ex(body_obj)
    {
        with (body_obj)
            instance_destroy()
    }
    if gml_Script_i_ex(target)
    {
        with (target)
            visible = true
        target.x = endx
        target.y = endy
    }
}
