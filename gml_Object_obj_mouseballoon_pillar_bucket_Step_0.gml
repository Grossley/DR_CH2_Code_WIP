var _temp_local_var_1, _temp_local_var_4;
if (myinteract == 3)
{
    if (!mydialoguer)
    {
        global.interact = 0
        myinteract = 0
        with (obj_mainchara)
            onebuffer = 5
    }
}
if (myinteract == 1)
{
}
else
    var _temp_local_var_4 = 0
con = 1
myinteract = 0
timer = 99
bucket = obj_kris_headobj
if (con == 1)
{
    timer++
    if (timer >= 5)
    {
        gml_Script_snd_play_pitch(176, 0.6)
        mouse = gml_Script_scr_dark_marker(bucket.x, bucket.y, bucket.sprite_index)
        mouse.depth = bucket.depth
        bucket
        var _x = (x + 46)
        var _y = (y + 36)
        mouse.image_alpha = 2
        var _temp_local_var_1 = mouse
        gml_Script_scr_lerpvar("x", x, _x, 15, 2, "out")
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
