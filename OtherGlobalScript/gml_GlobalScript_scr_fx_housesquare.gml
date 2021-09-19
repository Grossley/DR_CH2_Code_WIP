var gr = obj_sneo_friedpipis
i = 0
while (i < 3)
{
    gr = gml_Script_instance_create(argument0, argument1, obj_fx_growsquare)
    gr.color = argument2
    alarm[0] = gr
    gr.depth = (depth - 10)
    i++
    var _temp_local_var_1 = (1 + (i * 3))
}
return;
