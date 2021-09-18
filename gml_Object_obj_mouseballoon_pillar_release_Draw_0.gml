// WARNING: Popz'd an empty stack.
draw_sprite_ext(spr_bg_city_balloon_carrier, 0, (x - 12), ((y - 70) + fakeballoony), 2, 2, 0, c_white, 1)
fakeballoony = lerp(fakeballoony, 0, 0.25)
if (fakeballoony <= 2)
    fakeballoony = 0
