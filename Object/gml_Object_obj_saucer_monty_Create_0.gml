saucercount = 3
radius = 100
siner = 0
con = 0
myinteract = 0
image_speed = 0
image_xscale = 2
image_yscale = 2
if (x >= (room_width / 1.2))
    saucercount = choose(4, 5, 6, 7, 8, 9, 10, 11, 12)
multiplier = 2
collider = gml_Script_instance_create((x + 8), (y + 22), obj_solidblock)
collider.image_xscale = 4.2
collider.image_yscale = 3
fakeblock = 0
boss = false
if (instance_find(object_index, 0) == id)
    boss = true
loop = 99999
