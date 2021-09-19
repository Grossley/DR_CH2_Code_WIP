if (con == 1 && (!gml_Script_d_ex()) && gml_Script_i_ex(101))
{
    if (!sfx)
    {
        sfx = 1
        gml_Script_snd_play(104)
    }
    sinerx = 0
    sinery = 0
    siner_amplitude0 += 0.2
    siner0 += 0.2
    var sinmove_x = (sin(siner0) * siner_amplitude0)
    sinerx += lengthdir_x(sinmove_x, siner_direction0)
    sinery += lengthdir_y(sinmove_x, siner_direction0)
    var xpos = sinerx
    var ypos = sinery
    siner1 += siner_add1
    var sinmove_y = (cos(siner1) * siner_amplitude1)
    sinerx += lengthdir_x(sinmove_y, siner_direction1)
    sinery += lengthdir_y(sinmove_y, siner_direction1)
    xpos = sinerx
    ypos = sinery
    with (obj_npc_room)
    {
        x += xpos
        y = ((y + ypos) - 6)
    }
    if (obj_npc_room.y <= -100)
        con = 99
}
if remove_shine
{
    remove_shine = 0
    if (shine != -4)
    {
        var _temp_local_var_2 = shine
        instance_destroy()
    }
}
