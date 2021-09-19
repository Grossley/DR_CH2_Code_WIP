var lay_id, i, _temp_local_var_3, _temp_local_var_6;
con = -1
customcon = 0
specialDraw = 0
glowvalue = 0
skipbattle = 0
drawx = 0
extra_con = 0
if (!gml_Script_snd_is_playing(global.currentsong[1]))
{
    global.currentsong[0] = gml_Script_snd_init("wind_highplace.ogg")
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
}
if (global.chapter != 2 || global.plot >= 170)
{
    if (global.plot == 170 && gml_Script_scr_sideb_get_phase() < 2)
        gml_Script_instance_create(0, 0, obj_ch2_scene27)
    else
    {
        queen_npc = gml_Script_instance_create(2030, 170, obj_npc_sign)
        queen_npc.sprite_index = spr_queen_walk_down
        queen_npc.image_speed = 0
        var _temp_local_var_3 = queen_npc
        gml_Script_scr_depth()
    }
    instance_destroy()
}
else
{
    queenhand = (gml_Script_scr_sideb_get_phase() < 2 ? gml_Script_scr_dark_marker(2060, 85, 270) : gml_Script_scr_dark_marker(2060, 85, 266))
    var _temp_local_var_6 = queenhand
    depth = 1000200
}
