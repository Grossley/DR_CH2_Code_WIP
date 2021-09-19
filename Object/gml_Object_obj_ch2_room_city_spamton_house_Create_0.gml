var _temp_local_var_1;
if (global.flag[309] == 9)
{
    with (obj_queenscreen)
        instance_destroy()
    var addison_sprites = array_create(6)
    addison_sprites[0] = spr_npc_addison_blue_up
    addison_sprites[1] = spr_npc_addison_yellow_up
    addison_sprites[2] = spr_npc_addison_pink_up
    addison_sprites[3] = spr_npc_addison_orange_up
    addison_sprites[4] = spr_npc_addison_blue_up
    addison_sprites[5] = spr_npc_addison_yellow_up
    var i = 0
    while (i < array_length_1d(addison_sprites))
    {
        var npc = gml_Script_instance_create((400 + (i * 120)), 132, obj_npc_room)
        npc.sprite_index = addison_sprites[i]
        var _temp_local_var_1 = npc
        gml_Script_scr_depth()
    }
}
else
    instance_destroy()
