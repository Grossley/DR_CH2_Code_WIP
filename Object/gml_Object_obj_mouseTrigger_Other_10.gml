if (room == room_dw_mansion_traffic)
{
    if (con == 0)
    {
        gml_Script_snd_play(snd_noise)
        obj_controller_mansion_traffic.victory = true
        if instance_exists(obj_forcefield)
        {
            with (obj_forcefield)
                instance_destroy()
        }
        con++
    }
}
