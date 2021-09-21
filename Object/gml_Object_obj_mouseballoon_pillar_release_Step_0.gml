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
if (ballooncon == 1 && (!gml_Script_d_ex()))
{
    gml_Script_snd_play(snd_mouse)
    myballoon = gml_Script_instance_create((x - 12), (y - 70), obj_cybercity_balloon)
    fakeballoony = -400
    with (myballoon)
    {
        balloonid = -1
        event_user(0)
        if (other.krismade == 0)
            hspeed = (6.5 + random(8))
        else
            hspeed = 10.85
        friction = 0.2
        gravity = -0.2
    }
    krismade = 0
    ballooncon = 0
}
