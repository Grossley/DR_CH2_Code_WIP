var _moveH, _moveV, _centerLength, _moveDir, pieceCenterLen, pieceCenterDir, _xx, _yy, _temp_local_var_3, _temp_local_var_4;
if (mybuffer < 10)
    mybuffer++
if (mybuffer > 2)
{
    if (active && bird >= 0)
    {
        if 1
        {
            51
            with (obj_shapepuzzle)
                inUse = 0
            active = false
            image_index = 0
            global.interact = obj_shapepuzzle.goalHit
            global.facing = 0
            var _temp_local_var_3 = myPiece
            active = false
        }
        gml_Script_snd_play_pitch(172, 1.5)
        var _temp_local_var_4 = myPiece
        if (other.troublePiece && image_angle == -90)
        {
            image_angle += 90
            x -= lengthdir_x(sprite_width, image_angle)
            y -= lengthdir_y(sprite_width, image_angle)
        }
        else
        {
            image_angle -= 90
            x += lengthdir_x(sprite_width, (image_angle + 90))
            y += lengthdir_y(sprite_width, (image_angle + 90))
        }
    }
    else if obj_shapepuzzle.goalHit
    {
        if (image_index < 5)
            image_index = 5
        else if (image_index < 8)
            image_index += 0.5
    }
    if (bird == 2 && active)
    {
        berdly_taunt_timer++
        if (berdly_taunt_timer >= 15)
        {
            image_index = 0
            bird = -1
            active = false
            global.facing = 0
            gml_Script_scr_speaker("berdly")
            gml_Script_msgsetloc(0, "\\EB* Kris!^1 Stop taunting me with that appealing blue shape!/", "obj_shapepuzzlebutton_slash_Step_0_gml_101_0")
            gml_Script_msgnextloc("\\EC* Y^1-You're just lucky this isn't online,^1 or...^1 or.../", "obj_shapepuzzlebutton_slash_Step_0_gml_102_0")
            gml_Script_msgnextloc("\\ED* ... or you wouldn't be able to taunt!!/%", "obj_shapepuzzlebutton_slash_Step_0_gml_103_0")
            var d = myPiece
            d.side = 1
        }
    }
    if (bird == -1 && (!61))
    {
        active = true
        global.facing = 2
        bird = 0
    }
}
