with (obj_overworldbulletparent)
    active = false
global.interact = 3
gml_Script_instance_create(0, 0, obj_fadeout)
if (touched == 0)
{
    alarm[2] = 8
    event_user(8)
    touched = 1
}
