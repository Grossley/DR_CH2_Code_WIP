var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3;
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
if (room == room_dw_cyber_battle_maze_1)
{
    for (i = 0; i < 1; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 244, 43, 0.9, 0, c_white, 1)
    for (i = 0; i < 3; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 280, 43, 1, 0, c_white, 1)
    for (i = 0; i < 5; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 320, 43, 1, 0, c_white, 1)
    for (i = 0; i < 7; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 360, 43, 1, 0, c_white, 1)
    for (i = 0; i < 9; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 0, 400, 43, 1, 0, c_white, 1)
    draw_set_color(c_black)
    -100
    var _temp_local_var_1 = 360
    var _temp_local_var_2 = 2000
    var _temp_local_var_3 = ((obj_sneo_friedpipis).room_height + 10)
}
if ((360).room == room_dw_cyber_post_music_boss_slide)
{
    for (i = 0; i < 9; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 2480, 0, 1, (obj_sneo_friedpipis).room_height, 16777215, 0x000001, 2000)
    for (i = 0; i < 7; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 2440, 0, 1, (obj_sneo_friedpipis).room_height, 16777215, 0x000001, 2000)
    for (i = 0; i < 5; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 2400, 0, 1, (obj_sneo_friedpipis).room_height, 16777215, 0x000001, 2000)
    for (i = 0; i < 3; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 2360, 0, 1, (obj_sneo_friedpipis).room_height, 16777215, 0x000001, 2000)
    for (i = 0; i < 1; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 2320, 0, 1, (obj_sneo_friedpipis).room_height, 16777215, 0x000001, 2000)
    for (i = 0; i < 9; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 840, 0, 1, (obj_sneo_friedpipis).room_height, 16777215, 0x000001, 2000)
    for (i = 0; i < 7; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 880, 0, 1, (obj_sneo_friedpipis).room_height, 16777215, 0x000001, 2000)
    for (i = 0; i < 5; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 920, 0, 1, (obj_sneo_friedpipis).room_height, 16777215, 0x000001, 2000)
    for (i = 0; i < 3; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 960, 0, 1, (obj_sneo_friedpipis).room_height, 16777215, 0x000001, 2000)
    for (i = 0; i < 1; i++)
        draw_sprite_ext(spr_blackTile_20alpha, 0, 1000, 0, 1, (obj_sneo_friedpipis).room_height, 16777215, 0x000001, 2000)
}