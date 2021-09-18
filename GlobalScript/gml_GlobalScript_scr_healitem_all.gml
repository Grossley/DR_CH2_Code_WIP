argument0
for (i = 0; i < chartotal; i += 1)
{
    healx = i
    healtext = gml_Script_instance_create(((healx + 70) + xx), (yy + 430), obj_healwriter)
    healtext.healamt = argument0
}
return;
