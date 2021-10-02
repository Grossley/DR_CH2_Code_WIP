if (con == 10)
{
    mus_volume(global.currentsong[1], 0, 30)
    if instance_exists(obj_mainchara)
    {
        obj_mainchara.visible = false
        kr_actor = instance_create_depth(obj_mainchara.x, obj_mainchara.y, obj_mainchara.depth, obj_actor)
        kr_actor.sprite_index = obj_mainchara.sprite_index
        kr_actor.__x = (kris_x + 6)
        kr_actor.__y = (kris_y + 20)
        with (kr_actor)
        {
            scr_set_facing_sprites("kris")
            fun = true
            image_speed = 0.25
            scr_move_to_point_over_time(__x, __y, 10)
        }
    }
    if (instance_exists(obj_caterpillarchara) && scr_havechar(2))
    {
        su_actor = instance_create_depth(global.cinstance[0].x, global.cinstance[0].y, global.cinstance[0].depth, obj_actor)
        su_actor.__x = sus_x
        su_actor.__y = (sus_y + 8)
        with (su_actor)
        {
            sprite_index = global.cinstance[0].sprite_index
            scr_set_facing_sprites("susie")
            scr_move_to_point_over_time(__x, __y, 10)
        }
        with (global.cinstance[0])
            visible = false
    }
    with (obj_caterpillarchara)
    {
        if (visible == true)
        {
            me = scr_dark_marker_depth(x, y, 510000, sprite_index)
            visible = false
            if (name == "ralsei")
            {
                me.sprite_index = spr_ralsei_wave_start
                me.image_speed = 0.2
                with (me)
                    scr_script_delayed(gml_Script_scr_var, 15, "sprite_index", 800)
            }
        }
    }
    contimer = 0
    con = 11
}
if (con == 11)
{
    contimer++
    if (contimer >= 11)
    {
        con = 1
        with (obj_actor)
            visible = false
        with (obj_dw_leave)
        {
            if (bottom == 1)
                draw_kris = 1
        }
        with (obj_dw_leave)
        {
            if (bottom == 1)
                con = 15
            else
                con = 1
        }
    }
}
if (stopcon == 1)
{
    if (global.interact == 0 && obj_mainchara.y <= (obj_markerX.y - 8))
    {
        global.interact = 1
        stopcon = 2
        obj_mainchara.y = (obj_markerX.y - 4)
        global.facing = 0
        scr_speaker("ralsei")
        msgsetloc(0, "\\EN* Come back when you've finished your homework!/", "obj_dw_leave_slash_Step_0_gml_71_0")
        scr_anyface_next("susie", "K")
        msgnextloc("\\EK* (What's the point of having a room if you can't slack off in it?)/%", "obj_dw_leave_slash_Step_0_gml_73_0")
        d_make()
    }
}
if (stopcon == 2 && (!d_ex()))
{
    stopcon = 1
    global.interact = 0
}
