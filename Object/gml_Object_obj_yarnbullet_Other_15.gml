if (active == true)
{
    if (target != 3)
        gml_Script_scr_damage()
    if (target == 2)
    {
    }
    if (target == 3)
        gml_Script_scr_damage_all()
    if (destroyonhit == 1)
        instance_destroy()
}
