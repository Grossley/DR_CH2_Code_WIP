var a = choose(0, 1)
if (forcedir == 1)
    a = 1
if (forcedir == -1)
    a = 0
if (a == 0)
{
    var _temp_local_var_1 = instance_nearest((x - 200), y, obj_musicenemy_boombox)
    angleoffset = random(25)
    makebullet = 2
}
if (a == 1)
{
    var _temp_local_var_2 = instance_nearest((x + 200), y, obj_musicenemy_boombox)
    angleoffset = (random(25) * -1)
    makebullet = 2
}
