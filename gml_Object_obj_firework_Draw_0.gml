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

// WARNING: Popz'd an empty stack.
