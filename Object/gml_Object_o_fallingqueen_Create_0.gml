f = 2
image_xscale = 2
image_yscale = 2
image_speed = 0.2
vspeed = (12 * f)
if (gml_Script_i_ex(o_boxingqueen) && o_boxingqueen.pirouette_amount == 5)
    vspeed = (10.5 * f)
y = -20
image_alpha = (0.8 * f)
dive_hitbox = gml_Script_instance_create(x, (y - 20), o_boxing_hitbox)
with (dive_hitbox)
{
    hit_ducking = 1
    give_hurt = (30 / f)
    give_invincibility = (40 / f)
    timer = 300
    damage = 20
    image_yscale = 4
    image_xscale = 2.8
}
