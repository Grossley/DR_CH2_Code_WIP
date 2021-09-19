enemy1 = 0
enemy3 = 0
enemy2 = gml_Script_instance_create(x, y, obj_chaseenemy)
var _temp_local_var_1 = enemy2
image_speed = 0.25
myencounter = 64
sprite_index = spr_npc_butler
touchsprite = spr_swatchling_hurt
radius = 0
pacetype = 11
chasetype = 0
alertskip = 0
alertcon = 0
ignoresolid = false
moveradius = 0
eraser = true
blind = 1
path_start(path_swatchling, 6, path_action_continue, 1)
