x -= 200
y -= 200
image_xscale = 1280
image_yscale = 960
image_blend = c_black
image_alpha = 1.1
depth = -1000
instance_create(320, -300, obj_bqueen_intro)
__view_set((1 << 0), 0, (__view_get((1 << 0), 0) - 180))
