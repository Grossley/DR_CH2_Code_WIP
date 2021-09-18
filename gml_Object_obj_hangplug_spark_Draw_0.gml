16777215
amount = (y / (basey + 190))
(amount / 4)
draw_ellipse((x - ((sprite_width / 2) * amount)), ((basey + (fallAmount - 20)) - (6 * amount)), (x + ((sprite_width / 2) * amount)), ((basey + (fallAmount - 40)) + (6 * amount)), 0)
image_alpha
scaler = lerp(scaler, 1, 0.25)
sparkalpha = 0.4
repeat (5)
    draw_sprite_ext(spr_ch2_gimmick_hangplug_spark_clean, choose(0, 1, 2, 3), x, (y - 40), (2 * scaler), (2 * scaler), (33 * irandom(8)), c_white, sparkalpha)
afterimage = instance_create_depth(x, (y - 40), (depth + 1), obj_afterimage_grow)
afterimage.sprite_index = spr_ch2_gimmick_hangplug_spark_clean
afterimage
afterimage.xrate = -0.2
afterimage.yrate = -0.2
afterimage.image_angle = (33 * irandom(8))
afterimage.image_alpha = 0.8
1
