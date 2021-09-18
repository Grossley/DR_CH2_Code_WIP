gml_Script_instance_create(x, y, o_charge_ring)
frequency = (frequencyD + irandom_range(((-frequencyD) / 3), (frequencyD / 3)))
alarm[1] = frequency
150
gml_Script_snd_pitch(150, (0.7 + (ringcount / 5)))
gml_Script_snd_volume(150, 0.5, 0)
ringcount++
