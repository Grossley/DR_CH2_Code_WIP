if (instance_exists(o_boxingcontroller) && o_boxingcontroller.dead == 1)
{
    o_boxingcontroller.dead = 2
    gml_Script_instance_create(320, 240, obj_vector_queen_face)
}
instance_destroy()
