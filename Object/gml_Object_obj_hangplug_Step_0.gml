siner += 1
depth = 9000
y = (basey + (sin((siner / 70)) * 3))
if (obj_mainchara.x >= (x - radius) && obj_mainchara.x <= (x + radius))
    active = true
else
    active = false
if (active == false)
{
    image_speed = 0
    image_index = 0
}
if (active == true && decorative == 0)
{
    if (con == 0)
    {
        timer += 1
        if (obj_mainchara.x != obj_mainchara.xprevious)
            timer += 1
        if (timer >= chargetime && x >= gml_Script_camerax() && x <= ((gml_Script_camerax() + 640) - sprite_width))
        {
            con = 1
            image_speed = 0.25
            timerb = 0
        }
    }
    if (con == 1)
    {
        timerb += 1
        timerbtarget = 15
        if (room == room_dw_mansion_east_4f_c)
            timerbtarget = 8
        if (timerb == timerbtarget)
        {
            if (!gml_Script_snd_is_playing(snd_spearappear))
            {
                spawn = gml_Script_snd_play(snd_spearappear)
                gml_Script_snd_volume(spawn, 0.6, 0)
            }
            image_index = 0
            image_speed = 0
            timerb = 0
            con = 0
            timer = (random((chargetime / 2)) - 30)
            spark = gml_Script_instance_create((basex + 22), (basey + 190), obj_hangplug_spark)
            spark.depth = (depth - 1)
        }
    }
}
