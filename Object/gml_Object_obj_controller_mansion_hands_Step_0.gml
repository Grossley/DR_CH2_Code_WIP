var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_5, _temp_local_var_8, _temp_local_var_10, _temp_local_var_13, _temp_local_var_14;
if (con == 1 && (!gml_Script_d_ex()))
{
    global.interact = 1
    hand2 = gml_Script_instance_create(498, 258, obj_marker)
    hand2.sprite_index = spr_dw_mansion_hands_cutscene
    hand2.image_xscale = -2
    hand2.image_yscale = 2
    hand2.depth = (depth - 30)
    hand2.image_index = 1
    hand2.image_speed = 0
    coverup = gml_Script_instance_create(416, 246, obj_marker)
    coverup.sprite_index = spr_mansion_hands_coverup
    coverup.image_xscale = 2
    coverup.image_yscale = 2
    coverup.depth = (hand2.depth - 20)
    bubbles2 = gml_Script_instance_create(420, 238, obj_marker)
    bubbles2.sprite_index = spr_mansion_hands_bubbles
    bubbles2.image_speed = 0.25
    bubbles2.image_xscale = 2
    bubbles2.image_yscale = 2
    bubbles2.depth = (hand2.depth - 100)
    con++
}
if (con == 2)
{
    if (hand2.y > 64)
        hand2.y -= 2
    else
    {
        hand2.y = 64
        timer = 0
        con++
    }
}
if (con == 3)
{
    timer++
    if (timer == 1)
    {
        var _temp_local_var_2 = coverup
        instance_destroy()
    }
}
if (con == 4)
{
    timer++
    if (timer == 5)
        con++
}
if (con == 5)
{
    var _temp_local_var_3 = hand1
    gml_Script_scr_move_to_point_over_time((x - 64), y, 14)
}
if (con == 6)
{
    timer++
    if (timer == 15)
        con++
}
if (con == 7)
{
    var _temp_local_var_5 = hand1
    gml_Script_scr_move_to_point_over_time((x + 164), y, 8)
}
if (con == 8)
{
    timer++
    if (timer < 8 && (timer % 2) == 0)
    {
        var _temp_local_var_8 = hand1
        gml_Script_scr_afterimagefast()
    }
    if (timer == 8)
    {
        gml_Script_snd_play(216)
        gml_Script_instance_create(x, y, obj_shake)
    }
    if (timer == 9)
    {
        var _temp_local_var_10 = hand1
        gml_Script_scr_move_to_point_over_time((x - 100), y, 16)
    }
}
if (con == 9)
{
    timer++
    if (timer == 45)
    {
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetloc(0, "* (Looks like the hand is out of the way now...)/%", "obj_controller_mansion_hands_slash_Step_0_gml_115_0")
        gml_Script_d_make()
        con++
        timer = 0
    }
}
if (con == 10 && (!gml_Script_d_ex()))
{
    if (timer == 0)
        gml_Script_scr_camerareset(12)
    timer++
    if (timer == 13)
    {
        global.interact = 0
        global.facing = 0
        gml_Script_scr_tempsave()
        con++
    }
}
if (con > 3)
{
    if gml_Script_i_ex(bubbles2)
    {
        var _temp_local_var_13 = bubbles2
        x = (other.hand2.x - 82)
    }
}
if gml_Script_i_ex(bubbles1)
{
    var _temp_local_var_14 = bubbles1
    x = (other.hand1.x - 82)
}
