if (con == 5 && (!instance_exists(obj_writer)))
{
    con = 7
    gml_Script_scr_speaker("sneo")
    gml_Script_msgsetloc(0, "* NOT!!!/%", "obj_ch2_fountain_sideb_slash_Step_0_gml_7_0")
    var d = gml_Script_d_make()
    d.side = 1
}
if (con == 7 && (!gml_Script_d_ex()))
{
    con = 8
    obj_mainchara.x = obj_fountainkris_ch2_sideb.x
    obj_mainchara.y = obj_fountainkris_ch2_sideb.y
    sneo = gml_Script_instance_create(255, (gml_Script_cameray() - 300), obj_spamton_neo_enemy)
    sneo.myself = 1
    sneo.facing = 1
    sneo.gravity = (shortened ? 0 : 4)
    sneo.shadow_amount = (shortened ? 0 : 1)
    sneo.partmode = 30
}
if (con == 8)
{
    if (sneo != noone)
    {
        if (sneo.y >= (obj_fountainkris_ch2_sideb.y - 100))
        {
            con = 9
            alarm[4] = 60
            gml_Script_snd_play(170)
            gml_Script_snd_play(166)
            with (sneo)
            {
                gravity = 0
                vspeed = 0
            }
            draw_kris = 0
            with (obj_mainchara)
            {
                visible = true
                fun = true
                sprite_index = spr_kris_dw_landed
                image_speed = 0
                hspeed = -18
                friction = 0.6
            }
        }
    }
}
if (con == 10)
{
    with (sneo)
        gravity = -2
    if (sneo.y <= (gml_Script_cameray() - 200))
    {
        con = 11
        sneo.gravity = 0
        sneo.x = 460
        sneo.y = (gml_Script_cameray() - 200)
    }
}
if (con == 11)
{
    sneo.gravity = 4
    if (sneo.y >= (obj_fountainkris_ch2_sideb.y - 100))
    {
        con = 12
        alarm[4] = 60
        with (sneo)
        {
            gravity = 0
            vspeed = 0
        }
        sneo.partmode = 33
        gml_Script_scr_lerpvar_instance(sneo, "shadow_amount", 1, 0, 30)
    }
}
if (con == 13)
{
    con = 14
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("sneo")
    gml_Script_c_msgside("top")
    gml_Script_c_speaker("sneo")
    gml_Script_c_msgsetloc(0, "* HOLY [[Cungadero]] DO I FEEL GOOD .../%", "obj_ch2_fountain_sideb_slash_Step_0_gml_112_0")
    gml_Script_c_talk_wait()
    gml_Script_c_wait(60)
    gml_Script_c_actortokris()
    gml_Script_c_terminatekillactors()
}
