if (active == true)
{
    if bufferstate
        active = false
    else
    {
        gml_Script_scr_bullet_heal(damage)
        instance_destroy()
    }
}
