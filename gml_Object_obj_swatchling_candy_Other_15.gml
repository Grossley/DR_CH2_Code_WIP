if (active == true)
{
    if (target != 3)
        gml_Script_scr_bullet_heal(6)
    if (target == 3)
        gml_Script_scr_healall(6)
    instance_destroy()
}
