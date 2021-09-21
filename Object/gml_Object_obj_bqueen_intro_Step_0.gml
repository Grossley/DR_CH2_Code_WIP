if (con == 1)
{
    timer++
    if (timer >= 45)
    {
        con = 2
        timer = 0
        gml_Script___view_set(0, 0, (gml_Script___view_get(0, 0) + 28))
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "* Finally... a worthy opponent.../%", "obj_bqueen_intro_slash_Step_0_gml_13_0")
        gml_Script_instance_create((gml_Script_camerax() + 30), (gml_Script_cameray() + 376), obj_writer)
        gml_Script___view_set(0, 0, (gml_Script___view_get(0, 0) - 28))
        with (obj_writer)
        {
            rate = 3
            skippable = false
            writingy = (y - 320)
        }
    }
}
if (con == 2 && (!gml_Script_i_ex(obj_writer)))
{
    con = 3
    y = -120
    sprite_index = spr_bqueen_pirouette
    image_speed = 0.25
    gravity_direction = 270
    gravity = 2
}
if (con == 3 && y < 280)
{
    timer++
    if (gml_Script_cameray() < 0)
        gml_Script___view_set(1, 0, (gml_Script___view_get(1, 0) + 7))
    else
        gml_Script___view_set(1, 0, 0)
    with (obj_thrash_intro)
    {
        if (y < 390)
            y += 6
        else
            y = 390
    }
    flash = gml_Script_instance_create(x, y, o_afterimage)
    flash.sprite_index = sprite_index
    flash.image_index = image_index
    flash.image_xscale = image_xscale
    flash.image_yscale = image_yscale
    flash.image_blend = c_white
    flash.image_speed = 0
    flash.rate = 0.2
    flash.hasboss = 0
    flash.depth = (depth + 1)
    flash.boss = id
}
if (con == 3 && y > 280)
{
    gml_Script_scr_speaker("no_name")
    global.typer = 4
    global.fc = 0
    global.fe = 0
    con = 4
    timer = 0
    sprite_index = spr_bqueen
    image_index = 21
    image_speed = 0
    speed = 0
    gravity = 0
    y = 300
    d = (instance_exists(obj_shake) ? obj_shake : gml_Script_instance_create(0, 0, obj_shake))
    d.shakex = ceil(2)
    d.shakey = ceil(2)
    gml_Script_snd_play(snd_closet_impact)
}
if (con == 4)
{
    timer++
    if (timer >= 20)
    {
        con = 5
        timer = 0
    }
}
if (con == 5)
{
    timer++
    if (timer == 1)
        gml_Script_instance_create((gml_Script_camerax() + (gml_Script_camerawidth() / 2)), (gml_Script_cameray() - 220), obj_gigaqueen_intro_round)
    if (timer == 52)
        gml_Script_instance_create((obj_gigaqueen_intro_round.x + 5), obj_gigaqueen_intro_round.y, obj_gigaqueen_intro_fight)
    if (timer == 92)
    {
        con = 6
        timer = 0
        readycon = 0
    }
}
if (con == 6)
{
    timer++
    if (timer == 1 || timer == 10)
        gml_Script_snd_play(snd_bell)
    if (timer == 22)
    {
        con = 8
        timer = 0
    }
}
if (con == 8)
{
    con = 9
    with (obj_thrash_intro)
        timer = (150 / f)
}
