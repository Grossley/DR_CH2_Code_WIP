if (argument2 == 0)
{
    mywriter = gml_Script_instance_create(argument0, argument1, obj_writer)
    return mywriter;
}
if (argument2 == 1)
{
    myblcon = gml_Script_instance_create(argument0, argument1, obj_battleblcon)
    return myblcon;
}
if (argument2 == 2)
{
    myblcon = gml_Script_instance_create(argument0, argument1, obj_battleblcon)
    myblcon.sprite_index = spr_battleblcon_v
    return myblcon;
}
if (argument2 == 3)
{
    myblcon = gml_Script_instance_create(argument0, argument1, obj_battleblcon)
    myblcon.sprite_index = spr_battleblcon_long
    return myblcon;
}
if (argument2 == 4)
{
    myblcon = gml_Script_instance_create(argument0, argument1, obj_battleblcon)
    myblcon.sprite_index = spr_battleblcon_clubs
    myblcon.image_index = 0
    myblcon.image_speed = 0
    return myblcon;
}
if (argument2 == 5)
{
    myblcon = gml_Script_instance_create(argument0, argument1, obj_battleblcon)
    myblcon.sprite_index = spr_battleblcon_clubs
    myblcon.image_index = 1
    myblcon.image_speed = 0
    return myblcon;
}
if (argument2 == 6)
{
    myblcon = gml_Script_instance_create(argument0, argument1, obj_battleblcon)
    myblcon.sprite_index = spr_battleblcon_clubs
    myblcon.image_index = 2
    myblcon.image_speed = 0
    return myblcon;
}
if (argument2 == 7)
{
    myblcon = gml_Script_instance_create(argument0, argument1, obj_battleblcon)
    myblcon.sprite_index = spr_battleblcon_long_r
    myblcon.image_index = 2
    myblcon.image_speed = 0
    return myblcon;
}
if (argument2 == 8)
{
    myblcon = gml_Script_instance_create(argument0, argument1, obj_battleblcon)
    myblcon.sprite_index = spr_battleblcon_long_tall
    return myblcon;
}
if (argument2 == 10)
{
    myblcon = gml_Script_instance_create(argument0, argument1, obj_battleblcon)
    myblcon.sprite_index = spr_battleblcon_long
    myblcon.auto_length = 1
    return myblcon;
}
return;