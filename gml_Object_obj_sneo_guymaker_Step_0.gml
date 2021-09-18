var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8, _temp_local_var_9, _temp_local_var_10, _temp_local_var_11, _temp_local_var_12, _temp_local_var_13, _temp_local_var_14, _temp_local_var_15, _temp_local_var_16, _temp_local_var_17, _temp_local_var_19, _temp_local_var_23, _temp_local_var_24, _temp_local_var_25, _temp_local_var_27, _temp_local_var_29, _temp_local_var_30, _temp_local_var_31, _temp_local_var_32, _temp_local_var_44, _temp_local_var_45, _temp_local_var_46, _temp_local_var_47, _temp_local_var_48, _temp_local_var_49;
xx = gml_Script___view_get(0, 0)
yy = gml_Script___view_get(1, 0)
timer++
if (type == 1 || type == 2 || type == 3 || type == 4 || type == 5 || type == 6 || type == 7)
{
    if (timer == 1)
    {
        if (type == 1)
        {
            row = choose(0, 1)
            if (prevrow == 2)
                row = choose(0, 1)
        }
        if (type == 2)
        {
            var aa = choose(0, 1, 2)
            if (prevrowy == 0)
                aa = choose(1, 2)
            if (prevrowy == 1)
                aa = choose(0, 2)
            if (prevrowy == 2)
                aa = choose(0, 1)
            rowy = ((yy + 210) - (46 * aa))
            prevrowy = aa
            row = 2
        }
        if (type == 3 || type == 4)
        {
            rowy = ((yy + 210) - (40 * choose(0, 1)))
            row = choose(0, 1, 3, 6)
            if (prevrow == 2)
                row = choose(0, 1, 3, 6)
            if (prevrow == 3)
                row = choose(0, 1)
            if (row == 3 && firstspawn == 0)
                row = choose(0, 1)
            firstspawn = 1
        }
        if (type == 5)
        {
            rowy = ((yy + 210) - (40 * choose(0, 1, 2)))
            row = choose(0, 1, 2, 2, 3, 6)
            if (prevrow == 2)
                row = choose(0, 1, 3, 6)
            if (prevrow == 3)
                row = choose(0, 1, 2)
        }
        if (type == 6)
            row = 6
        if (type == 7)
            row = 7
    }
    if (timer == 5 || timer == 10 || timer == 15 || timer == 20)
    {
        if (row == 0 || row == 1 || row == 2)
        {
            guy = gml_Script_instance_create((xx + 700), (yy + 280), obj_sneo_lilguy)
            guy.hspeed = -18
            guy.friction = -0.1
            guy.vspeed = -2
            alarm[0] = guy
            alarm[1] = guy
            alarm[2] = guy
            guy.gravity = 0.5
            guy.gravity_direction = 0
            guy.destroyable = 1
            guy.image_blend = 0xE8A200
            guy.changedirection = 0
            guy.altdirection = 0
            guy.altspeed = 4
            guy.altfriction = -0.2
            guy.altgravity = 0
            var _temp_local_var_6 = obj_CHAPTER_SELECT
            var _temp_local_var_7 = 40
            var _temp_local_var_8 = 44
            if (type == 2)
            {
                alarm[0] = guy
                var _temp_local_var_9 = obj_battleLayerHighlight
            }
            if (row == 1)
            {
                _temp_local_var_9.y = (guy.y - 240)
                guy.vspeed = (-guy.vspeed)
                var _temp_local_var_10 = obj_CHAPTER_SELECT
                var _temp_local_var_11 = 40
                var _temp_local_var_12 = -9
                var _temp_local_var_13 = guy
            }
            if (row == 2)
            {
                _temp_local_var_10.y = (guy.y - 120)
                guy.vspeed = 0
                guy.hspeed = -21
                var _temp_local_var_14 = 40
                var _temp_local_var_15 = -9
                var _temp_local_var_16 = -9
                var _temp_local_var_17 = guy
            }
            if (row == 2 && type == 2)
            {
                guy.hspeed = -21
                guy.gravity = 0
                guy.friction = 0.5
                alarm[0] = guy
                guy.changedirection = 1
                guy.altdirection = guy.direction
                var _temp_local_var_19 = 36
            }
            if ((type == 2 || type == 3 || type == 4 || type == 5) && row == 2)
                guy.y = rowy
        }
        if (row == 3 && timer != 20)
        {
            guyi = 0
            while (guyi < 2)
            {
                guy[guyi] = gml_Script_instance_create((xx + 300), ((yy - 40) + (400 * guyi)), obj_sneo_lilguy)
                guy[guyi].vspeed = (18 - (36 * guyi))
                alarm[0] = guy[guyi]
                alarm[1] = guy[guyi]
                alarm[2] = guy[guyi]
                guy[guyi].gravity = (0.8 - (1.6 * guyi))
                guy[guyi].gravity_direction = 90
                guy[guyi].destroyable = 1
                guyi++
                var _temp_local_var_23 = 32
                var _temp_local_var_24 = 40
                var _temp_local_var_25 = 44
            }
        }
        if (row == 6 && timer == 5)
        {
            spawncount = 2
            var a = 0
            var _temp_local_var_27 = spawncount
            if (spawncount <= 0)
            {
            }
            else
            {
                while (true)
                {
                    guy = gml_Script_instance_create(((xx + 410) + (a * 70)), ((yy - 20) + 0), obj_sneo_lilguy)
                    guy.vspeed = 15
                    alarm[0] = guy
                    alarm[1] = guy
                    alarm[2] = guy
                    guy.gravity = 0.53
                    guy.gravity_direction = 90
                    guy.destroyable = 1
                    guy = gml_Script_instance_create(((xx + 445) + (a * 70)), ((yy - 20) + 400), obj_sneo_lilguy)
                    guy.vspeed = -15
                    alarm[0] = guy
                    alarm[1] = guy
                    alarm[2] = guy
                    guy.gravity = -0.53
                    guy.gravity_direction = 90
                    guy.destroyable = 1
                    a++
                    var _temp_local_var_44 = (32 - 1)
                    var _temp_local_var_45 = 40
                    var _temp_local_var_46 = 44
                    var _temp_local_var_47 = 32
                    var _temp_local_var_48 = 30
                    var _temp_local_var_49 = 44
                    if (32 - 1)
                        continue
                }
            }
        }
        if (row == 7 && timer != 20)
        {
            guy = gml_Script_instance_create((xx + 630), (yy + 100), obj_sneo_lilguy)
            alarm[0] = guy
            alarm[1] = guy
            alarm[2] = guy
            guy.destroyable = 1
            var _temp_local_var_29 = guy
            var _temp_local_var_30 = 32
            var _temp_local_var_31 = 40
            var _temp_local_var_32 = 44
            path_start(path_sneo_head_path1, 11, path_action_stop, 0)
        }
    }
    if (type == 2 && timer >= 41)
        timer = 0
    if (type == 3 && timer >= 69)
        timer = 0
    if (type == 6 && timer >= 69)
        timer = 0
    if (type == 4 && timer >= 50)
        timer = 0
    if (type == 5 && timer >= 69)
        timer = 0
    if (timer >= 50)
        timer = 0
    if (timer == 0)
        prevrow = row
}
