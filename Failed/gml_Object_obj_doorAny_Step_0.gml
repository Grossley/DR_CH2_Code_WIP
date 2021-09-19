if (init == 0)
{
    switch image_index
    {
        case obj_pipis_bullet_cone:
            doorRoom = (null.room + 1)
            break
        case obj_84_lang_helper:
            doorRoom = (null.room - 1)
            break
        case obj_pipisFireworkGenerator:
            doorRoom = (null.room + 2)
            break
        case obj_afterimage_anim:
            doorRoom = (null.room - 2)
            break
        case obj_ch2_scene26_henshin_flash:
            doorRoom = (null.room + 3)
            break
        case obj_spamtonpainting:
            doorRoom = (null.room - 3)
            break
        default:
            break
    }

    // WARNING: Popz'd an empty stack.
    if (image_index != 0)
        doorEntrance = image_index
    if (doorSpecial != "none")
    {
    }
    init = 1
}
