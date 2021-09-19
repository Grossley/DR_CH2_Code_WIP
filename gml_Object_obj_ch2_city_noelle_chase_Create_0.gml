var _temp_local_var_1, _temp_local_var_2;
leavecon = 0
leavetimer = 0
noellemarker = obj_sneo_friedpipis
if (global.chapter != 2)
    instance_destroy()
else
{
    if (room == room_dw_city_traffic_1)
    {
        werewire_npc = gml_Script_instance_create(523, 139, obj_npc_room)
        werewire_npc.sprite_index = spr_npc_werewire
        werewire_npc.image_xscale = -2
        var _temp_local_var_2 = werewire_npc
        depth = 98000
    }
    if (werewire_npc.room == room_dw_city_roadblock)
    {
        if (global.plot < 69)
        {
            noellemarker = gml_Script_scr_dark_marker(920, 670, 723)
            noellemarker.image_speed = 0
        }
        else
            instance_destroy()
    }
}
if gml_Script_i_ex(noellemarker)
{
    var _temp_local_var_1 = noellemarker
    gml_Script_scr_depth()
}
