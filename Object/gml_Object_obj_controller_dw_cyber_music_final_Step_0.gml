timer++
if gml_Script_i_ex(movingwall1)
    movingwall1.x = obj_MovingPlat_dw_cyber_music_final.x
if (state == 0 && obj_mainchara.x >= 480)
{
    timer = 0
    with (obj_fakeWalkway_dw_cyber_music_final)
        instance_destroy()
    gml_Script_snd_play(61)
    gml_Script_instance_create(0, 0, obj_shake)
    movingwall1 = gml_Script_instance_create(obj_MovingPlat_dw_cyber_music_final.x, obj_MovingPlat_dw_cyber_music_final.y, obj_invisMovingWall_dw_cyber_music_final)
    movingwall1.image_xscale = 2
    movingwall1.image_yscale = 2
    movingwall1.image_alpha = 0
    global.flag[7] = 1
    global.interact = 1
    state = 1
}
if (state == 1)
{
    with (obj_caterpillarchara)
    {
        if (image_alpha > 0.1)
            image_alpha *= 0.6
        else
            image_alpha = 0
    }
    if (timer >= 10)
        state = 2
}
if (state == 2)
{
    obj_mainchara.x += 16
    obj_MovingPlat_dw_cyber_music_final.x += 16
    if (obj_MovingPlat_dw_cyber_music_final.x >= 640)
    {
        timer = 0
        bulletarea = gml_Script_instance_create(648, 200, obj_overworld_bulletarea)
        bulletarea.image_xscale = 7
        bulletarea.image_yscale = 5
        state = 2.1
    }
}
if (state == 2.1)
{
    global.interact = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    state = 2.11
}
if (state == 2.11)
{
    state = -999
    gml_Script_c_pannable(1)
    gml_Script_c_panobj(80, 1)
    gml_Script_c_wait(1)
    gml_Script_c_pannable(0)
    gml_Script_c_var_instance(id, "state", 2.2)
    gml_Script_c_terminatekillactors()
}
if (state == 2.2)
{
    global.interact = 0
    state = 3
}
if (state == 3)
{
    with (obj_caterpillarchara)
    {
        x = (room_width * 2)
        y = (room_height * 2)
        gml_Script_scr_caterpillar_interpolate()
    }
    with (obj_parallaxer_layer)
        auto -= 1
    obj_cyber_music_battleBullets.active = true
    obj_mainchara.cutscene = true
    global.interact = 0
    if (obj_cyber_music_battleBullets.sndinit == 2)
    {
        with (bulletarea)
        {
            x = room_width
            y = room_height
        }
        state = 4
        timer = 0
    }
}
if (state == 4)
{
    obj_mainchara.x += 16
    gml_Script_camerax_set((gml_Script_camerax() + 16))
    obj_MovingPlat_dw_cyber_music_final.x += 16
    if (obj_MovingPlat_dw_cyber_music_final.x >= 1640)
    {
        obj_MovingPlat_dw_cyber_music_final.x = 1640
        timer = 0
        gml_Script_snd_play(61)
        with (movingwall1)
            instance_destroy()
        endwall = gml_Script_instance_create(1600, 120, obj_soliddark)
        endwall.image_xscale = 1
        endwall.image_yscale = 7
        state = 5
    }
}
if (state == 5)
{
    global.interact = 1
    if (obj_mainchara.x < 1640)
        obj_mainchara.x = 1640
    with (obj_caterpillarchara)
        x = 0
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    state = 6
}
if (state == 6)
{
    state = -999
    gml_Script_c_panobj(kr_actor, 8)
    gml_Script_c_sel(su)
    gml_Script_c_visible(0)
    gml_Script_c_setxy(1710, 174)
    gml_Script_c_sel(ra)
    gml_Script_c_visible(0)
    gml_Script_c_setxy(1812, 174)
    gml_Script_c_var_instance(id, "state", 7)
    gml_Script_c_wait(8)
    gml_Script_c_pannable(0)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (state == 7)
{
    if (!gml_Script_i_ex(895))
    {
        global.flag[7] = 0
        global.interact = 0
        state++
    }
}
if (state == 8)
{
    with (obj_caterpillarchara)
    {
        if (image_alpha < 1)
            image_alpha += 0.1
    }
}
