if (autocomplete == 0)
{
    if (jumppuzzle == 0)
    {
        if (con == 0)
        {
            gml_Script_snd_play(294)
            jumpy = 20
            if (instance_exists(obj_controller_city_mice2) && obj_controller_city_mice2.victory == false)
            {
                targetx = 370
                targety = 166
            }
            if (instance_exists(obj_controller_city_mice2) && obj_controller_city_mice2.victory == true)
            {
                targetx = 860
                targety = 238
            }
            if (extflag == "mice1Scare")
            {
                targetx = x
                targety = y
            }
            con = 1
        }
    }
    else
    {
        if instance_exists(obj_controller_city_mice3)
        {
            if (fallen == 0)
                obj_controller_city_mice3.exttrig = "success"
            else
                obj_controller_city_mice3.exttrig = "fell"
        }
        gml_Script_snd_play(294)
        if instance_exists(obj_masterPlatformController)
        {
            if (con == 0)
            {
                jumpy = 20
                if (fallen == 0)
                {
                    targetx = (obj_masterPlatformController.plat[obj_masterPlatformController.currentPlatform].x + 120)
                    targety = obj_masterPlatformController.plat[obj_masterPlatformController.currentPlatform].patidealy
                }
                else
                {
                    targetx = (obj_masterPlatformController.plat[(obj_masterPlatformController.currentPlatform - 1)].x + 120)
                    targety = obj_masterPlatformController.plat[(obj_masterPlatformController.currentPlatform - 1)].patidealy
                }
                con = 1
            }
        }
    }
}
