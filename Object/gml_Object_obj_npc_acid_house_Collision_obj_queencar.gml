if (!bumped)
{
    bumped = 1
    gml_Script_snd_play(39)
    house_sprite.image_index = 1
    obj_tm_quizletter.flag[global.flag[obj_tm_quizletter]] = (global.flag[obj_tm_quizletter] + 1)
    global
    gml_Script_debug_message((("global.flag[458]:" + string(global.flag[458])) + "/7"))
    var _temp_local_var_1 = house_sprite
    var housecolor = 16777215
    if (image_index == 0)
        housecolor = 255
    if (image_index == 1)
        housecolor = 16711680
    gml_Script_scr_fx_housesquare((x + (sprite_width / 2)), (y + (sprite_height / 2)), housecolor)
}
