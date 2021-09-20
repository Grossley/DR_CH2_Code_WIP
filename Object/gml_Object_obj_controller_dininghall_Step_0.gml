if (con == 0)
{
    with (obj_camera_area)
        instance_destroy()
    with (obj_camera_advanced)
    {
        targetYRelative[1] = -180
        lerpTime[1] = 2
        panSpeedInit[1] = 32
        panSpeedMax[1] = 36
    }
    with (obj_saucer)
    {
        if gml_Script_i_ex(collider)
        {
            with (collider)
                instance_destroy()
        }
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
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    with (obj_dogtable_controlled)
        drawtype = 1
    dog = remdog
    memx = dog.x
    memy = dog.y
    cutscene_master.save_object[0] = dog
    con++
}
if (con == 3)
{
    con = -999
    gml_Script_c_soundplay(61)
    gml_Script_c_var_instance(dog, "x", memx)
    gml_Script_c_var_instance(dog, "y", memy)
    gml_Script_c_shake()
    gml_Script_c_var_instance(dog, "depth", 890000)
    gml_Script_c_sel(kr)
    gml_Script_c_setxy((dog.x - 21), (dog.y - 60))
    gml_Script_c_sel(ra)
    gml_Script_c_setxy((dog.x - 60), (dog.y - 76))
    gml_Script_c_sel(su)
    gml_Script_c_setxy((dog.x + 12), (dog.y - 82))
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(545)
    gml_Script_c_jump(300, 230, 20, 30)
    gml_Script_c_sel(ra)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(782)
    gml_Script_c_imagespeed(1)
    gml_Script_c_jump(254, 190, 20, 30)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(543)
    gml_Script_c_jump(338, 186, 20, 30)
    gml_Script_c_wait(15)
    gml_Script_c_wait(15)
    gml_Script_c_sel(kr)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(540)
    gml_Script_c_sel(ra)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_imageindex(0)
    gml_Script_c_sprite(2558)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(0)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(548)
    gml_Script_c_var_lerp_instance(dog, "x", memx, 704, 16)
    gml_Script_c_wait(6)
    gml_Script_c_var_instance(id, "tablespawn", 1)
    gml_Script_c_wait(6)
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_autowalk(1)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("u")
    gml_Script_c_autowalk(1)
    gml_Script_c_sel(su)
    gml_Script_c_facing("d")
    gml_Script_c_autowalk(1)
    gml_Script_c_wait(15)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(1)
    gml_Script_c_facing("d")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_sel(su)
    gml_Script_c_wait(10)
    gml_Script_c_sprite(832)
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E9* Hahah^1, was that awesome or what?!/", "obj_controller_dininghall_slash_Step_0_gml_146_0")
    gml_Script_c_facenext("ralsei", "K")
    gml_Script_c_msgnextloc("\\EK* Umm^1, maybe minus the blatant destruction.../%", "obj_controller_dininghall_slash_Step_0_gml_149_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(ra)
    gml_Script_c_facing("d")
    gml_Script_c_sel(su)
    gml_Script_c_facing("d")
    gml_Script_c_wait(6)
    gml_Script_c_speaker("ralsei")
    gml_Script_c_msgsetloc(0, "\\E2* Let's go^1, Kris^1! We're almost at the third floor!/%", "obj_controller_dininghall_slash_Step_0_gml_160_0")
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_facing("d")
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_var_instance(id, "con", 4)
    gml_Script_c_terminatekillactors()
}
if (con == 4)
{
    with (obj_dogtable_controlled)
        instance_destroy()
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
