var _temp_local_var_1;
// WARNING: Popz'd an empty stack.
talkmax = 90
image_speed = 0.16666666666666666
idlesprite = spr_rurus_pirate
hurtsprite = spr_rurus_pirate
sabersprite = 1164
sparedsprite = spr_rurus_pirate
custom_draw_example = 1
depth = -10
thrash = gml_Script_instance_create(x, y, obj_thrashmachine)
thrash.depth = (depth + 5)
drawsiner = 0
thrashmode = 0
thrashcon = 0
thrashbody = 0
thrashtimer = 0
remx = x
remy = y
movey = 0
bulletoverride = -1
advancespeed = 8
returnspeed = 6
aimtime = (15 + 10)
floatheight = 0
returnease = 0
headattack = 0
puddle = gml_Script_instance_create(x, y, obj_marker)
puddle.sprite_index = spr_rouxls_puddle
puddle.image_blend = c_lime
puddle.image_xscale = 2
puddle.image_yscale = 2
puddle.depth = (thrash.depth + 1)
puddle.image_speed = 0
var _temp_local_var_1 = thrash
puddle.image_index = (part[0] == 2 ? 2 : 0)
submerged = 1
keytestmode = 0
saberanim = 0
buildedblocks = 0
buildedblockstimer = 0
tile1 = gml_Script_instance_create(160, 80, obj_simtown_landmaker)
tile1.image_xscale = 8
tile2 = gml_Script_instance_create(160, 120, obj_simtown_landmaker)
tile2.image_xscale = 8
tile3 = gml_Script_instance_create(240, 160, obj_simtown_landmaker)
tile3.image_xscale = 3
tile4 = gml_Script_instance_create(280, 200, obj_simtown_landmaker)
tile4.image_xscale = 3
tile5 = gml_Script_instance_create(160, 240, obj_simtown_landmaker)
tile5.image_xscale = 8
tile6 = gml_Script_instance_create(160, 280, obj_simtown_landmaker)
tile6.image_xscale = 8
with (obj_battleback)
{
}
