var _temp_local_var_1;
grazed = 0
grazepoints = 3
timepoints = 2
target = 0
inv = 120
damage = 124
grazetimer = 0
active = false
image_alpha = 0
image_xscale = 1
image_yscale = 1
rotspeed = 0
insanity = 1
chasecon = 1
chasetimer = 0
centerx = 320
centery = 120
if instance_exists(obj_battlesolid_ch1)
{
    centerx = obj_battlesolid_ch1.x
    centery = obj_battlesolid_ch1.y
}
radius = 150
sine = 0
sinespeed = 1.4
dir = random(70)
dirspeed = (1.5 * choose(1, -1))
un = 0
scythetimer = -5
scythesidex = 1
swingnoise = 0
noisebuffer = 0
type = 0
if instance_exists(obj_dbulletcontroller_ch1)
{
    if (obj_dbulletcontroller_ch1.type == 76)
        type = 1
}
king = 0
if (type == 1)
{
    image_xscale = 1
    image_yscale = 1
    insanity = 0
    sinespeed = 1.3
    scythesidex = choose(1, -1)
}
if (instance_number(obj_centerscythe_ch1) == 1)
{
    king = 1
    x = (centerx - radius)
    y = centery
    s2 = gml_Script_instance_create_ch1((centerx + radius), centery, 1589)
    var _temp_local_var_1 = s2
    sine = 0
    dir = 180
    un = 1
}
wall_destroy = 0