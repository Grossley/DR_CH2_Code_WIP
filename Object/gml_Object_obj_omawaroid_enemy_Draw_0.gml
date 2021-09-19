if (state == 3)
{
    gml_Script_scr_enemyhurt_tired_after_damage(0.5)
    gml_Script_scr_enemy_drawhurt_generic()
}
gml_Script_scr_enemy_drawidle_generic(0.16666666666666666)
if (becomeflash == false)
    flash = false
becomeflash = false
