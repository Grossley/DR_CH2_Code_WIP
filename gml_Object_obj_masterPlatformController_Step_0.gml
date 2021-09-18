var _temp_local_var_1, _temp_local_var_4, _temp_local_var_6;
if (init == 1)
{
    noelle = gml_Script_instance_create((obj_controller_city_mice3.noelle.x + 4), obj_controller_city_mice3.noelle.y, obj_noelle_scared)
    var _temp_local_var_1 = noelle
    hastarget = 1
    jumppuzzle = 1
    if instance_exists(obj_masterPlatformController)
        target = obj_masterPlatformController.plat[0]
}
if (active == true)
{
    waitbuffer--
    if (obj_controller_city_mice3.micescore >= 1)
        hasbegun = 1
    if (makenewplatform == 1 && waitbuffer <= 0 && freeze == 0)
    {
        with (obj_rotationtile_tower)
            phase++
        currentPlatform++
        plat[currentPlatform] = gml_Script_instance_create(x, y, obj_rotationtile_tower)
        var _temp_local_var_4 = plat[currentPlatform]
        x = 640
        y = 480
    }
    if (mouseSpawn == 1 && plat[(currentPlatform - 1)].tilecon == 0)
    {
        var _temp_local_var_6 = plat[(currentPlatform - 1)]
        hole.mousecreate = 1
        hole.gentimer = 20
    }
    freezespawn--
    if (freezespawn == 0)
        global.interact = 0
}
