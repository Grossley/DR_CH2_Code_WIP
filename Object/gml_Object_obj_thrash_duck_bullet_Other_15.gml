if (active == true)
{
    if (target != 3)
        gml_Script_scr_damage()
    if (target == 3)
        gml_Script_scr_damage_all()
    active = false
    direction = 0
    gravity = 0.6
    spin = -7
}
