global.interact = 3
gml_Script_mus_volume_ch1(global.currentsong[1], 0, 14)
gml_Script_instance_create_ch1(0, 0, obj_fadeout_ch1)
if (touched == 0)
{
    alarm[2] = 15
    alarm[3] = 14
    touched = 1
}
