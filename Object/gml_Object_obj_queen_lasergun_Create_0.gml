con = 0
timer = 0
image_xscale = 0
image_yscale = 0
init = 0
inittimer = 0
shotsize = 1
maxsize = 1.2
aimx = 0
aimy = 0
randomshot = 1
inittime = 0
aimtime = 15
waittime = 15
depth = (obj_heart.depth + 1)
d = gml_Script_instance_create(x, y, obj_queen_search_window)
d.search = 99
d.depth = (depth + 1)
d.targetstring = ""
d.donttypeanything = 1