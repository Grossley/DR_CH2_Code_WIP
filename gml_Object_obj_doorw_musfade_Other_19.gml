global.interact = 3
gml_Script_mus_volume(global.currentsong[1], 0, 14)
gml_Script_instance_create(0, 0, obj_fadeout)
if (touched == 0)
{
    alarm[2] = 15
    alarm[3] = 14
    event_user(8)
    touched = 1
}
