hspeed = ((round(random(3)) + 1) * -1)
image_speed = abs((hspeed / 16))
hitted = 0
rottimer = 0
image_xscale = 2
image_yscale = 2
small = 0
if (floor(random(12)) == 0)
{
    sprite_index = spr_traffic_car_side_legs_small_left
    image_xscale = -2
    small = 1
    image_speed *= 2
}
