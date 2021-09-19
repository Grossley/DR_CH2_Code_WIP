if (con == 0 && global.plot == 7)
{
    with (obj_caterpillarchara)
        instance_destroy()
    gml_Script_scr_losechar()
    con = 1
    global.interact = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = gml_Script_scr_cutscene_make()
    with (obj_mainchara)
        visible = false
    with (obj_mainchara)
        y = 780
    kr = 0
    kr_actor = gml_Script_instance_create(281, 1203, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisu_dark
    su = 1
    su_actor = gml_Script_instance_create((kr_actor.x + 40), (kr_actor.y - 10), obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susieu_dark
    var _temp_local_var_2 = su_actor
    specialsprite[0] = 999
}
if (customcon == 1 && con < 50)
{
    su_npc = gml_Script_instance_create(su_actor.x, su_actor.y, obj_npc_room)
    su_npc.sprite_index = spr_susiel_wall_eyes
    var _temp_local_var_4 = su_npc
    gml_Script_scr_depth()
}
if (con == 2)
{
    if (!instance_exists(obj_cutscene_master))
    {
        gml_Script_mus_initloop("castletown_empty.ogg")
        global.interact = 0
        global.plot = 8
        con = 10
    }
}
if (con == 10)
{
    if (obj_mainchara.y <= 200 && global.interact == 0)
    {
        obj_mainchara.y = 204
        global.facing = 0
        global.interact = 1
        gml_Script_scr_speaker("susie")
        global.fe = 0
        gml_Script_msgsetloc(0, "\\EP* Hell are you going^1? Trying to have cake without me?/%", "obj_ch2_scene4_slash_Step_0_gml_216_0")
        gml_Script_scr_anyface_next("ralsei", 2)
        gml_Script_msgnextloc("* (Kris^1! I'll show you my castle later^1, ok?)/%", "obj_ch2_scene4_slash_Step_0_gml_218_0")
        gml_Script_d_make()
        talked++
        con = 11
    }
}
if (con == 11)
{
    if (!gml_Script_d_ex())
    {
        global.interact = 0
        con = 10
    }
}
if (con >= 50)
    global.interact = 1
if (con == 50)
{
    con = 51
    alarm[4] = 10
}
if (con == 52)
{
    global.facing = 2
    var _temp_local_var_13 = susie
    visible = false
}
if (customcon == 1 && con >= 50)
{
    global.facing = 2
    gml_Script_snd_play(231)
    image_alpha = 0
    breakcon = 3
    for (i = 0; i < 60; i++)
    {
        sparkle[i] = gml_Script_scr_marker((2471 + random(((((gml_Script_cameray() - random(400)) + 15).room_width / 4).room_width / 2))), null, null)
        sparkle[i].image_speed = 0.5
        sparkle[i].hspeed = random_range(-4, 4)
        sparkle[i].friction = 0.05
        sparkle[i].gravity = (0.1 + random(0.03))
        sparkle[i].image_xscale = 2
        sparkle[i].image_yscale = 2
    }
    gml_Script_c_waitcustom_end()
    customcon = 2
}
if (con == 55 && (!instance_exists(obj_cutscene_master)))
{
    global.entrance = 24
    global.interact = 3
    global.plot = 10
    wh = gml_Script_instance_create(0, 0, obj_persistentfadein)
    wh.image_blend = c_white
    room_goto(room_dw_castle_area_2_transformed)
}
