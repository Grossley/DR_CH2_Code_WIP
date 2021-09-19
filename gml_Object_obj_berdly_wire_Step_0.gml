if (shakecon == 1)
{
    shakecon = 0
    gml_Script_scr_shakeobj()
    if shake_loop
        alarm[0] = 30
}
