if (myinteract == 1 && (!gml_Script_d_ex()))
{
    myinteract = 0
    global.interact = 0
}
if gml_Script_scr_debug()
{
    if keyboard_check_pressed(vk_space)
        tasquespawn = 1
}
if (extflag == 2 && tasquespawn == 1)
{
    if (tasquecon == 0 && tasqueTrig == 0)
    {
        tasqueTrig = 1
        timer = 0
        tasquetimer = 0
        tasquecon = 2
        image_index = 1
        tasquemarker_head1 = gml_Script_scr_dark_marker((x + 4), (y + 10), 1669)
        tasquemarker1 = gml_Script_scr_dark_marker((x + 4), (y + 10), 1664)
        tasquemarker1.image_alpha = 0
        tasquemarker_head1.depth = (depth - 11)
        tasquemarker1.depth = (depth - 10)
        gml_Script_snd_play(159)
        tasquemarker1.remid = id
        with (tasquemarker1)
        {
            remjump = gml_Script_scr_jump_to_point(other.x, 610, 15, 24)
            remid.remjump = remjump
        }
        with (tasquemarker_head1)
            gml_Script_scr_jump_to_point(other.x, 610, 15, 24)
        remjump.image_alpha = 0
        with (tasquemarker1)
            gml_Script_scr_depth()
        tasquemarker_head1.depth = (tasquemarker1 - 1)
    }
    if (tasquecon == 2)
    {
        with (remjump)
            image_alpha += 0.05
        tasquetimer++
        with (tasquemarker1)
            gml_Script_scr_depth()
        tasquemarker_head1.depth = (tasquemarker1 - 1)
        if (tasquetimer >= 24)
        {
            image_index = 1
            obj_npc_tasquemanager.marker2 = gml_Script_instance_create(tasquemarker1.x, tasquemarker1.y, obj_npc_room)
            obj_npc_tasquemanager.marker2.sprite_index = spr_tasque_idle
            with (obj_npc_tasquemanager.marker2)
                gml_Script_scr_depth()
            with (tasquemarker1)
                instance_destroy()
            with (tasquemarker_head1)
                instance_destroy()
            tasquespawn = 0
            tasquecon++
            tasquetimer = 0
        }
    }
}
