siner = 0
inbattle = 0
ball = scr_dark_marker(x, y, spr_dojo_discoball)
ball.depth = 5000
ball.x = (room_width / 2)
ball.y = 0
ball.image_speed = 0.18
ballback = scr_dark_marker(x, y, spr_dojo_discoball_back)
drawalpha = 1
depth = 1100000
bsiner = 0
instance_create(0, 0, obj_dojofx_front)
