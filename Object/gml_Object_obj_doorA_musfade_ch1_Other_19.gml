global.interact = 3
gml_Script_instance_create_ch1(0, 0, 1460)
gml_Script_mus_volume_ch1(global.currentsong[1], 0, 14)
if (touched == 0)
{
    alarm[3] = 14
    alarm[2] = 15
    touched = 1
}
