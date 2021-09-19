door = gml_Script_scr_marker(236, 26, 917)
with (door)
    gml_Script_scr_depth()
con = 0
customcon = 0
customconb = 0
global.facing = 0
noelle_npc = gml_Script_instance_create(76, 152, obj_npc_facing)
berdly_npc = gml_Script_instance_create(148, 152, obj_npc_facing)
introtime = 0
nonpctime = 0
sunsettime = 0
doormake = 0
alphystime = 0
if (global.chapter == 1)
{
    if (global.plot < 2)
        introtime = 1
    if (global.plot >= 3)
    {
        sunsettime = 1
        doormake = 1
    }
}
if (global.chapter == 2)
{
    if (global.plot < 3)
        introtime = 1
    if (global.plot >= 3)
    {
        nonpctime = 1
        doormake = 1
        alphystime = 1
    }
    if (global.plot >= 5)
    {
        nonpctime = 1
        alphystime = 0
    }
    if (global.plot >= 100)
        sunsettime = 1
}
if (introtime == 1)
{
    gml_Script_snd_free_all()
    global.facing = 0
    con = 1
    with (obj_mainchara)
    {
        x = 240
        y = 30
        gml_Script_scr_depth()
    }
    alphys = gml_Script_scr_marker(50, 50, 918)
    with (alphys)
        gml_Script_scr_depth()
    global.interact = 1
}
if (nonpctime == 1)
{
    with (obj_npc_facing)
        instance_destroy()
    if (global.plot < 200)
    {
        with (obj_tem_school)
            instance_destroy()
    }
}
if (doormake == 1)
{
    doorb = gml_Script_instance_create(242, 48, obj_doorB)
    with (door)
        depth = 900000
    with (doorb)
    {
        doorFacing = 0
        doorPreset = 1
    }
}
if (sunsettime == 1)
{
    with (obj_npc_facing)
        instance_destroy()
    if (global.plot < 200)
    {
        with (obj_tem_school)
            instance_destroy()
    }
    sunset = gml_Script_scr_marker(3, 0, 901)
    with (sunset)
    {
        image_alpha = 0.4
        depth = 2000
    }
    instance_destroy()
}
