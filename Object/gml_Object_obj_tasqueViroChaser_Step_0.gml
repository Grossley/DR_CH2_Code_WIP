if (con == 0)
{
    if instance_exists(obj_ow_virokun_mansion_east_1f_d)
    {
        if (obj_ow_virokun_mansion_east_1f_d.con == 3)
            con = 1
    }
}
if (con == 1)
    con = 2
if (con == 2)
{
    if instance_exists(obj_ow_virokun_mansion_east_1f_d)
        move_towards_point((obj_ow_virokun_mansion_east_1f_d.x + (obj_ow_virokun_mansion_east_1f_d.sprite_width / 2)), (obj_ow_virokun_mansion_east_1f_d.y + obj_ow_virokun_mansion_east_1f_d.sprite_height), 12)
    else
    {
        ((-128).room_width / 2)
        var _temp_local_var_1 = 12
    }
}
gml_Script_scr_depth()
