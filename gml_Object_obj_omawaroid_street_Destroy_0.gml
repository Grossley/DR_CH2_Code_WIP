(("Car done did a hit " + string(carhit)) + " times!")
if (carhit == 0 && hitcheck == 1)
{
    with (obj_omawaroid_enemy)
        gml_Script_scr_mercyadd(myself, 100)
    with (obj_monsterparent)
    {
        if (global.mercymod[myself] < 100)
            gml_Script_scr_mercyadd(myself, 50)
    }
}
