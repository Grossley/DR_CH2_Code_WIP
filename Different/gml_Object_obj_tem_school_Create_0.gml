if (global.chapter == 2 && global.plot >= 3 && global.plot < 200)
    instance_destroy()
else
{
    dtsprite = spr_tem_sit
    rtsprite = spr_tem_sit_r
    ltsprite = spr_tem_sit_l
    utsprite = spr_tem_sit
    myinteract = 0
    facing = 0
    dfacing = 0
    image_speed = 0
    talked = false
    ourcase = 0
    eggmake = 0
    egcon = 0
    egtimer = 0
    scr_npcdir()
    scr_depth()
}
