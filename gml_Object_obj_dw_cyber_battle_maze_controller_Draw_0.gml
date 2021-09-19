var _temp_local_var_2, _temp_local_var_4;
if (instance_exists(obj_mainchara) && triggered == 0)
{
    if point_in_rectangle((obj_mainchara.x + 9), (obj_mainchara.y + 18), 592, 423, 672, 503)
        triggered = 1
}
if (triggered == 1)
{
    enem = gml_Script_instance_create(1000, 420, obj_chaseenemy)
    var _temp_local_var_2 = enem
    myencounter = 53
    sprite_index = spr_werewire_hang_overworld
    touchsprite = sprite_index
    radius = 0
    pacetype = 12
    chasetype = 5
    alertskip = 1
    eraser = true
    ignoresolid = false
    moveradius = 160
}
if (triggered == 2)
{
    if (instance_exists(obj_chaseenemy) && point_in_rectangle((obj_mainchara.x + 9), (obj_mainchara.y + 18), 240, 640, 320, 670))
    {
        enem2 = gml_Script_instance_create(720, 620, obj_chaseenemy)
        var _temp_local_var_4 = enem2
        myencounter = 53
        sprite_index = spr_werewire_hang_overworld
        touchsprite = sprite_index
        radius = 0
        pacetype = 12
        chasetype = 5
        eraser = true
        alertskip = 1
        ignoresolid = false
        moveradius = 160
    }
}
if (triggered == 3)
{
    if (global.interact == 0)
    {
        x += 4
        if (enem > x.room_width)
            instance_destroy()
        if (!gml_Script_scr_onscreen(id))
            instance_destroy()
    }
}
