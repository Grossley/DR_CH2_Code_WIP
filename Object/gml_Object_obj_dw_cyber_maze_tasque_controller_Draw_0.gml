if (global.flag[367] == 1 && screenChangeTrigger == 0)
    screenChangeTrigger = 1
if (screenChangeTrigger == 1)
{
    dumbscreen.sprite_index = spr_tasqueStuckinWindow
    dumbscreen.image_speed = 0.25
    dumbread = gml_Script_instance_create(440, 140, obj_readable_room1)
    screenChangeTrigger = 2
}
if instance_exists(obj_battleback)
{
    if gml_Script_i_ex(tasquescreen1)
    {
        with (tasquescreen1)
        {
            gml_Script_scr_afterimage()
            instance_destroy()
        }
    }
    if gml_Script_i_ex(tasquescreen2)
    {
        with (tasquescreen2)
        {
            gml_Script_scr_afterimage()
            instance_destroy()
        }
    }
}
