if (global.flag[335] == 0)
{
    global.interact = 1
    shovel_start = 1
    var pile = gml_Script_scr_dark_marker((x - 10), (y + 85), 2848)
    pile.depth = (depth - 10)
    var pile_dark = gml_Script_scr_dark_marker(x, y, 2861)
    pile_dark.depth = (depth - 5)
    var pile_collider = gml_Script_instance_create(pile.x, (pile.y + 10), obj_soliddark)
    pile_collider.image_xscale = 3
    sprite_index = spr_dw_mansion_door_open
    image_xscale = 2
    image_yscale = 2
    gml_Script_snd_play(61)
    gml_Script_instance_create(0, 0, obj_shake)
    if gml_Script_i_ex(80)
    {
        with (obj_mainchara)
            y += 20
    }
}
else
    event_inherited()
