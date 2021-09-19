gml_Script_scr_spareanim()
gml_Script_scr_recruit()
gml_Script_scr_monsterdefeat()
instance_destroy()
with (obj_tasque_manager_enemy)
{
    if (global.mercymod[myself] < global.mercymax[myself])
        gml_Script_scr_mercyadd(myself, 35)
}
