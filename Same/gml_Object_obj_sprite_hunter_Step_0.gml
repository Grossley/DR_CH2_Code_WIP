if (scr_debug() && keyboard_check_pressed(vk_f11) && spriteID != -4)
{
    otherfound = 0
    scr_debug_print((("searching for objects that use " + string(sprite_get_name(spriteID))) + ":"))
    with (all)
    {
        if (sprite_index == other.spriteID)
        {
            scr_debug_print(object_get_name(object_index))
            other.otherfound = 1
        }
    }
    if (!other.otherfound)
        scr_debug_print("didn't find anything...?")
}
