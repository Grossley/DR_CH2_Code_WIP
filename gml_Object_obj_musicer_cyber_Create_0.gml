if (global.plot >= 55)
{
    if (room == room_dw_cyber_queen_boxing)
    {
        with (obj_doorA_musfade)
        {
            door = gml_Script_instance_create(x, y, obj_doorA)
            door.image_yscale = image_xscale
            door.image_yscale = image_yscale
            // WARNING: Popz'd an empty stack.
        }
    }
}
if (global.plot >= 60)
{
    if (room == room_dw_cyber_battle_maze_2)
    {
        with (obj_doorA_musfade)
        {
            door = gml_Script_instance_create(x, y, obj_doorA)
            door.image_yscale = image_xscale
            door.image_yscale = image_yscale
            // WARNING: Popz'd an empty stack.
        }
    }
}
if (!global.currentsong[1])
{
    global.currentsong[0] = "cyber.ogg"
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 1)
}
