if (active == true)
{
    if (global.inv < 0 && instance_exists(obj_tm_quizzler))
    {
        if instance_exists(obj_tasque_manager_enemy)
            obj_tasque_manager_enemy.hitbysimonsaysattackcount++
    }
    if (target != 3)
        gml_Script_scr_damage()
    if (target == 3)
        gml_Script_scr_damage_all()
    if (destroyonhit == 1)
        instance_destroy()
}
