x_offset = 66
y_offset = 135
skip_1st_part_hp = 12
skip_2nd_part_hp = 17
yspot[0] = ((obj_growtangle.y - (obj_growtangle.sprite_height / 2)) - y_offset)
yspot[1] = ((obj_growtangle.y + (obj_growtangle.sprite_height / 2)) - y_offset)
yspot[2] = y
lastshoty = y
rand = 80
ycurrent = 1
con = 0
movetimer = 0
shottimer = 0
timer = 0
count = 0
mouthtopy = 0
mouthbottomy = 0
shotmouthopen = 0
shotmouthopentimer = 0
mouthangle = 0
init = 0
remx = x
hurtalpha = 0
gml_Script_instance_create(x, y, obj_sneo_lastattack_hitbox)
endattack = 0
