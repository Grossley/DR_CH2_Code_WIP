if drawblack
{
    var i = 0
    draw_set_color(merge_color(c_dkgray, c_navy, 0.3))
    draw_rectangle((gml_Script_camerax() - 80), ((gml_Script_cameray() + 360) - (gml_Script_cameray() / 40)), (gml_Script_camerax() + 720), (gml_Script_cameray() + 600), false)
    draw_set_alpha(0.3)
    for (i = 0; i < 6; i++)
    {
        draw_set_color(c_black)
        draw_rectangle((gml_Script_camerax() - 80), ((gml_Script_cameray() + 340) + (i * 20)), (gml_Script_camerax() + 720), (gml_Script_cameray() + 600), false)
    }
    draw_set_alpha(1)
}
if (room == room_dw_cyber_battle_maze_1 || room == room_dw_cyber_tasque_battle || room == room_dw_cyber_maze_queenscreen)
{
    for (i = 0; i < 1; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 244, room_scale, 0.9, 0, c_white, 1)
    for (i = 0; i < 3; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 280, room_scale, 1, 0, c_white, 1)
    for (i = 0; i < 5; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 320, room_scale, 1, 0, c_white, 1)
    for (i = 0; i < 7; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 360, room_scale, 1, 0, c_white, 1)
    for (i = 0; i < 9; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 400, room_scale, 1, 0, c_white, 1)
    draw_set_color(c_black)
    -100
    var _temp_local_var_2 = 360
    var _temp_local_var_3 = ((obj_sneo_friedpipis).room_height + 10).room_width
}
if ((360).room == room_dw_cyber_teacup_final)
{
    for (i = 0; i < 1; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 8744, room_scale, 0.9, 0, c_white, 1)
    for (i = 0; i < 3; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 8780, room_scale, 1, 0, c_white, 1)
    for (i = 0; i < 5; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 8820, room_scale, 1, 0, c_white, 1)
    for (i = 0; i < 7; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 8860, room_scale, 1, 0, c_white, 1)
    for (i = 0; i < 9; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 8900, room_scale, 1, 0, c_white, 1)
    draw_set_color(c_black)
    draw_rectangle(-100, 8860, 2000, ((obj_sneo_friedpipis).room_height + 10), ((obj_sneo_friedpipis).room_height + 10).room_width)
}
if (room == room_dw_cyber_post_music_boss_slide)
{
    i = 0
    while (i < 9)
    {
        2727
        i++
        var _temp_local_var_4 = 0
        var _temp_local_var_5 = 2480
        var _temp_local_var_6 = 0
        var _temp_local_var_7 = 1
        var _temp_local_var_8 = (obj_sneo_friedpipis).room_height
        var _temp_local_var_9 = 16777215
        var _temp_local_var_10 = 1
    }
    i = 0
    while (i < 7)
    {
        2727
        i++
        var _temp_local_var_11 = 0
        var _temp_local_var_12 = 2440
        var _temp_local_var_13 = 0
        var _temp_local_var_14 = 1
        var _temp_local_var_15 = (obj_sneo_friedpipis).room_height
        var _temp_local_var_16 = 16777215
        var _temp_local_var_17 = 1
    }
    i = 0
    while (i < 5)
    {
        2727
        i++
        var _temp_local_var_18 = 0
        var _temp_local_var_19 = 2400
        var _temp_local_var_20 = 0
        var _temp_local_var_21 = 1
        var _temp_local_var_22 = (obj_sneo_friedpipis).room_height
        var _temp_local_var_23 = 16777215
        var _temp_local_var_24 = 1
    }
    i = 0
    while (i < 3)
    {
        2727
        i++
        var _temp_local_var_25 = 0
        var _temp_local_var_26 = 2360
        var _temp_local_var_27 = 0
        var _temp_local_var_28 = 1
        var _temp_local_var_29 = (obj_sneo_friedpipis).room_height
        var _temp_local_var_30 = 16777215
        var _temp_local_var_31 = 1
    }
    i = 0
    while (i < 1)
    {
        2727
        i++
        var _temp_local_var_32 = 0
        var _temp_local_var_33 = 2320
        var _temp_local_var_34 = 0
        var _temp_local_var_35 = 1
        var _temp_local_var_36 = (obj_sneo_friedpipis).room_height
        var _temp_local_var_37 = 16777215
        var _temp_local_var_38 = 1
    }
    i = 0
    while (i < 9)
    {
        2727
        i++
        var _temp_local_var_39 = 0
        var _temp_local_var_40 = 840
        var _temp_local_var_41 = 0
        var _temp_local_var_42 = 1
        var _temp_local_var_43 = (obj_sneo_friedpipis).room_height
        var _temp_local_var_44 = 16777215
        var _temp_local_var_45 = 1
    }
    i = 0
    while (i < 7)
    {
        2727
        i++
        var _temp_local_var_46 = 0
        var _temp_local_var_47 = 880
        var _temp_local_var_48 = 0
        var _temp_local_var_49 = 1
        var _temp_local_var_50 = (obj_sneo_friedpipis).room_height
        var _temp_local_var_51 = 16777215
        var _temp_local_var_52 = 1
    }
    i = 0
    while (i < 5)
    {
        2727
        i++
        var _temp_local_var_53 = 0
        var _temp_local_var_54 = 920
        var _temp_local_var_55 = 0
        var _temp_local_var_56 = 1
        var _temp_local_var_57 = (obj_sneo_friedpipis).room_height
        var _temp_local_var_58 = 16777215
        var _temp_local_var_59 = 1
    }
    i = 0
    while (i < 3)
    {
        2727
        i++
        var _temp_local_var_60 = 0
        var _temp_local_var_61 = 960
        var _temp_local_var_62 = 0
        var _temp_local_var_63 = 1
        var _temp_local_var_64 = (obj_sneo_friedpipis).room_height
        var _temp_local_var_65 = 16777215
        var _temp_local_var_66 = 1
    }
    i = 0
    while (i < 1)
    {
        2727
        i++
        var _temp_local_var_67 = 0
        var _temp_local_var_68 = 1000
        var _temp_local_var_69 = 0
        var _temp_local_var_70 = 1
        var _temp_local_var_71 = (obj_sneo_friedpipis).room_height
        var _temp_local_var_72 = 16777215
        var _temp_local_var_73 = 1
    }
}
