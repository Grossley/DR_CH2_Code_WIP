if (screencount < screenmax)
{
    var x_offset = 0
    if (global.lang == "ja")
    {
        if (screencount == 1)
            x_offset -= 12
        else if (screencount == 3)
            x_offset += 18
    }
    screen[screencount] = gml_Script_instance_create((((screenx[screencount] * 2) + gml_Script_camerax()) + x_offset), ((screeny[screencount] * 2) + gml_Script_cameray()), obj_queenscreen)
    screen[screencount].sprite_index = "spr_queenscreen"
    screen[screencount].image_index = screenimage[screencount]
    screencount++
}
alarm[5] = 2
