bridgetarget = "c_2"
c_nred = make_color_rgb(231, 84, 77)
image_blend = c_nred
replace2 = instance_create(x, y, obj_soliddark)
replace2.sprite_index = sprite_index
replace2.image_xscale = image_xscale
replace2.image_yscale = image_yscale
replace2.image_index = image_index
replace2.bridgetarget = bridgetarget
instance_destroy()
