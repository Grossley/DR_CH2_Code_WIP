var _temp_local_var_1, _temp_local_var_2, _temp_local_var_11, _temp_local_var_13, _temp_local_var_14, _temp_local_var_15, _temp_local_var_16, _temp_local_var_17, _temp_local_var_18, _temp_local_var_19, _temp_local_var_20, _temp_local_var_22;
if instance_exists(obj_mainchara)
{
    if (obj_mainchara.y <= 374 && werespawn == 0)
    {
        werespawn = 1
        werewire1 = gml_Script_instance_create(520, 200, obj_chaseenemy)
        var _temp_local_var_2 = werewire1
        myencounter = 74
        sprite_index = spr_werewire_hang_overworld
        touchsprite = spr_werewire_hang_overworld
        radius = 1
        pacetype = 13
        chasetype = -1
        alertskip = 1
        offscreen_frozen = false
        increment = 2
        amplitude = 160
        t = 270
        t = ((t + increment) % 360)
        shift = (amplitude * dsin(t))
        y = (yy + shift)
    }
}
if gml_Script_i_ex(80)
{
    if (obj_mainchara.x >= 1000 && obj_mainchara.y < 430 && global.flag[350] == 0)
        global.flag[350] = 1
}
if (global.flag[350] == 1)
    gml_Script_safe_delete(101)
if gml_Script_i_ex(865)
{
    gml_Script_safe_delete(werewire1)
    gml_Script_safe_delete(werewire2)
    gml_Script_safe_delete(werewire3)
    gml_Script_safe_delete(werewire4)
    gml_Script_safe_delete(werewire5)
    gml_Script_safe_delete(werewire6)
    spawn7 = 1
}
if (global.entrance == 2 || global.flag[528] == 1)
    spawn7 = 1
if (spawned == 0 && spawn7 == 1)
{
    werewire7 = gml_Script_instance_create(2000, 362, obj_solidblock)
    var _temp_local_var_11 = werewire7
    sprite_index = spr_werewire_hang_overworld
    image_speed = 0.125
    image_xscale = 2
    image_yscale = 2
    visible = true
    depth = 100000
}
if ((!gml_Script_i_ex(hintscreen)) && global.flag[351] == 1)
{
    hintscreen = gml_Script_instance_create(1100, 952, obj_queenscreen)
    hintscreen.image_xscale = 2
    hintscreen.image_yscale = 2
    hintscreen.image_index = 17
    state = 0
}
if (state == 0)
{
    _temp_local_var_11.y = (hintscreen.y - 4)
    var _temp_local_var_13 = 
    var _temp_local_var_14 = 
    var _temp_local_var_15 = -9
    var _temp_local_var_16 = hintscreen
    if (hintscreen.y <= 900)
        state = 1
}
if (state == 1)
{
    _temp_local_var_13.x = (hintscreen.x + 4)
    var _temp_local_var_17 = _temp_local_var_14
    var _temp_local_var_18 = -9
    var _temp_local_var_19 = -9
    var _temp_local_var_20 = hintscreen
    if (hintscreen.x >= 1280)
        state = 2
}
if gml_Script_i_ex(werewire6)
{
    if gml_Script_scr_onscreen(werewire6)
    {
        spawned = 1
        hatflyaway = 1
    }
}
if (spawned == 1 && gml_Script_i_ex(hat) && hatflyaway == 1 && gml_Script_i_ex(865))
{
    var _temp_local_var_22 = hat
    hatfade = gml_Script_scr_afterimage()
    hatfade.vspeed = -16
    hatfade.hspeed = 4
    hatfade.friction = 0.25
    instance_destroy()
}
