l = image_xscale
h = image_yscale
siner = 0
seed = 45000
mode = 2
timer = 0
minitimer = 0
for (i = 0; i < l; i++)
{
    barsiner[i] = 4600
    yscale[i] = (1 * h)
    color[i] = make_color_hsv(((i * 255) / l), 128, 255)
}
// WARNING: Popz'd an empty stack.
if (room == room_dw_city_savepoint)
    depth = 900000
