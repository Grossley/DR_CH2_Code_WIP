var _temp_local_var_2, _temp_local_var_7;
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
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* Wait, is this another puzzle? You do it./%", "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_18_0")
    // WARNING: Popz'd an empty stack.
    ra
    gml_Script_c_walkdirect(150, ra_actor.y, 8)
    su
    gml_Script_c_walkdirect(86, su_actor.y, 6)
    8
    ra
    gml_Script_c_walkdirect(150, 348, 12)
    su
    gml_Script_c_walkdirect(86, 344, 12)
    13
    "u"
    ra
    "u"
    4
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(id, "con", 3)
    // WARNING: Popz'd an empty stack.
}
if (con == 3 && (!cutscene_master))
{
    npcral = gml_Script_instance_create(realral.x, realral.y, obj_npc_sign)
    npcral.sprite_index = spr_ralsei_walk_up
    realral.visible = false
    npcsus = gml_Script_instance_create(realsus.x, realsus.y, obj_npc_sign)
    npcsus.sprite_index = spr_susie_walk_up_dw
    realsus.visible = false
    global.interact = 0
    con++
}
if (con == 4)
{
    if (global.flag[333] == 1)
    {
        with (obj_mainchara)
        {
            if place_meeting(x, y, obj_traffic_road_trigger)
                other.con = 5
        }
    }
}
if (con == 5)
{
    // WARNING: Popz'd an empty stack.
    realral.x = npcral.x
    realral.y = npcral.y
    var _temp_local_var_2 = realral
}
if (con == 4)
{
    failcount = obj_ch2_keyboardpuzzle_controller.failcount
    if (hintcon == 0 && global.interact == 0)
    {
        if (failcount == 8)
        {
            global.interact = 1
            hintcon++
            timer = 0
        }
    }
    if (hintcon == 1)
    {
        timer++
        if (timer == 15)
        {
            "ralsei"
            gml_Script_msgsetloc(0, "\\EQ* Um..^1. Kris?/", "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_109_0")
            gml_Script_msgnextloc("\\EJ* Maybe you can press the same key more than once?/%", "obj_controller_keyboard_puzzle_2_slash_Step_0_gml_110_0")
            d = 
            d.side = 0
            hintcon++
        }
    }
    if (hintcon == 2)
    {
    }
    else
        var _temp_local_var_7 = 0
    global.interact = 0
    global.facing = 0
    hintcon++
}
