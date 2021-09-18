global.entrance = 24
gml_Script_instance_create_ch1(0, 0, 1462)
if (room == room_castle_town_ch1)
    327
if (room == room_castle_tutorial_ch1)
    325
if (room == room_town_south_ch1)
    306
if (room == room_library_ch1)
    293
if (room == room_town_church_ch1)
    303
if (room == room_townhall_ch1)
    295
if (room == room_schoollobby_ch1)
    294
if (room == room_town_school_ch1)
    309
if (room == room_town_mid_ch1)
    302
if (room == room_diner_ch1)
    291
if (room == room_town_north_ch1)
    304
if (room == room_flowershop_1f_ch1)
    289
if (room == room_cc_prisonlancer_ch1)
    385
if (room == room_cc_prison_cells_ch1)
    386
if (room == room_forest_secret1_ch1)
    365
if (room == room_forest_dancers1_ch1)
    366
if (room == room_forest_savepoint3_ch1)
    370
if (room == room_forest_savepoint_relax_ch1)
{
    if (global.plot < 120)
        371
    else
        376
}
if (room == room_forest_maze_susie_ch1)
{
    if (y.room_height / 2)
    {
        global.flag[292] = 0
        global.flag[291] = 0
        370
    }
    else
        374
}
if (room == room_forest_castlefront_ch1)
{
    if (global.plot < 150)
        // WARNING: Popz'd an empty stack.
    else
        377
}
if (room == room_forest_fightsusie_ch1)
{
    if (global.plot < 150)
        // WARNING: Popz'd an empty stack.
    else
        384
}
if (room == room_forest_maze1_ch1 || room == room_forest_maze2_ch1)
{
    if (y.room_width / 2)
    {
        global.flag[292] = 0
        if (room == room_forest_maze1_ch1)
        {
            global.flag[291] = 0
            370
        }
        if (room == room_forest_maze2_ch1)
        {
            global.flag[291] = 5
            373
        }
    }
    else
    {
        with (obj_forestmaze_controller_ch1)
            0
    }
}
