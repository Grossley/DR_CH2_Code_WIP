if (active == true)
{
    if (obj_queen_enemy.beatwine2nodamage == 1)
        obj_queen_enemy.beatwine2nodamage = 0
    if (target != 3)
        gml_Script_scr_damage()
    if (target == 3)
        gml_Script_scr_damage_all()
    if (destroyonhit == 1)
        instance_destroy()
}
