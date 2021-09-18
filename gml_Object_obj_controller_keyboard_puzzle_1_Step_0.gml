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
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E2* Kris, I think you should handle this puzzle!/%", "obj_controller_keyboard_puzzle_1_slash_Step_0_gml_18_0")
    // WARNING: Popz'd an empty stack.
    ra
    gml_Script_c_walkdirect(50, 114, 12)
    su
    gml_Script_c_walkdirect(102, 110, 12)
    13
    "d"
    ra
    "d"
    4
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(id, "con", 3)
    // WARNING: Popz'd an empty stack.
}
if (con == 3 && (!cutscene_master))
{
    npcral = gml_Script_instance_create(realral.x, realral.y, obj_npc_sign)
    npcral.sprite_index = spr_ralsei_walk_down
    realral.visible = false
    npcsus = gml_Script_instance_create(realsus.x, realsus.y, obj_npc_sign)
    npcsus.sprite_index = spr_susie_walk_down_dw
    realsus.visible = false
    global.interact = 0
    con++
}
if (con == 4)
{
    if (global.flag[390] == 1 && obj_mainchara.x <= 160)
    {
        realral.x = npcral.x
        realral.y = npcral.y
        var _temp_local_var_3 = realral
    }
}
