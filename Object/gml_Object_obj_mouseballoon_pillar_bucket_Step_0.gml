if (myinteract == 3)
{
    if (!gml_Script_i_ex(mydialoguer))
    {
        global.interact = 0
        myinteract = 0
        with (obj_mainchara)
            onebuffer = 5
    }
}
if (myinteract == 1 && (!gml_Script_d_ex()))
{
    con = 1
    myinteract = 0
    timer = 99
    bucket = obj_kris_headobj
}
if (con == 1)
{
    timer++
    if (timer >= 5)
    {
        gml_Script_snd_play_pitch(176, 0.6)
        mouse = gml_Script_scr_dark_marker(bucket.x, bucket.y, bucket.sprite_index)
        mouse.depth = bucket.depth
        gml_Script_safe_delete(bucket)
        var _x = (x + 46)
        var _y = (y + 36)
        mouse.image_alpha = 2
        with (mouse)
            gml_Script_scr_lerpvar("x", x, _x, 15, 2, "out")
        with (mouse)
            gml_Script_scr_lerpvar("y", y, _y, 15, 2, "out")
        with (mouse)
            gml_Script_scr_lerpvar("image_alpha", 4, 0, 25, 2, "out")
        gml_Script_scr_doom(mouse, 25)
        timer = 0
        micerequired--
        con = 2
        timer = 0
    }
}
if (con == 2)
{
    timer++
    if (timer == 30)
    {
        gml_Script_scr_shakescreen()
        completed = 1
        gml_Script_snd_play(61)
    }
    if (timer == 40)
    {
        con = 3
        global.interact = 0
        global.facing = 0
    }
}
