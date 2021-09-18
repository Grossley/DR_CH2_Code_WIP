var _temp_local_var_1, _temp_local_var_2;
if (listlength == 0)
    listlength = cursor.memory.xpos
var startpoint = ((cursor.followindex / 5) * 5)
i = startpoint
while (i < min((cursor.followindex + 60), listlength))
{
    var alpha = (1 - ((i - cursor.followindex) / 60))
    draw_sprite_ext(sprite_index, image_index, xpos[i], cursor.memory, ypos[i], cursor.memory, 1, 0x000001, 0)
    i += 5
    var _temp_local_var_1 = image_blend
    var _temp_local_var_2 = alpha
}
