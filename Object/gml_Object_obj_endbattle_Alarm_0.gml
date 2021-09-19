with (obj_mainchara)
{
    if (global.specialbattle != 3)
        cutscene = false
    visible = true
}
with (obj_caterpillarchara)
    visible = true
if (global.specialbattle == 0 || global.specialbattle == 3)
{
    i = 0
    while (i < (count + 1))
    {
        var _temp_local_var_2 = c[i]
        instance_destroy()
    }
}
if (global.specialbattle == 0 || global.specialbattle == 2)
    global.interact = 0
if (global.flag[9] == 1)
{
    gml_Script_snd_free(global.batmusic[0])
    gml_Script_snd_volume(global.currentsong[1], 0, 0)
    gml_Script_snd_resume(global.currentsong[1])
    gml_Script_snd_volume(global.currentsong[1], 1, 20)
}
instance_destroy()
