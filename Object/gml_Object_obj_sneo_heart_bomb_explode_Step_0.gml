timer++
if (timer == 3 && image_index == 0)
{
    image_index = 1
    timer = 0
}
else if (timer == 3 && image_index == 1)
{
    image_index = 0
    timer = 0
}
siner += 4
image_xscale = (2 + (sin((siner / 6)) * 0.5))
image_yscale = (2 + (sin((siner / 6)) * 0.5))
if (siner == 96)
{
    gml_Script_snd_play(220)
    var a = random(44)
    var _temp_local_var_2 = 8
    if (8 <= 0)
    {
    }
    else
    {
        while (true)
        {
            radialshot = gml_Script_instance_create(x, y, obj_sneo_heatattack_bullet)
            var _temp_local_var_3 = radialshot
            gml_Script_scr_bullet_init()
        }
        gml_Script_scr_bullet_init()
    }
    instance_destroy()
}
