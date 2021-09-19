if (listlength == 0)
    listlength = array_length_1d(cursor.memory.xpos)
var startpoint = (ceil((cursor.followindex / 5)) * 5)
i = startpoint
while (i < min((cursor.followindex + 60), listlength))
{
    var alpha = (1 - ((i - cursor.followindex) / 60))
    draw_sprite_ext(sprite_index, image_index, xpos[i], ypos[i], 1, 0x000001, 0, image_blend, alpha)
    i += 5
}
