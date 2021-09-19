con = 0
if global.flag[310]
{
    for (var i = 0; i < 10; i++)
    {
        var xpos = (260 + (60 * i))
        var ypos = ((i % 2) == 0 ? 190 : 240)
        gml_Script_instance_create(xpos, ypos, obj_mazecheese)
    }
    if gml_Script_scr_havechar(4)
    {
        global.interact = 1
        alarm[0] = 30
    }
}
else
    gml_Script_instance_create(260, 180, obj_chaseenemy)
