var _temp_local_var_1, _temp_local_var_2;
timer++
if (timer == 1)
    251
if (timer == 1)
    hex[0] = gml_Script_instance_create((x - 25), (y - 20), obj_icespell_hexagon)
if (timer == 4)
    hex[1] = gml_Script_instance_create((x + 25), (y - 20), obj_icespell_hexagon)
if (timer == 7)
    hex[2] = gml_Script_instance_create(x, (y + 20), obj_icespell_hexagon)
if (timer == 10)
{
    i = 0
    while (i < 3)
    {
        var _temp_local_var_1 = hex[i]
        for (j = 0; j < 6; j++)
        {
            hexhex[j] = gml_Script_instance_create(x, y, obj_icespell_hexagon)
            hexhex[j].image_xscale = 0.75
            hexhex[j].image_yscale = 0.75
            hexhex[j].con = 1
            hexhex[j].direction = (60 * j)
            hexhex[j].speed = 8
            hexhex[j].friction = 0.2
        }
    }
}
if (timer == 11)
    var _temp_local_var_2 = hex[0]
if (timer == 15)
{
    if (global.fighting == true)
    {
        global.hittarget[star] = 0
        if (damage >= global.monsterhp[star])
        {
            if global.monsterinstance[star]
            {
                if (global.monsterinstance[star].freezable == 1)
                    global.flag[(51 + star)] = 6
            }
        }
        gml_Script_scr_damage_enemy(star, damage)
        if (global.monster[star] == true)
            __of = target
    }
}
if (timer >= 10 && timer <= 30)
{
    (2.2 - (timer / 10))
    16777215
    draw_circle(x, y, (60 - (timer * 6)), 1)
    draw_circle(x, y, (61 - (timer * 6)), 1)
    draw_circle(x, y, (62 - (timer * 6)), 1)
    1
}
if (timer == 60)
    // WARNING: Popz'd an empty stack.
