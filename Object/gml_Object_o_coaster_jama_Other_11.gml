for (i = 0; i < 4; i++)
    particle = gml_Script_instance_create((x + random(40)), ((y - 8) - random(50)), obj_berdlyparticle)
if (bigcar == 1)
{
    image_index = 1
    bigcarhp -= 1
    hspeed = 6
    x += 8
    if (bigcarhp <= 0)
    {
        gml_Script_instance_create((x + 20), (y - 40), o_coastersmoke)
        gml_Script_instance_create((x - 20), (y - 40), o_coastersmoke)
        gml_Script_instance_create((x + 60), (y - 40), o_coastersmoke)
        instance_destroy()
    }
}
if (bigcar == 0)
{
    gml_Script_instance_create((x + 20), (y - 40), o_coastersmoke)
    instance_destroy()
}
