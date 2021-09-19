if (suppress == 1)
{
    with (obj_queenart_mona)
    {
        if (flag != "exitblocker")
            active = false
    }
}
if (con == 0 && gml_Script_charaX() >= 460)
    con++
if (con == 1)
{
    global.interact = 1
    queen_monitor.turnon = 1
    con++
}
if (con == 2)
{
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    con = 2.1
}
if (con == 2.1)
{
    con = 3
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\E1* I See You Have: Escaped From Your Room Units/%", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_29_0")
    gml_Script_c_talk_wait()
    gml_Script_c_pannable(1)
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect(464, 230, 12)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(492, 234, 12)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(428, 240, 12)
    gml_Script_c_wait(12)
    gml_Script_c_panobj(kr_actor, 4)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("u")
    gml_Script_c_sel(su)
    gml_Script_c_facing("u")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("u")
    gml_Script_c_wait(5)
    gml_Script_c_speaker("queen")
    gml_Script_c_msgsetloc(0, "\\EC* Who Can Blame You For Wanting To See My Glorious Mansion/", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_50_0_b")
    gml_Script_c_msgnextloc("\\ED* You Won't Want To Take Your Eyes Off This Beautiful Art/", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_51_0")
    gml_Script_c_facenext("susie", 5)
    gml_Script_c_msgnextloc("\\E5* We're not here to look at your stupid pictures!/", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_53_0")
    gml_Script_c_facenext("queen", 13)
    gml_Script_c_msgnextloc("\\ED* Oh It Was Not A Recommendation/", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_55_0")
    gml_Script_c_msgnextloc("\\EN* I Was Just Warning You LMAO/%", "obj_controller_dw_mansion_fire_paintings_slash_Step_0_gml_56_0")
    gml_Script_c_talk()
    gml_Script_c_wait_box(3)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(43)
    gml_Script_c_imageindex(0)
    gml_Script_c_imagespeed(0.15)
    gml_Script_c_shakeobj()
    gml_Script_c_wait_box(6)
    gml_Script_c_halt()
    gml_Script_c_wait_talk()
    gml_Script_c_pannable(0)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 3 && (!gml_Script_i_ex(895)))
{
    queen_monitor.turnoff = 1
    con++
}
if (con == 4 && queen_monitor.turnoff == 0 && queen_monitor.con == 0)
{
    var _temp_local_var_4 = queen_monitor
    instance_destroy()
}
if (con == 5)
{
    var _temp_local_var_6 = queen_wall
    if (image_xscale > 0.1)
        image_xscale *= 0.8
    else
        instance_destroy()
}
if (con == 5.5)
{
    queen_wall = gml_Script_instance_create(480, 80, obj_marker)
    queen_wall.sprite_index = spr_room_dw_mansion_fire_paintings_fakewall_back
    queen_wall.image_xscale = 0.1
    queen_wall.image_yscale = 2
    queen_wall.depth = (obj_mainchara.depth + 80)
    con = 5.6
    timer = 0
}
if (con == 5.6)
{
    timer++
    if (timer == 5)
        gml_Script_snd_play(154)
    var _temp_local_var_7 = queen_wall
    if (image_xscale < 2)
        image_xscale *= 1.25
    else
    {
        other.con = 5.7
        other.timer = 0
        image_xscale = 2
    }
}
if (con == 5.7)
{
    timer++
    if (timer == 15)
        con = 6
}
if (con == 6)
{
    con = 7
    alarm[0] = 30
    suppress = 0
    var _temp_local_var_8 = knockout
    instance_destroy()
}
if (con == 8)
{
    con = 99
    with (obj_queenart_mona)
        active = true
}
