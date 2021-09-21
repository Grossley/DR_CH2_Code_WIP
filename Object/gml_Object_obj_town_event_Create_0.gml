choicetimer = 0
flush = 0
con = 0
if (room == room_town_mid)
{
    if (global.chapter == 1)
    {
        if (global.flag[271] == 0)
        {
            bnpc = gml_Script_instance_create(x, y, obj_npc_room_animated)
            bnpc.sprite_index = spr_npc_icemascot1
        }
        else
        {
            bnpc = gml_Script_instance_create((x + 7), (y + 4), obj_npc_room)
            bnpc.sprite_index = spr_npc_burgerpants
        }
    }
    else if (global.chapter == 2)
    {
        var snail_guy = gml_Script_instance_create(170, 65, obj_npc_room)
        snail_guy.sprite_index = spr_npc_snailcar
        var donut_guy = gml_Script_instance_create(91, 65, obj_npc_room)
        donut_guy.sprite_index = spr_npc_donutcar
        var scarflady = gml_Script_instance_create(1155, 85, obj_npc_room)
        scarflady.sprite_index = spr_npc_scarflady
        var conbini = gml_Script_scr_marker_animated(940, -50, 2963, 0.05)
        conbini.depth = 980000
    }
}
if (room == room_town_south)
{
    policewindow = gml_Script_scr_marker(292, 57, spr_policewindow)
    with (policewindow)
        depth = 940000
}
if (room == room_graveyard)
{
    overlay = gml_Script_instance_create(0, 0, obj_backgrounder_sprite)
    with (obj_mainchara)
        bg = 1
    with (overlay)
    {
        image_alpha = 0.4
        ss = 0.1
        sprite_index = spr_graveyard_overlay
        depth = 1000
    }
}
if (room == room_town_south)
{
    if (global.chapter == 2 && global.plot >= 15 && global.plot < 200)
    {
        var cardowna = gml_Script_instance_create(847, 51, obj_npc_room)
        cardowna.sprite_index = spr_lw_car_gray_down
        var cardownb = gml_Script_instance_create(842, 230, obj_npc_room)
        cardownb.sprite_index = spr_lw_car_gray_down
        var cardownc = gml_Script_instance_create(667, 147, obj_npc_room)
        cardownc.sprite_index = spr_lw_car_gray_down
        var carrighta = gml_Script_instance_create(815, 4, obj_npc_room)
        carrighta.sprite_index = spr_lw_car_gray_right
        var carrightb = gml_Script_instance_create(815, 196, obj_npc_room)
        carrightb.sprite_index = spr_lw_car_gray_right
        var carrightc = gml_Script_instance_create(593, 130, obj_npc_room)
        carrightc.sprite_index = spr_lw_car_gray_right
        var carlefta = gml_Script_instance_create(812, 100, obj_npc_room)
        carlefta.sprite_index = spr_lw_car_gray_left
        var carleftb = gml_Script_instance_create(593, 160, obj_npc_room)
        carleftb.sprite_index = spr_lw_car_gray_left
        var carupa = gml_Script_instance_create(815, 38, obj_npc_room)
        carupa.sprite_index = spr_lw_car_gray_up
        var carupb = gml_Script_instance_create(707, 137, obj_npc_room)
        carupb.sprite_index = spr_lw_car_gray_up
        var carupc = gml_Script_instance_create(840, -50, obj_npc_room)
        carupc.sprite_index = spr_lw_car_gray_up
        var carupd = gml_Script_instance_create(548, 138, obj_npc_room)
        carupd.sprite_index = spr_lw_car_gray_up
        var carsnail = gml_Script_instance_create(832, 130, obj_npc_room)
        carsnail.sprite_index = spr_npc_snailcar
        var cardonut = gml_Script_instance_create(750, 130, obj_npc_room)
        cardonut.sprite_index = spr_npc_donutcar
        var undyne = gml_Script_instance_create(910, 57, obj_npc_room_animated)
        undyne.sprite_index = spr_undyne_benchpress
    }
}
