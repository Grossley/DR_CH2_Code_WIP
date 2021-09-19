visible = true
image_alpha = 0
con = 0
balloontimer = 0
balloonthreshold = 5
gml_Script_scr_losechar()
gml_Script_safe_delete(274)
gml_Script_scr_getchar(2)
gml_Script_scr_getchar(3)
caterpillarsus = gml_Script_scr_makecaterpillar(obj_mainchara.x, ((obj_mainchara.y - 16) + 2), 2, 0)
caterpillarral = gml_Script_scr_makecaterpillar(obj_mainchara.x, ((obj_mainchara.y - 12) - 2), 3, 1)
caterpillarnoe = gml_Script_scr_makecaterpillar((obj_mainchara.x - 4), ((obj_mainchara.y - 20) + 2), 4, 2)
var remtarget = caterpillarral.target
caterpillarral.target = caterpillarnoe.target
caterpillarnoe.target = remtarget
if (room == room_dw_city_postbaseball_1)
{
    gml_Script_instance_create(1260, 270, obj_chaseenemy)
    forcefieldtopleft = gml_Script_instance_create(320, 320, obj_forcefield)
    forcefieldtopleft.image_xscale = 6
    forcefieldtopright = gml_Script_instance_create(440, 320, obj_forcefield)
    forcefieldtopright.image_xscale = 36
    forcefieldright = gml_Script_instance_create(880, 760, obj_forcefield)
    forcefieldright.image_xscale = 100
    with (obj_forcefield)
        stayVisible = 1
}
switchcon = 0
rodeteacup = -5
switch3con = -1
switch2con = -1
switch1con = -1
forcefield1 = 999
forcefield2 = 999
forcefield3 = 999
if (room == room_dw_city_postbaseball_1)
{
    if (global.flag[448] == 1)
    {
        gml_Script_safe_delete(forcefieldtopright)
        gml_Script_safe_delete(forcefieldright)
        switch1con = 2
        switch2con = 2
        rodeteacup = 3
        con = 99
    }
    if (global.flag[449] == 1)
    {
        gml_Script_safe_delete(forcefieldtopleft)
        rodeteacup = 4
    }
}
if (room == room_dw_city_postbaseball_2 || room == room_dw_city_postbaseball_1)
{
    gml_Script_instance_create(0, 0, obj_fireworks_manager)
    with (obj_fireworks_manager)
        is_active = 1
}
fireworkshotcon = 0
fireworktimer = 0
if (room == room_dw_city_postbaseball_3)
{
    blockleft = 0
    makecaters = 0
    minigame = 0
    minigamecon = 0
    minigamestartcon = 0
    timer = 0
    balloon[0] = gml_Script_instance_create(626, 40, obj_cybercity_balloon)
    var _temp_local_var_2 = balloon[0]
    balloonid = 0
    event_user(0)
}
