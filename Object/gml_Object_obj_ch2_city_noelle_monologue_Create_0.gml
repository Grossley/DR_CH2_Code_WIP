con = 0
customcon = 0
auto_text = 0
auto_con = -1
allow_move = 0
cutscene_master = 0
custom_delay = 0
no_silhouette = 0
young_noelle = 0
auto_continue = 0
msgtimer = 0
buttonIndex = 0
buttonX[0] = 0
buttonY[0] = 0
init = 0
noendx = 0
init_forcefields = 0
text_con = -1
pause_kris = 0
if (global.plot < 94)
{
    if (global.flag[7] == 1)
        global.flag[7] = 0
    if (!gml_Script_scr_havechar(4))
    {
        gml_Script_scr_losechar()
        if instance_exists(obj_caterpillarchara)
            instance_destroy(obj_caterpillarchara)
        gml_Script_scr_getchar(4)
        gml_Script_scr_makecaterpillar(obj_mainchara.x, (obj_mainchara.y - 40), 4, 0)
        with (obj_caterpillarchara)
            gml_Script_scr_caterpillar_interpolate()
    }
}
else
    instance_destroy()
