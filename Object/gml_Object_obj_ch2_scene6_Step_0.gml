var lancer_npc, _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_10, _temp_local_var_11, _temp_local_var_15, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_20, _temp_local_var_25, _temp_local_var_26, _temp_local_var_30;
if (con == 0 && obj_mainchara.y >= (y - 26) && global.interact == 0)
{
    if (global.plot < 14)
    {
        con = 20
        global.interact = 1
        gml_Script_scr_speaker("ralsei")
        global.fe = 0
        gml_Script_msgsetloc(0, "\\E2* (Kris^1, I have something to show you in the CASTLE!)/%", "obj_ch2_scene6_slash_Step_0_gml_11_0")
        gml_Script_d_make()
        obj_mainchara.y = (y - 27)
    }
    if (global.plot == 15)
    {
        global.interact = 1
        con = 1
    }
}
if (con == 1)
{
    con = 5
    cutscene_master = gml_Script_scr_cutscene_make()
    with (obj_mainchara)
        visible = false
    la = 3
    la_actor = gml_Script_instance_create((obj_mainchara.x - 16), 900, obj_actor)
    gml_Script_scr_actor_setup(la, la_actor, "lancer")
    la_actor.sprite_index = spr_lancer_dt
    ro = 4
    ro_actor = gml_Script_instance_create((obj_mainchara.x - 28), 900, obj_actor)
    gml_Script_scr_actor_setup(ro, ro_actor, "rouxls")
    ro_actor.sprite_index = spr_rurus_idle
    gml_Script_c_sel(ro)
    gml_Script_c_autowalk(0)
    sw = 5
    sw_actor = gml_Script_instance_create((obj_mainchara.x - 20), 900, obj_actor)
    gml_Script_scr_actor_setup(sw, sw_actor, "starwalker")
    sw_actor.sprite_index = spr_npc_originalstarwalker
    var _temp_local_var_2 = sw_actor
    specialsprite[0] = 1209
}
if (customcon == 1 && con == 2)
{
    if (!instance_exists(obj_dialoguer))
    {
        customcon = 0
        gml_Script_c_waitcustom_end()
        con = 3
    }
    ralTimer++
    if (ralTimer == 1)
    {
        var _temp_local_var_4 = ra_actor
        gml_Script_scr_jump_in_place(10, 10)
    }
    if (ralTimer > 11)
        ralTimer = 0
}
if (customcon == 1 && con == 3)
{
    if (la_actor.visible == false)
    {
        con = 4
        lancerGlow = 3
        customcon = 0
        gml_Script_c_waitcustom_end()
    }
    kr_actor.depth = -99999999
    lancerSpin += addAmount
    moveAmount = 1
    if (lancerCard == 0)
    {
        if (lancerSpin >= 12)
        {
            totalSpins++
            lancerSpin = 0
            if (addAmount < 2.5)
                addAmount += 0.5
        }
        if (lancerSpin < 12)
            gml_Script_scr_actor_facing(la_actor, "r")
        if (lancerSpin < 9)
            gml_Script_scr_actor_facing(la_actor, "u")
        if (lancerSpin < 6)
            gml_Script_scr_actor_facing(la_actor, "l")
        if (lancerSpin < 3)
            gml_Script_scr_actor_facing(la_actor, "d")
    }
    if (lancerCard == 1)
    {
        _temp_local_var_4.y = (la_card.y + 4)
        var _temp_local_var_6 = sw_actor
        var _temp_local_var_7 = -9
        var _temp_local_var_8 = la_card
    }
    if (la_card.y > (su_actor.y + 30) && stepAway == 0)
    {
        gml_Script_scr_actor_facing(su_actor, "l")
        gml_Script_scr_actor_facing(ra_actor, "r")
    }
    if (la_card.y > (su_actor.y + 60))
    {
        gml_Script_scr_actor_facing(su_actor, "d")
        gml_Script_scr_actor_facing(ra_actor, "d")
    }
    if (la_card.y >= (kr_actor.y + 10))
    {
        moveAmount = 0
        addAmount = 0
        var _temp_local_var_10 = la_card
        visible = false
    }
    if (totalSpins > 3 && lancerGlow == 0)
    {
        shrinkValue = 1
        morphTime = 0
        growValue = 0
        cardMade = 0
        halfWidth = (la_actor.sprite_width * 0.5)
        origX = la_actor.x
        halfHeight = (la_actor.sprite_height * 0.5)
        origY = la_actor.y
        lancerGlow = 1
    }
    if (totalSpins > 18 && lancerGlow == 1)
    {
        lancerGlow = 2
        morphTime = 0
    }
}
if (customcon == 1 && con == 4)
{
    conTimer++
    if (ro_actor.visible == false)
    {
        con = 5
        customcon = 0
        lancerGlow = 6
        gml_Script_c_waitcustom_end()
    }
    kr_actor.depth = -99999999
    if (rouxlsCard == 1)
    {
        _temp_local_var_11.y = (ro_card.y + 6)
        var _temp_local_var_15 = la_card
        var _temp_local_var_16 = sw_actor
        var _temp_local_var_17 = -9
        var _temp_local_var_18 = ro_card
    }
    if (ro_card.y > (su_actor.y + 30) && stepAway == 0)
    {
        gml_Script_scr_actor_facing(su_actor, "l")
        gml_Script_scr_actor_facing(ra_actor, "r")
    }
    if (ro_card.y > (su_actor.y + 60))
    {
        gml_Script_scr_actor_facing(su_actor, "d")
        gml_Script_scr_actor_facing(ra_actor, "d")
    }
    if (ro_card.y >= (kr_actor.y + 10))
    {
        moveAmount = 0
        addAmount = 0
        var _temp_local_var_20 = ro_card
        visible = false
    }
    if (conTimer >= 5 && lancerGlow == 3)
    {
        shrinkValue = 1
        morphTime = 0
        growValue = 0
        cardMade = 0
        halfWidth = (ro_actor.sprite_width * 0.5)
        origX = ro_actor.x
        halfHeight = (ro_actor.sprite_height * 0.5)
        origY = ro_actor.y
        lancerGlow = 4
    }
    if (conTimer >= 60 && lancerGlow == 4)
    {
        lancerGlow = 5
        morphTime = 0
    }
}
if (con == 5)
{
    if (!instance_exists(obj_cutscene_master))
    {
        con = 6
        gml_Script_scr_losechar()
        gml_Script_scr_keyitemget(8)
        gml_Script_scr_keyitemget(9)
        gml_Script_scr_litemget(9)
        gml_Script_scr_getchar(2)
        global.interact = 0
        if (global.plot < 16)
            global.plot = 16
        global.facing = 0
        gml_Script_instance_create(0, 0, obj_persistentfadein)
        room_goto(room_dw_castle_area_1)
    }
}
if (con == 20 && (!gml_Script_d_ex()))
{
    con = 0
    global.interact = 0
}
if (con == 50)
{
    global.interact = 1
    con = 51
    obj_mainchara.x = 740
    obj_mainchara.y = 720
}
if (con == 51)
{
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    gml_Script_scr_getchar(2)
    gml_Script_scr_getchar(3)
    gml_Script_scr_makecaterpillar(0, 0, 2, 0)
    gml_Script_scr_makecaterpillar(0, 0, 3, 1)
    global.interact = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    global.facing = 0
    kr_actor.sprite_index = spr_krisu_dark
    kr_actor.x = obj_mainchara.x
    kr_actor.y = obj_mainchara.y
    su_actor.sprite_index = spr_susie_shock
    specialsprite[6] = su_actor
    su_actor.x = (obj_mainchara.x + 80)
    su_actor.y = obj_mainchara.y
    ra_actor.sprite_index = spr_ralsei_walk_up
    ra_actor.x = (obj_mainchara.x - 80)
    ra_actor.y = obj_mainchara.y
    la = 3
    la_actor = gml_Script_instance_create(724, 440, obj_actor)
    gml_Script_scr_actor_setup(la, la_actor, "lancer")
    la_actor.sprite_index = spr_lancer_dt
    hathy = gml_Script_scr_dark_marker(883, 605, 1573)
    var _temp_local_var_25 = hathy
    var _temp_local_var_26 = 25
    gml_Script_scr_depth()
}
if (con == 52 && (!gml_Script_i_ex(895)))
{
    var _temp_local_var_30 = hathy
    instance_destroy()
}
