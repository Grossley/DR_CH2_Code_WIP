image_xscale = 2
image_yscale = 2
roomno = global.flag[291]
sidechoice = -1
lancer_side = -1
susie_side = -1
lancercon = 0
proper_choice = 0
battlemoder = false
gencon = 0
gen = 0
gentimer = 0
if (global.plot < 90)
    global.plot = 90
if (roomno == 0)
{
    lancer_side = 1
    proper_choice = 0
}
if (roomno == 1)
{
    battlemoder = true
    gen = 1
    for (i = 0; i < 4; i += 1)
    {
        scizz = gml_Script_instance_create_ch1((80 + (i * 180)), 300, 1500)
        scizz.hspeed = -8
        scizz.vspeed = 0
    }
    lancer_side = 0
    proper_choice = 1
}
if (roomno == 2)
{
    lancer_side = 1
    proper_choice = 0
    chaseenemy = gml_Script_instance_create_ch1((x + 10), (y - 80), 1485)
}
if (roomno == 3)
{
    holesolid = gml_Script_instance_create_ch1(280, 280, 1656)
    with (holesolid)
    {
        image_xscale = 2
        image_yscale = 2
    }
    hole = gml_Script_scr_dark_marker_ch1(280, 280, 4056)
    with (hole)
    {
        image_xscale = 2
        image_yscale = 2
        depth = 950000
    }
    battlemoder = true
    lancer_side = 0
    proper_choice = 1
    darkponman = gml_Script_instance_create_ch1(((room_width / 2) - 28), 268, 1502)
    with (obj_darkponman_ow_ch1)
    {
        boss = false
        bmax = 8
    }
}
if (roomno == 5)
{
    battlemoder = true
    proper_choice = 3
    lancer_side = 2
    susie_side = 4
    gen = 1
    for (i = 0; i < 5; i += 1)
    {
        scizz = gml_Script_instance_create_ch1((60 + (i * 140)), 300, 1500)
        scizz.hspeed = -8
        scizz.vspeed = 0
        scizz = gml_Script_instance_create_ch1((100 + (i * 140)), 460, 1500)
        scizz.hspeed = -8
        scizz.vspeed = 0
    }
}
if (roomno == 6)
{
    proper_choice = 4
    lancer_side = 3
    susie_side = 2
    chaseenemy = gml_Script_instance_create_ch1((x + 10), y, 1485)
}
if (roomno == 7)
{
    gen = 2
    proper_choice = 2
    lancer_side = 3
    susie_side = 4
    scizz = gml_Script_instance_create_ch1(60, 600, 1495)
    scizz.mazemode = 1
    scizz = gml_Script_instance_create_ch1(580, 600, 1495)
    scizz.mazemode = 1
}
if (roomno == 8)
{
    holesolid = gml_Script_instance_create_ch1(180, 380, 1656)
    with (holesolid)
    {
        image_xscale = 2
        image_yscale = 2
    }
    hole = gml_Script_scr_dark_marker_ch1(180, 380, 4056)
    with (hole)
    {
        image_xscale = 2
        image_yscale = 2
        depth = 950000
    }
    holesolid = gml_Script_instance_create_ch1(380, 380, 1656)
    with (holesolid)
    {
        image_xscale = 2
        image_yscale = 2
    }
    hole = gml_Script_scr_dark_marker_ch1(380, 380, 4056)
    with (hole)
    {
        image_xscale = 2
        image_yscale = 2
        depth = 950000
    }
    battlemoder = true
    proper_choice = 3
    lancer_side = 2
    susie_side = 4
    darkponman = gml_Script_instance_create_ch1(((room_width / 2) - 126), 368, 1502)
    with (obj_darkponman_ow_ch1)
    {
        boss = false
        bmax = 8
        rot = 180
    }
    darkponman = gml_Script_instance_create_ch1(((room_width / 2) + 72), 368, 1502)
    with (darkponman)
    {
        boss = false
        bmax = 8
        rotspeed = -4
        rot = 0
    }
}
if (lancer_side >= 0)
{
    lancercon = 1
    y = 260
    sprite_index = spr_lancer_dt_ch1
    if (lancer_side == 0)
        x = 160
    if (lancer_side == 1)
        x = 400
    if (lancer_side == 2)
        x = 120
    if (lancer_side == 3)
        x = 280
    if (lancer_side == 4)
        x = 440
}
if (susie_side >= 0)
{
    lancercon = 1
    susie = gml_Script_scr_dark_marker_ch1(160, 245, 3548)
    susie.depth = depth
    if (susie_side == 0)
        susie.x = 160
    if (susie_side == 1)
        susie.x = 400
    if (susie_side == 2)
        susie.x = 120
    if (susie_side == 3)
        susie.x = 280
    if (susie_side == 4)
        susie.x = 440
}
