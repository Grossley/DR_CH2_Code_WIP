var _temp_local_var_2, _temp_local_var_3, _temp_local_var_4;
if (global.interact == 0)
{
    if instance_exists(obj_starwalker_overworld)
    {
        bellcon = true
        myinteract = 0
        image_speed = 0.25
        with (obj_overworldbulletparent)
        {
            active = false
            instance_destroy()
        }
        gml_Script_snd_play(39)
        if (obj_starwalker_overworld.beatcon == 0)
        {
            if (room == room_forest_starwalker && (!instance_exists(obj_npc_room)))
            {
                originalstarwalker = gml_Script_instance_create(2200, 200, obj_npc_room)
                if (x.room_width / 2)
                {
                    var _temp_local_var_2 = originalstarwalker
                    x = 400
                }
            }
            with (obj_starwalker_overworld)
            {
                visible = false
                beatcon = 1
                beattimer = 0
                with (obj_mainchara)
                    battlemode = 0
                dead = gml_Script_instance_create((x - 92), (y - 74), obj_starwalker_battle)
                var _temp_local_var_3 = dead
                walkcon = 1
                walktimer = 0
            }
            var _temp_local_var_4 = shadow
            instance_destroy()
        }
    }
}
