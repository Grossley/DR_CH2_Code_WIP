var _temp_local_var_1;
spintimer++
if (spintimer == 20)
    spintimer = 0
if (spintimer == 0)
    sprite_index = spr_lancer_dt
else if (spintimer == 5)
    sprite_index = spr_lancer_lt
else if (spintimer == 10)
    sprite_index = spr_lancer_ut
else if (spintimer == 15)
    sprite_index = spr_lancer_rt
var _temp_local_var_1 = mode
switch mode
{
    case 0:
        gml_Script_scr_fixedorbit(((obj_heart.x + 8) - (sprite_width / 2)), ((obj_heart.y + 8) - (sprite_height / 2)), ((direction - 90) + 6), 50)
        direction += 6
        break
    case 1:
        gml_Script_scr_pivotoncenter(6)
        break
    case 2:
        gml_Script_scr_rotatearoundpoint((obj_heart.x + 8), (obj_heart.y + 8), 6)
        break
    case 3:
        gml_Script_scr_orbitaroundpoint(((obj_heart.x + 8) - (sprite_width / 2)), ((obj_heart.y + 8) - (sprite_height / 2)), 6)
        break
}

if (mode != 0)
    image_angle = direction
