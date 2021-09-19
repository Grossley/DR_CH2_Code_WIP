if (active == true)
{
    if handle
    {
        if (target != 3)
            gml_Script_scr_bullet_heal(6)
        if (target == 3)
            gml_Script_scr_healall(6)
    }
    else
    {
        if (target != 3)
            gml_Script_scr_damage()
        if (target == 3)
            gml_Script_scr_damage_all()
    }
    if (destroyonhit == 1)
        instance_destroy()
}
