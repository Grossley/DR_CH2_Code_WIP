event_inherited()
image_speed = 0
angle_speed = (gml_Script_randomsign() * 10)
target_speed = angle_speed
difficulty = 0
init = 0
opening = irandom(360)
openingsize = 90
openingoffset = 135
destroyable = -1
direction = 180
speed = 3
weakpoint = gml_Script_instance_create(x, y, obj_sneo_cshot_weakpoint)
weakpoint.barrier = self
weakpoint.depth = (depth - 1)
destroyonhit = 0
hitfreeze = 0
hit = 0
movementstyle = 0
