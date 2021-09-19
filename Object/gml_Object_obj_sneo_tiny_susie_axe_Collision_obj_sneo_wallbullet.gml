if (other.active == false)
    return;
if (other.destroyable == 1)
{
    instance_destroy()
    gml_Script_snd_play(166)
    var _temp_local_var_1 = other
    instance_destroy()
}
