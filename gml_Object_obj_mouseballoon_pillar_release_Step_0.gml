var _temp_local_var_1, _temp_local_var_2;
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
if (ballooncon == 1)
{
}
else
    var _temp_local_var_2 = 0
176
myballoon = gml_Script_instance_create((x - 12), (y - 70), obj_cybercity_balloon)
fakeballoony = -400
var _temp_local_var_1 = myballoon
balloonid = -1
event_user(0)
if (other.krismade == 0)
    hspeed = (6.5 + random(8))
else
    hspeed = 10.85
friction = 0.2
gravity = -0.2
