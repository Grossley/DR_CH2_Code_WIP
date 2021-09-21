with (obj_ch2_keyboardpuzzle_tile)
{
    pressed = 1
    pressable = 0
}
global.facing = 0
gml_Script_snd_play(snd_locker)
gml_Script_instance_create(0, 0, obj_shake)
