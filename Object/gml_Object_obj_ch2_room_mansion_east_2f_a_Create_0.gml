con = 0
key = -1
dooropen = self
keyfloat = 0
floattimer = 0
keysparkle = 0
sparkletimer = 0
fadeplatters = 0
keyXPos = 0
keyYPos = 0
make_forcefield = 0
forcefield = -4
if (global.chapter != 2)
    instance_destroy()
else
{
    if (global.flag[344] == 1)
    {
        dooropen = gml_Script_scr_dark_marker(180, 40, 2860)
        dooropen.depth = 899999
    }
    else
    {
        doorlocked = gml_Script_scr_marker(180, 40, 2862)
        doorlocked.depth = 899999
        monty = gml_Script_instance_create(170, 240, obj_saucer_monty)
        exitcollider = gml_Script_instance_create(180, 80, obj_solidblock)
        exitcollider.image_xscale = 4
        exitcollider.image_yscale = 4
    }
    for (var i = 0; i < 3; i++)
    {
        table[i] = gml_Script_instance_create((870 + (321 * i)), 200, obj_saucer)
        table[i].image_speed = 0
        with (table[i])
        {
            mode = 1
            if (i == 0)
                contentsprite = 2309
            if (i == 1)
                contentsprite = 1799
            if (i == 2)
            {
                if (global.flag[357] == 1)
                    contentsprite = 2486
                else
                    contentsprite = 1797
            }
            gml_Script_scr_depth()
        }
        var table_collider = gml_Script_instance_create(table[i].x, (table[i].y + 40), obj_soliddark)
        table_collider.image_xscale = 2.5
    }
    swatch_npc = gml_Script_instance_create(1760, 135, obj_npc_butler)
    with (swatch_npc)
        gml_Script_scr_depth()
    nubert_npc = gml_Script_instance_create(805, 225, obj_npc_room)
    nubert_npc.sprite_index = spr_npc_nubert_aristocrat
    with (nubert_npc)
        gml_Script_scr_depth()
    mouse_npc = gml_Script_instance_create(975, 220, obj_npc_room)
    mouse_npc.sprite_index = spr_npc_mousemillian
    with (mouse_npc)
        gml_Script_scr_depth()
    yesman_npc = gml_Script_instance_create(1120, 185, obj_npc_room)
    yesman_npc.sprite_index = spr_npc_yesman
    with (yesman_npc)
        gml_Script_scr_depth()
    with (yesman_npc)
        gml_Script_scr_flip("x")
    yeswoman_npc = gml_Script_instance_create(1300, 185, obj_npc_room)
    yeswoman_npc.sprite_index = spr_npc_yesman_ponytail
    with (yeswoman_npc)
        gml_Script_scr_depth()
    if (global.flag[357] == 1)
    {
        hacker_npc = gml_Script_instance_create(1625, 180, obj_npc_room)
        hacker_npc.sprite_index = spr_npc_cursor_wig
        with (hacker_npc)
            gml_Script_scr_depth()
    }
    wig_npc = gml_Script_instance_create(1430, 205, obj_npc_room)
    wig_npc.sprite_index = spr_npc_wig_robot
    with (wig_npc)
        gml_Script_scr_depth()
}
