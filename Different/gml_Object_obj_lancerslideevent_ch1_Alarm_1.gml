dust = instance_create_ch1((obj_mainchara_ch1.x + 20), (obj_mainchara_ch1.y + 30), obj_slidedust_ch1)
with (dust)
{
    vspeed = -6
    hspeed = (-1 + random(2))
}
alarm[1] = 4
