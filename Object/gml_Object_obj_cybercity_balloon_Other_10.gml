attachedinstance = gml_Script_instance_create((x + 32), ((y + sprite_height) - 38), attachedobj)
attachedinstance.balloonid = balloonid
attached = 1
with (attachedinstance)
    gml_Script_scr_stickto(other.id, -10)
