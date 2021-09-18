var _temp_local_var_3;
timer++
if movingwall1
    movingwall1.x = obj_MovingPlat_dw_cyber_music_final.x
if (state == 0 && obj_mainchara.x >= 480)
{
    timer = 0
    with (obj_fakeWalkway_dw_cyber_music_final)
        // WARNING: Popz'd an empty stack.
    61
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
    cutscene_master = 
    state = 2.11
}
if (state == 2.11)
{
    state = -999
    1
    gml_Script_c_panobj(80, 1)
    1
    0
    gml_Script_c_var_instance(id, "state", 2.2)
    // WARNING: Popz'd an empty stack.
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
        // WARNING: Popz'd an empty stack.
    }
    with (obj_parallaxer_layer)
        auto -= 1
    obj_cyber_music_battleBullets.active = true
    obj_mainchara.cutscene = true
    global.interact = 0
    if (obj_cyber_music_battleBullets.sndinit == 2)
    {
        x = bulletarea.room_width
        y = room_height
    }
}
if (state == 4)
{
    obj_mainchara.x += 16
    16
    obj_MovingPlat_dw_cyber_music_final.x += 16
    if (obj_MovingPlat_dw_cyber_music_final.x >= 1640)
    {
        obj_MovingPlat_dw_cyber_music_final.x = 1640
        timer = 0
        61
        var _temp_local_var_3 = movingwall1
    }
}
if (state == 5)
{
    global.interact = 1
    if (obj_mainchara.x < 1640)
        obj_mainchara.x = 1640
    with (obj_caterpillarchara)
        x = 0
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    state = 6
}
if (state == 6)
{
    state = -999
    gml_Script_c_panobj(kr_actor, 8)
    su
    0
    gml_Script_c_setxy(1710, 174)
    ra
    0
    gml_Script_c_setxy(1812, 174)
    gml_Script_c_var_instance(id, "state", 7)
    8
    0
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (state == 7)
{
    if (!895)
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
