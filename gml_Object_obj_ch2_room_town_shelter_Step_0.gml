var _temp_local_var_1, _temp_local_var_2, _temp_local_var_9, _temp_local_var_11, _temp_local_var_15;
if (con > -1)
{
    if snowy
        var _temp_local_var_1 = snowy
    if monsterkid
        var _temp_local_var_2 = monsterkid
}
if (obj_mainchara.y >= 1130 && obj_mainchara.x > obj_mainchara && obj_mainchara.x < obj_darkfountain && con == -1)
{
    con = 1
    global.interact = 1
    snowy.visible = false
    monsterkid.visible = false
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    susiegox = ((obj_mainchara.x.room_width / 2) ? (obj_mainchara.x - 30) : (obj_mainchara.x + 30))
    kr
    var facing = ((obj_mainchara.x.room_width / 2) ? "l" : "r")
    facing
    sux = su_actor.x
    suy = su_actor.y
    su
    facing
    sn = 2
    sn_actor = gml_Script_instance_create(135, 1130, obj_actor)
    gml_Script_scr_actor_setup(sn, sn_actor, "snowy")
    sn_actor.sprite_index = spr_snowy_ut
    sn
    0
    // WARNING: Popz'd an empty stack.
    mk = 3
    mk_actor = gml_Script_instance_create(170, 1130, obj_actor)
    gml_Script_scr_actor_setup(mk, mk_actor, "monster_kid")
    mk_actor.sprite_index = spr_mkid_ut
    mk
    0
    // WARNING: Popz'd an empty stack.
}
if (con == 1)
{
    con = 2
    mk
    0.25
    "no_name"
    gml_Script_c_msgsetloc(0, "* You think it's true? You really think there's..../%", "obj_ch2_room_town_shelter_slash_Step_0_gml_61_0")
    // WARNING: Popz'd an empty stack.
    0
    sn
    0.25
    "no_name"
    gml_Script_c_msgsetloc(0, "* What^1, you chicken? Haha^1, you gotta beak and wings? Like a chicken?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_68_0")
    // WARNING: Popz'd an empty stack.
    0
    mk
    0.25
    "no_name"
    gml_Script_c_msgsetloc(0, "* ..^1. no..^1. just.../%", "obj_ch2_room_town_shelter_slash_Step_0_gml_75_0")
    // WARNING: Popz'd an empty stack.
    0
    sn
    0.25
    "no_name"
    gml_Script_c_msgsetloc(0, "* I ain't afraid^1! Only kids believe that stuff!/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_82_0")
    // WARNING: Popz'd an empty stack.
    0
    mk
    0.25
    "no_name"
    gml_Script_c_msgsetloc(0, "* ..^1. b-but Kris.../%", "obj_ch2_room_town_shelter_slash_Step_0_gml_89_0")
    // WARNING: Popz'd an empty stack.
    0
    sn
    0.25
    "no_name"
    gml_Script_c_msgsetloc(0, "* You gonna be a weenie like Kris!?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_96_0")
    // WARNING: Popz'd an empty stack.
    0
    su
    "susieunhappy"
    if (sux < 160)
    {
        if (sux > 50 && suy < 1116)
        {
            gml_Script_c_walkdirect_wait(33, suy, 16)
            sux = 33
        }
    }
    else if (sux < 260 && suy < 1116)
    {
        gml_Script_c_walkdirect_wait(265, suy, 16)
        sux = 265
    }
    if (suy < 1148)
        gml_Script_c_walkdirect_wait(sux, 1152, 16)
    gml_Script_c_walkdirect_wait(152, 1152, 45)
    gml_Script_c_walkdirect_wait(152, 1148, 25)
    "u"
    30
    "susie"
    gml_Script_c_msgsetloc(0, "\\EV* You wanna say that again?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_109_0")
    // WARNING: Popz'd an empty stack.
    sn
    952
    // WARNING: Popz'd an empty stack.
    mk
    957
    // WARNING: Popz'd an empty stack.
    60
    sn
    0.25
    "no_name"
    gml_Script_c_msgsetloc(0, "* Susie. Didn't see ya there./%", "obj_ch2_room_town_shelter_slash_Step_0_gml_126_0")
    // WARNING: Popz'd an empty stack.
    0
    su
    0
    1
    gml_Script_c_walk_wait("u", 0.25, 25)
    0
    "susie"
    gml_Script_c_msgsetloc(0, "\\EW* Wow^1, really something SCARY in there^1, huh?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_138_0")
    // WARNING: Popz'd an empty stack.
    sn
    0.25
    "no_name"
    gml_Script_c_msgsetloc(0, "* Uhh--/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_145_0")
    // WARNING: Popz'd an empty stack.
    0
    su
    0
    3
    gml_Script_c_walk_wait("u", 0.25, 25)
    2
    "susie"
    gml_Script_c_msgsetloc(0, "\\EW* Sounds to me like you'd better worry.../%", "obj_ch2_room_town_shelter_slash_Step_0_gml_157_0")
    // WARNING: Popz'd an empty stack.
    0
    1
    gml_Script_c_walk_wait("u", 0.25, 25)
    0
    sn
    0
    gml_Script_c_walk("l", 6, 6)
    mk
    0
    gml_Script_c_walk("r", 4, 6)
    su
    0
    854
    0.3
    10
    59
    // WARNING: Popz'd an empty stack.
    5
    4
    0
    "susie"
    gml_Script_c_msgsetloc(0, "\\EX* About what's OUT HERE^1, first./%", "obj_ch2_room_town_shelter_slash_Step_0_gml_188_0")
    // WARNING: Popz'd an empty stack.
    "no_name"
    gml_Script_c_msgsetloc(0, "* AHHHHHHHHHHH!!!!!!!!/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_192_0")
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 2 && customcon == 1)
{
    con = 5
    var _temp_local_var_9 = sn_actor
    path_start(path_snowy, 8, path_action_stop, 0)
}
if (con == 5)
{
    if gml_Script_i_ex(sn_actor)
    {
        var _temp_local_var_11 = sn_actor
        if (direction >= 136 && direction <= 225)
            sprite_index = spr_snowy_ut_l
        if (direction >= 46 && direction <= 135)
            sprite_index = spr_snowy_ut
        if (direction >= 306 || direction <= 45)
            sprite_index = spr_snowy_ut_r
        if (y <= (gml_Script_cameray() - 20))
            instance_destroy()
    }
    if gml_Script_i_ex(mk_actor)
    {
        var _temp_local_var_15 = mk_actor
        if (direction >= 136 && direction <= 225)
            sprite_index = spr_mkid_ut_l
        if (direction >= 46 && direction <= 135)
            sprite_index = spr_mkid_ut
        if (direction >= 306 || direction <= 45)
            sprite_index = spr_mkid_ut_r
        if (y <= (gml_Script_cameray() - 20))
            instance_destroy()
    }
    if ((!gml_Script_i_ex(sn_actor)) && (!gml_Script_i_ex(mk_actor)) && (!gml_Script_d_ex()))
    {
        con = 6
        customcon = 0
        gml_Script_c_waitcustom_end()
    }
}
if (con == 6)
{
    con = 50
    gml_Script_c_wait(30)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("susieunhappy")
    gml_Script_c_facing("d")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\EV* .../", "obj_ch2_room_town_shelter_slash_Step_0_gml_278_0")
    gml_Script_c_msgnextloc("\\E1* You OK^1, Kris?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_279_0")
    gml_Script_c_talk_wait()
    gml_Script_c_facing("u")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E0* ...What's...the deal with this place?/%", "obj_ch2_room_town_shelter_slash_Step_0_gml_284_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(60)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E2* Well^1, you don't gotta talk about it./%", "obj_ch2_room_town_shelter_slash_Step_0_gml_293_0")
    gml_Script_c_talk_wait()
    gml_Script_c_walkdirect_wait(susiegox, (obj_mainchara.y - 6), 30)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (con == 50 && (!gml_Script_i_ex(895)))
{
    global.interact = 0
    global.facing = 0
    global.flag[315] = 1
    con = 0
}
