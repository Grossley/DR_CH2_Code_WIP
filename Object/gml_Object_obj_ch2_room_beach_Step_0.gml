if canrest
{
    if (obj_mainchara.x > x && (!keyboard_check_pressed(vk_anykey)) && (!gml_Script_scr_gamepad_check_any()))
        timer++
    else if (timer > 0)
        timer = 0
    if (timer >= 300 && con == -1)
    {
        con = 1
        timer = 0
    }
    if (con == 1)
    {
        con = 2
        global.interact = 1
        global.facing = 1
        cutscene_master = gml_Script_scr_cutscene_make()
        gml_Script_scr_maincharacters_actors()
        gml_Script_mus_volume(global.currentsong[1], 0, 60)
    }
    if (con == 2)
    {
        con = 3
        oceansong[0] = gml_Script_snd_init("ocean.ogg")
        oceansong[1] = gml_Script_mus_loop(oceansong[0])
        gml_Script_mus_volume(oceansong[1], 0, 0)
        gml_Script_mus_volume(oceansong[1], 0.5, 150)
        gml_Script_c_sel(su)
        gml_Script_c_walkdirect(362, 88, 30)
        gml_Script_c_delayfacing(31, "r")
        gml_Script_c_sel(kr)
        gml_Script_c_walkdirect(364, 122, 30)
        gml_Script_c_delayfacing(31, "r")
        gml_Script_c_pannable(1)
        gml_Script_c_panspeed(1, 0, 40)
        gml_Script_c_wait(32)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(876)
        gml_Script_c_imagespeed(0.1)
        gml_Script_c_sel(su)
        gml_Script_c_wait(5)
        gml_Script_c_autowalk(0)
        gml_Script_c_sprite(854)
        gml_Script_c_imagespeed(0.1)
        gml_Script_c_wait(15)
        gml_Script_c_waitcustom()
    }
    if (con == 3 && customcon == 1 && (keyboard_check_pressed(vk_anykey) || gml_Script_scr_gamepad_check_any()))
    {
        con = 4
        customcon = 0
        alarm[0] = 30
        gml_Script_c_waitcustom_end()
        gml_Script_c_panobj(kr_actor, 60)
        gml_Script_mus_volume(oceansong[1], 0, 90)
        gml_Script_mus_volume(global.currentsong[1], 1, 90)
        gml_Script_c_wait(65)
        gml_Script_c_sel(kr)
        gml_Script_c_autowalk(1)
        gml_Script_c_sprite(657)
        gml_Script_c_sel(su)
        gml_Script_c_autowalk(1)
        gml_Script_c_sprite(851)
        gml_Script_c_actortokris()
        gml_Script_c_actortocaterpillar()
        gml_Script_c_terminatekillactors()
    }
    if (con == 5 && (!gml_Script_i_ex(895)))
    {
        con = -1
        gml_Script_snd_free(oceansong[1])
        obj_mainchara.cutscene = false
        global.interact = 0
        global.facing = 0
    }
}
