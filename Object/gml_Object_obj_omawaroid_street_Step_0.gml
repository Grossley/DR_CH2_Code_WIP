nexty += driveSpeed
if (nexty > (obj_growtangle.y + ((obj_growtangle.sprite_height / 2) - 4)))
    nexty -= (obj_growtangle.sprite_height - 8)
y = nexty
if (anti_cheese == 0 || anti_cheese == 1)
{
    cheese_timer++
    if (obj_heart.x != heart_xstart)
    {
        if (anti_cheese == 1)
            gml_Script_scr_debug_print("cheese punishment canceled")
        anti_cheese = -1
    }
    else if (cheese_timer >= 45 && anti_cheese == 0)
    {
        gml_Script_scr_debug_print("cheese will be PUNISHED")
        anti_cheese = 1
    }
}
if (carhit > 0 && hitcheck != 0)
{
    if (hitcheck == -1)
    {
        with (obj_omawaroid_enemy)
            gml_Script_scr_mercyadd(myself, 100)
    }
    with (obj_monsterparent)
    {
        if (global.mercymod[myself] < 100)
            gml_Script_scr_mercyadd(myself, 50)
    }
    hitcheck = 0
}
