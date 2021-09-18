var _temp_local_var_1, _temp_local_var_2;
if (con == 0)
{
    with (obj_camera_area)
        // WARNING: Popz'd an empty stack.
    with (obj_camera_advanced)
    {
        targetYRelative[1] = -180
        lerpTime[1] = 2
        panSpeedInit[1] = 32
        panSpeedMax[1] = 36
    }
    with (obj_saucer)
    {
        if collider
            var _temp_local_var_1 = collider
    }
    with (obj_caterpillarchara)
        visible = false
    with (obj_mainchara)
        visible = false
    dogtable = gml_Script_instance_create(320, 3080, obj_dogtable_controlled)
    dogtable.vspeed = -16
    con++
}
if (tablespawn == 1)
{
    gml_Script_instance_create(166, 320, obj_saucer_dining3Spawner)
    gml_Script_instance_create(270, 320, obj_saucer_dining3Spawner)
    gml_Script_instance_create(374, 320, obj_saucer_dining3Spawner)
    tablespawn = 0
}
if (con == 2)
{
    for (var i = 0; i < 3; i++)
    {
        shade = gml_Script_instance_create((166 + (i * 104)), 364, obj_marker)
        shade.sprite_index = spr_saucershadow
        shade.image_alpha = 0.25
        shade.image_xscale = 2
        shade.image_yscale = 2
        shade.depth = 890000
    }
    with (obj_caterpillarchara)
        visible = false
    with (obj_mainchara)
        visible = false
    global.interact = 1
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    with (obj_dogtable_controlled)
        drawtype = 1
    dog = remdog
    memx = dog.x
    memy = dog.y
    save_object[0] = cutscene_master
    con++
    var _temp_local_var_2 = dog
}
if (con == 3)
{
    con = -999
    gml_Script_c_soundplay(61)
    gml_Script_c_var_instance(dog, "x", memx)
    gml_Script_c_var_instance(dog, "y", memy)
    gml_Script_c_var_instance(dog, "depth", 890000)
    kr
    gml_Script_c_setxy((dog.x - 21), (dog.y - 60))
    ra
    gml_Script_c_setxy((dog.x - 60), (dog.y - 76))
    su
    gml_Script_c_setxy((dog.x + 12), (dog.y - 82))
    kr
    0
    0.25
    545
    gml_Script_c_jump(300, 230, 20, 30)
    ra
    0
    0.25
    781
    1
    gml_Script_c_jump(254, 190, 20, 30)
    su
    0
    0.25
    543
    gml_Script_c_jump(338, 186, 20, 30)
    15
    15
    kr
    0.25
    540
    ra
    0.25
    0
    2557
    su
    0
    0.25
    548
    gml_Script_c_var_lerp_instance(dog, "x", memx, 704, 16)
    6
    gml_Script_c_var_instance(id, "tablespawn", 1)
    6
    ra
    "r"
    1
    kr
    "u"
    1
    su
    "d"
    1
    15
    su
    1
    "d"
    ra
    "r"
    su
    10
    831
    "susie"
    gml_Script_c_msgsetloc(0, "\\E9* Hahah^1, was that awesome or what?!/", "obj_controller_dininghall_slash_Step_0_gml_146_0")
    gml_Script_c_facenext("ralsei", "K")
    gml_Script_c_msgnextloc("\\EK* Umm^1, maybe minus the blatant destruction.../%", "obj_controller_dininghall_slash_Step_0_gml_149_0")
    // WARNING: Popz'd an empty stack.
    ra
    "d"
    su
    "d"
    6
    "ralsei"
    gml_Script_c_msgsetloc(0, "\\E2* Let's go^1, Kris^1! We're almost at the third floor!/%", "obj_controller_dininghall_slash_Step_0_gml_160_0")
    // WARNING: Popz'd an empty stack.
    kr
    "d"
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(id, "con", 4)
    // WARNING: Popz'd an empty stack.
}
if (con == 4)
{
    with (obj_dogtable_controlled)
        // WARNING: Popz'd an empty stack.
    with (obj_mainchara)
        visible = true
    with (obj_caterpillarchara)
        visible = true
    global.flag[7] = 0
    global.interact = 0
    global.flag[382] = 1
    alarm[0] = 1
    con++
}
