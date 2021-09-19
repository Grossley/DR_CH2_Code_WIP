if keyboard_check_pressed(ord("J"))
{
    with (obj_mainchara)
        gml_Script_scr_jump_to_point_sprite((x + random_range(-200, 200)), (y + random_range(-30, 30)), 10, 15, 649, 648)
}
if (con == 0 && obj_mainchara.x >= x && global.interact == 0)
{
    con = 1
    global.interact = 1
}
if (con == 1)
{
    con = 2
    cutscene_master = gml_Script_scr_cutscene_make()
    kr = 0
    kr_actor = gml_Script_instance_create(obj_mainchara.x, obj_mainchara.y, obj_actor)
    gml_Script_scr_actor_setup(kr, kr_actor, "kris")
    kr_actor.sprite_index = spr_krisr_dark
    with (obj_mainchara)
        visible = false
    su = 1
    su_actor = gml_Script_instance_create((obj_mainchara.x + 300), obj_mainchara.y, obj_actor)
    gml_Script_scr_actor_setup(su, su_actor, "susie")
    su_actor.sprite_index = spr_susiel_dark
    gml_Script_c_sel(su)
    gml_Script_c_walk_wait("l", 4, 50)
    gml_Script_c_speaker("Susie")
    gml_Script_c_walkdirect_wait(757, 193, 48)
    gml_Script_c_specialsprite(1)
    gml_Script_c_talk()
    gml_Script_c_wait(40)
    gml_Script_c_waittalk()
    gml_Script_c_sel(su)
    gml_Script_c_walk("l", 6, 15)
    gml_Script_c_delayfacing(16, "d")
    gml_Script_c_delaywalk(30, "r", 3, 15)
    gml_Script_c_delayfacing(46, "u")
    gml_Script_c_delayfacing(60, "r")
    gml_Script_c_delayfacing(75, "r")
    gml_Script_c_delaywalkdirect(95, 757, 193, 20)
    gml_Script_c_delaycmd(116, "sprite", 995)
    gml_Script_c_delaycmd(116, "soundplay", 185)
    gml_Script_c_sel(kr)
    gml_Script_c_walk("l", 3, 15)
    gml_Script_c_wait(15)
    gml_Script_c_walk_wait("r", 3, 15)
    gml_Script_c_walk_wait("l", 3, 15)
    gml_Script_c_facing("u")
    gml_Script_c_wait(15)
    gml_Script_c_facing("d")
    gml_Script_c_wait(15)
    gml_Script_c_facing("l")
    gml_Script_c_wait(75)
    gml_Script_c_talk_wait()
    gml_Script_c_sel(su)
    gml_Script_c_sprite(995)
    gml_Script_c_shake()
    gml_Script_c_soundplay(64)
    gml_Script_c_wait(30)
    gml_Script_c_facing("l")
    gml_Script_c_wait(10)
    gml_Script_c_facing("r")
    gml_Script_c_wait(10)
    gml_Script_c_facing("d")
    gml_Script_c_wait(10)
    gml_Script_c_facing("l")
    gml_Script_c_wait(30)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_talk_wait()
    gml_Script_c_autowalk(0)
    gml_Script_c_sprite(1446)
    gml_Script_c_soundplay(174)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_speaker("susie")
    gml_Script_c_talk()
    gml_Script_c_waittalk()
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("r")
    gml_Script_c_wait(30)
    gml_Script_c_walk("r", 2, 5)
    gml_Script_c_wait(30)
    gml_Script_c_talk()
    gml_Script_c_waittalk()
    gml_Script_c_walk("r", 8, 90)
    gml_Script_c_pannable(1)
    gml_Script_c_panspeed(4, 0, 30)
    gml_Script_c_wait(60)
    gml_Script_c_panobj(kr_actor, 15)
    gml_Script_c_wait(15)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("d")
    gml_Script_c_actortokris()
    gml_Script_c_pannable(0)
    gml_Script_c_terminatekillactors()
}
if (con == 2)
{
    if (!instance_exists(obj_cutscene_master))
    {
        con = 3
        global.interact = 0
    }
}
