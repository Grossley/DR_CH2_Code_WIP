var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3;
if 13
{
    if (active == true)
    {
    }
    else
        var _temp_local_var_3 = 0
}
else
    var _temp_local_var_3 = 0
attackno += 1
active = false
if (attackno <= 11)
    attack = attackno
else
    attack = choose(7, 8, 9, 10, 11)
if (attack == 1)
{
    box = gml_Script_instance_create_ch1((xx + 340), (yy + 170), 1628)
    // WARNING: Popz'd an empty stack.
    dd = gml_Script_instance_create_ch1(0, 0, 1558)
    dd.type = 21
    timeruse = 1
    faketimermax = 190
    faketimer = 0
}
if (attack == 2)
{
    visible = false
    chainking = gml_Script_instance_create_ch1(x, y, 1565)
    chainking.type = 1
    chainking.subtype = 0
    box = gml_Script_instance_create_ch1((xx + 200), (yy + 175), 1571)
    box.sprite_index = spr_battlebg_wavechain_ch1
    // WARNING: Popz'd an empty stack.
}
if (attack == 3)
{
    box = gml_Script_instance_create_ch1((xx + 340), (yy + 170), 1628)
    // WARNING: Popz'd an empty stack.
    dd = gml_Script_instance_create_ch1(0, 0, 1558)
    dd.type = 34
    timeruse = 1
    faketimermax = 200
    faketimer = 0
}
if (attack == 4)
{
    box = gml_Script_instance_create_ch1((xx + 310), (yy + 165), 1628)
    box.sprite_index = spr_battlebg_2_ch1
    // WARNING: Popz'd an empty stack.
    damagebox = gml_Script_instance_create_ch1(box.x, box.y, 1570)
    damagebox.type = 0
}
if (attack == 5)
{
    visible = false
    chainking = gml_Script_instance_create_ch1(x, y, 1565)
    chainking.type = 1
    chainking.subtype = 1
    box = gml_Script_instance_create_ch1((xx + 200), (yy + 175), 1571)
    box.sprite_index = spr_battlebg_wavechain_ch1
    // WARNING: Popz'd an empty stack.
}
if (attack == 6)
{
    visible = false
    timeruse = 0
    chainking = gml_Script_instance_create_ch1(x, y, 1565)
    chainking.type = 2
    chainking.subtype = 2
    box = gml_Script_instance_create_ch1((xx + 205), (yy + 170), 1571)
    box.sprite_index = spr_battlebg_1_ch1
    // WARNING: Popz'd an empty stack.
}
if (attack == 7)
{
    box = gml_Script_instance_create_ch1((xx + 340), (yy + 170), 1628)
    // WARNING: Popz'd an empty stack.
    dd = gml_Script_instance_create_ch1(0, 0, 1558)
    dd.type = 35
    timeruse = 1
    faketimermax = 220
    faketimer = 0
}
if (attack == 8)
{
    box = gml_Script_instance_create_ch1((xx + 310), (yy + 165), 1628)
    box.sprite_index = spr_battlebg_2_ch1
    // WARNING: Popz'd an empty stack.
    damagebox = gml_Script_instance_create_ch1(box.x, box.y, 1570)
    damagebox.type = 3
}
if (attack == 9)
{
    box = gml_Script_instance_create_ch1((xx + 340), (yy + 170), 1628)
    // WARNING: Popz'd an empty stack.
    dd = gml_Script_instance_create_ch1(0, 0, 1558)
    dd.type = 23
    timeruse = 1
    faketimermax = 190
    faketimer = 0
}
if (attack == 10)
{
    visible = false
    chainking = gml_Script_instance_create_ch1(x, y, 1565)
    chainking.type = 1
    chainking.subtype = 2
    box = gml_Script_instance_create_ch1((xx + 200), (yy + 175), 1571)
    box.sprite_index = spr_battlebg_wavechain_ch1
    // WARNING: Popz'd an empty stack.
}
if (attack == 11)
{
    visible = false
    timeruse = 0
    chainking = gml_Script_instance_create_ch1(x, y, 1565)
    chainking.type = 2
    chainking.subtype = 1
    box = gml_Script_instance_create_ch1((xx + 205), (yy + 170), 1571)
    box.sprite_index = spr_battlebg_1_ch1
    // WARNING: Popz'd an empty stack.
}
if (timeruse == 1)
{
    faketimer += 1
    if (faketimer >= faketimermax)
    {
        with (obj_bulletparent_ch1)
            // WARNING: Popz'd an empty stack.
        with (obj_dbulletcontroller_ch1)
            // WARNING: Popz'd an empty stack.
        with (obj_growtangle_ch1)
            growcon = 3
        with (obj_heart_ch1)
            // WARNING: Popz'd an empty stack.
        active = true
        timeruse = 0
        faketimer = 0
    }
}
if 32
{
}
else
    var _temp_local_var_2 = 0
attackno += 1
if 16
{
}
else
    var _temp_local_var_1 = 0
attackno -= 1
