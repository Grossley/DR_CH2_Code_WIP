if pressed
    return;
var checkPress = 0
if (gml_Script_i_ex(obj_mainchara) && (!pressed) && global.interact == 0)
{
    if place_meeting(x, y, obj_mainchara)
        checkPress = 1
}
if checkPress
{
    if (pressed == 0)
    {
        pressed = 1
        alarm[0] = 15
        gml_Script_snd_play(snd_wing)
        var exit_forcefield = gml_Script_instance_create((x - 130), (y - 40), obj_forcefield)
        with (exit_forcefield)
        {
            image_xscale = 2
            image_yscale = 4
            gml_Script_scr_depth()
            canttalk = 1
        }
    }
}
