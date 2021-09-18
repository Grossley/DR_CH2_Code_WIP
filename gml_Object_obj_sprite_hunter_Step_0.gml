if (122 && spriteID != -4)
{
    otherfound = 0
    (("searching for objects that use " + string(sprite_get_name(spriteID))) + ":")
    with (all)
    {
        if (sprite_index == other.spriteID)
        {
            object_index
            other.otherfound = 1
        }
    }
    if (!other.otherfound)
        "didn't find anything...?"
}
