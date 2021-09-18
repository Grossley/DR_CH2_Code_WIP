// WARNING: Popz'd an empty stack.
destroyonhit = 0
image_speed = 0.2
image_alpha = 0
active = false
if 869
{
    image_xscale = obj_growtangle.image_xscale
    image_yscale = obj_growtangle.image_yscale
    image_angle = obj_growtangle.image_angle
}
else
    // WARNING: Popz'd an empty stack.
gml_Script_instance_create(x, y, obj_growtangle_electric_pushin)
timer = 0
type = 0
con = 0
amplitude = 0
maxamplitude = 60
spinamplitude = 0
plugx = 120
plugalpha = 0
shottimer = 0
speedmode = 1
xx = 0
yy = 0
if 571
    damage = (global.monsterat[obj_queen_enemy.myself] * 5)
if 572
    target = obj_queen_bulletcontroller.target
grazepoints = 4
