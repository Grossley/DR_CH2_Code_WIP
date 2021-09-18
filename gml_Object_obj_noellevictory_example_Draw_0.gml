image_xscale = 2
image_yscale = 2
image_speed = 0.2
xoff = 35
yoff = 8
nxoff = 35
nyoff = 6
afactor = (siner / 24)
siner++
if (afactor < -0.2 && siner >= 8)
    siner--
if (global.fighting == false)
    // WARNING: Popz'd an empty stack.
if (!orbsurface)
    orbsurface = surface_create(120, 136)
orbsurface
0
draw_sprite_ext(spr_noelleb_orb, 0, (nxoff - xoff), (nyoff - yoff), 2, 2, 0, c_white, (0.6 * afactor))
snowangle = (-20 + (siner / 2))
snowoff = (siner / 2)
draw_sprite_ext(spr_noelleb_orb, 2, ((nxoff - xoff) + snowoff), ((nyoff - yoff) + (siner / 2)), 2, 2, snowangle, c_white, (0.5 * afactor))
draw_sprite_ext(spr_noelleb_orb, 2, ((nxoff - xoff) - snowoff), ((nyoff - yoff) - (siner / 2)), 2, 2, (-snowangle), c_white, (0.5 * afactor))
draw_sprite_ext(sprite_index, image_index, nxoff, nyoff, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
draw_sprite_ext(spr_noelleb_orb, 1, (nxoff - xoff), (nyoff - yoff), 2, 2, 0, c_blue, (0.2 * afactor))
1
draw_sprite_ext(spr_noelleb_orb, 1, (nxoff - xoff), (nyoff - yoff), 2, 2, 0, c_blue, (0.6 * afactor))
0
3
draw_sprite_ext(spr_noelleb_orb, 3, (nxoff - xoff), (nyoff - yoff), 2, 2, 0, c_white, 1)
0
// WARNING: Popz'd an empty stack.
draw_surface(orbsurface, (x - nxoff), (y - nyoff))
