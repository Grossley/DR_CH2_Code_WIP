var _temp_local_var_2, _temp_local_var_3, _temp_local_var_4;
if (global.interact == 0)
{
    if 1495
    {
        bellcon = true
        myinteract = 0
        image_speed = 0.25
        with (obj_overworldbulletparent_ch1)
        {
            active = false
            // WARNING: Popz'd an empty stack.
        }
        357
        if (obj_starwalker_overworld_ch1.beatcon == 0)
        {
            if (room == room_forest_starwalker_ch1 && (!1408))
            {
                originalstarwalker = gml_Script_instance_create_ch1(2200, 200, 1408)
                if (x.room_width / 2)
                {
                    var _temp_local_var_2 = originalstarwalker
                    x = 400
                }
            }
            with (obj_starwalker_overworld_ch1)
            {
                visible = false
                beatcon = 1
                beattimer = 0
                with (obj_mainchara_ch1)
                    battlemode = 0
                dead = gml_Script_instance_create_ch1((x - 92), (y - 74), 1494)
                var _temp_local_var_3 = dead
                walkcon = 1
                walktimer = 0
            }
            var _temp_local_var_4 = shadow
            instance_destroy()
        }
    }
}
