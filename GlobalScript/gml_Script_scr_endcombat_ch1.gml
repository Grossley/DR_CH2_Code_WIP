var _temp_local_var_2;
global.fighting = false
if (global.specialbattle == 0 || global.specialbattle == 2 || global.specialbattle == 3)
{
    if (global.specialbattle == 2)
    {
        with (obj_mainchara_ch1)
        {
            cutscene = true
            x = global.charinstance[0].x
            y = global.charinstance[0].y
        }
        var _temp_local_var_2 = global.cinstance[0]
        x = global.charinstance[1].x
        y = global.charinstance[1].y
    }
    gml_Script_instance_create_ch1(0, 0, 1627)
    with (obj_monsterparent_ch1)
        instance_destroy()
    with (obj_bulletparent_ch1)
        instance_destroy()
    with (obj_heroparent_ch1)
        instance_destroy()
    instance_destroy()
}
return;
