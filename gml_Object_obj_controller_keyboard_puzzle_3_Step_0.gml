var _temp_local_var_3;
if (con == 0)
{
    with (obj_mainchara)
    {
        if place_meeting(x, y, obj_traffic_road_trigger)
            other.con = 1
    }
}
if (con == 1)
{
    global.interact = 1
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    con++
}
if (con == 2)
{
    con = -999
    ra
    "u"
    su
    "u"
    ra
    gml_Script_c_walkdirect(ra_actor.x, 302, 8)
    su
    gml_Script_c_walkdirect(su_actor.x, 298, 8)
    8
    ra
    gml_Script_c_walkdirect(520, 302, 30)
    su
    gml_Script_c_walkdirect(84, 298, 30)
    31
    "r"
    ra
    "l"
    4
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(id, "con", 3)
    // WARNING: Popz'd an empty stack.
}
if (con == 3 && (!cutscene_master))
{
    npcral = gml_Script_instance_create(realral.x, realral.y, obj_npc_sign)
    npcral.sprite_index = spr_ralsei_walk_left
    realral.visible = false
    npcsus = gml_Script_instance_create(realsus.x, realsus.y, obj_npc_sign)
    npcsus.sprite_index = spr_susie_walk_right_dw
    realsus.visible = false
    global.interact = 0
    con++
}
if (con == 4)
{
    triggered = 0
    with (obj_mainchara)
    {
        if place_meeting(x, y, obj_traffic_road_trigger)
            other.triggered = 1
    }
    if (global.flag[420] == 1 && triggered == 1)
    {
        // WARNING: Popz'd an empty stack.
        realral.x = npcral.x
        realral.y = npcral.y
        var _temp_local_var_3 = realral
    }
}
