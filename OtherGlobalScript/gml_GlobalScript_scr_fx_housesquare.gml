var gr = 0
for (i = 0; i < 3; i++)
{
    gr = gml_Script_instance_create(argument0, argument1, obj_fx_growsquare)
    gr.color = argument2
    gr.alarm[0] = (1 + (i * 3))
    gr.depth = (depth - 10)
}
return;
