var _temp_local_var_1 = colorProfile
switch colorProfile
{
    case 2:
        hue += 3
        hue %= 255
        image_blend = make_colour_hsv(hue, 255, 255)
        break
    default:
        break
}

draw_self()
