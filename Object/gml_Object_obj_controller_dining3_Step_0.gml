if (weird == 1)
{
    layer_set_visible("TILES_Doorway", 1)
    with (blocker)
        instance_destroy()
    instance_destroy()
}
if (dogcon == 0)
{
    if (con == 1 && (!gml_Script_d_ex()))
    {
        layer_set_visible("TILES_BlockedEntrance", 1)
        entranceblock = gml_Script_instance_create(600, 1360, obj_solidblocksized)
        entranceblock.image_xscale = 2
        queen_monitor.turnon = 1
        queen_monitor2.turnon = 1
        global.interact = 1
        con++
    }
    if (con == 2 && (!gml_Script_d_ex()))
    {
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "\\E1* Welcome To My Extravagant Dining Bonanza/%", "obj_controller_dining3_slash_Step_0_gml_19_0")
        gml_Script_d_make()
        con = 2.5
        timer = 0
    }
    if (con == 2.5 && (!gml_Script_d_ex()))
    {
        timer++
        if (timer == 1)
        {
            for (var i = 0; i < 7; i++)
            {
                for (var ii = 0; ii < 5; ii++)
                {
                    if ((!(ii == 0 && i == 2)) && (!(ii == 0 && i == 3)) && (!(ii == 0 && i == 4)))
                        gml_Script_instance_create((109 + (i * 160)), (240 + (ii * 240)), obj_saucer_dining3Spawner)
                }
            }
            for (i = 0; i < 6; i++)
            {
                for (ii = 0; ii < 4; ii++)
                    gml_Script_instance_create((189 + (i * 160)), (360 + (ii * 240)), obj_saucer_dining3Spawner)
            }
        }
        if instance_exists(obj_saucer)
        {
            other.con = 2.9
            timer = 0
        }
    }
    if (con == 2.9 && (!gml_Script_d_ex()))
    {
        timer++
        if (timer == 1)
            gml_Script_snd_play(snd_impact)
        if (timer == 1)
            gml_Script_instance_create(0, 0, obj_shake)
        if (timer == 30)
            con = 3
    }
    if (con == 3 && (!gml_Script_d_ex()))
    {
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "\\ED* Only One Of These Delicious Platters Has The Key/", "obj_controller_dining3_slash_Step_0_gml_72_0")
        gml_Script_msgnextloc("\\E1* I Am Sure Searching Will Be An Addicting Game of Chance/%", "obj_controller_dining3_slash_Step_0_gml_73_0")
        gml_Script_d_make()
        con++
    }
    if (con == 4 && (!gml_Script_d_ex()))
    {
        queen_monitor.turnoff = 1
        queen_monitor2.turnoff = 1
        gml_Script_scr_speaker("susie")
        gml_Script_msgsetloc(0, "\\EH* H-how the hell are we gonna search all these!?/%", "obj_controller_dining3_slash_Step_0_gml_82_0")
        gml_Script_d_make()
        con++
    }
    if (con == 5 && (!gml_Script_d_ex()))
    {
        global.interact = 0
        dogSpawned = 0
        con++
    }
    if (con == 6 && checkCount == 3)
    {
        global.interact = 1
        queen_monitor.turnon = 1
        queen_monitor2.turnon = 1
        gml_Script_scr_speaker("queen")
        gml_Script_msgsetloc(0, "\\E1* ERROR: Results: Key Not Found/", "obj_controller_dining3_slash_Step_0_gml_98_0")
        gml_Script_msgnextloc("\\EN* Did You Mean: Give Up?/%", "obj_controller_dining3_slash_Step_0_gml_99_0")
        attempt++
        gml_Script_d_make()
        con++
    }
    if (con == 7 && (!gml_Script_d_ex()))
    {
        if instance_exists(obj_dogtable_idle)
        {
            with (obj_dogtable_idle)
            {
                sprite_index = spr_saucernolegs
                gml_Script_scr_afterimage()
                instance_destroy()
            }
        }
        with (obj_saucer)
        {
            gml_Script_scr_afterimage()
            instance_destroy()
        }
        timer = 0
        con++
    }
    if (con == 8)
    {
        timer++
        if (timer == 1)
        {
            for (i = 0; i < 7; i++)
            {
                for (ii = 0; ii < 5; ii++)
                {
                    if ((!(ii == 0 && i == 2)) && (!(ii == 0 && i == 3)) && (!(ii == 0 && i == 4)))
                        gml_Script_instance_create((109 + (i * 160)), (240 + (ii * 240)), obj_saucer_dining3Spawner)
                }
            }
            for (i = 0; i < 6; i++)
            {
                for (ii = 0; ii < 4; ii++)
                    gml_Script_instance_create((189 + (i * 160)), (360 + (ii * 240)), obj_saucer_dining3Spawner)
            }
        }
        if (timer > 5 && instance_exists(obj_saucer))
        {
            timer = 0
            con = 8.9
        }
    }
    if (con == 8.9 && (!gml_Script_d_ex()))
    {
        timer++
        if (timer == 1)
            gml_Script_snd_play(snd_impact)
        if (timer == 1)
            gml_Script_instance_create(0, 0, obj_shake)
        if (timer == 30)
            con = 9
    }
    if (con == 9)
    {
        with (obj_saucer)
        {
            if (x == 909 && y == 1200 && other.dogSpawned == 0)
            {
                inst = collision_rectangle(gml_Script_camerax(), gml_Script_cameray(), (gml_Script_camerax() + 640), (gml_Script_cameray() + 480), id, 1, 0)
                if (inst == -4)
                {
                    gml_Script_instance_create((x - 16), y, obj_dogtable_idle)
                    other.dogtabletargx = x
                    other.dogtabletargy = y
                    other.dogSpawned = 1
                    instance_destroy()
                }
            }
        }
        with (obj_saucer)
        {
            if (x == 269 && y == 480 && other.dogSpawned == 0)
            {
                inst = collision_rectangle(gml_Script_camerax(), gml_Script_cameray(), (gml_Script_camerax() + 640), (gml_Script_cameray() + 480), id, 1, 0)
                if (inst == -4)
                {
                    gml_Script_instance_create((x - 16), y, obj_dogtable_idle)
                    other.dogtabletargx = x
                    other.dogtabletargy = y
                    other.dogSpawned = 1
                    instance_destroy()
                }
            }
        }
        queen_monitor.turnoff = 1
        queen_monitor2.turnoff = 1
        checkCount = 0
        if (attempt == 1 || attempt == 2)
            con = 10
        else
            con = 5
    }
    if (con == 10)
    {
        global.interact = 1
        if (attempt == 1)
        {
            gml_Script_scr_speaker("ralsei")
            gml_Script_msgsetloc(0, "\\EL* All the platters got mixed up again!?/%", "obj_controller_dining3_slash_Step_0_gml_210_0")
            gml_Script_d_make()
            con = 5
        }
        if (attempt == 2)
        {
            gml_Script_scr_speaker("susie")
            gml_Script_msgsetloc(0, "\\EK* Hey^1, Kris^1, isn't there something else we can do!?/%", "obj_controller_dining3_slash_Step_0_gml_217_0")
            gml_Script_d_make()
            con = 5
        }
    }
}
if (dogcon == 1 && (!gml_Script_d_ex()))
{
    global.interact = 1
    cutscene_master = gml_Script_scr_cutscene_make()
    gml_Script_scr_maincharacters_actors()
    table = instance_find(obj_dogtable_idle, 0)
    basex = (obj_dogtable_idle.x + 50)
    basey = (obj_dogtable_idle.y + 84)
    starty = obj_dogtable_idle.y
    if (basex >= 909)
        loc = "botright"
    else
        loc = "topright"
    if (loc == "botright")
    {
        if (obj_mainchara.y < 1190)
        {
            moveloc = "above"
            show_debug_message(moveloc)
        }
        else
        {
            moveloc = "below"
            show_debug_message(moveloc)
        }
    }
    if (loc == "topright")
    {
        if (obj_mainchara.y < 470)
        {
            moveloc = "above"
            show_debug_message(moveloc)
        }
        else
        {
            moveloc = "below"
            show_debug_message(moveloc)
        }
    }
    dogcon++
}
if (dogcon == 2)
{
    gml_Script_c_speaker("susie")
    gml_Script_c_msgsetloc(0, "\\E6* Hey^1, there's something under this one!/%", "obj_controller_dining3_slash_Step_0_gml_246_0")
    gml_Script_c_talk_wait()
    if (moveloc == "below")
    {
        gml_Script_c_sel(su)
        gml_Script_c_walkdirect(((basex - 20) - 6), (basey - 20), 12)
        gml_Script_c_sel(ra)
        gml_Script_c_walkdirect(((((basex - 12) - 40) - 12) - 20), ((basey - 20) + 2), 12)
        gml_Script_c_sel(kr)
        gml_Script_c_walkdirect((((basex + 12) + 20) + 12), ((basey - 20) + 2), 12)
        gml_Script_c_wait(12)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("u")
        gml_Script_c_sel(su)
        gml_Script_c_facing("u")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("u")
    }
    if (moveloc == "above")
    {
        gml_Script_c_sel(su)
        gml_Script_c_walkdirect(((basex - 20) - 6), ((basey - 20) - 120), 12)
        gml_Script_c_sel(ra)
        gml_Script_c_walkdirect(((((basex - 12) - 40) - 12) - 20), ((((basey - 20) + 2) - 120) - 10), 12)
        gml_Script_c_sel(kr)
        gml_Script_c_walkdirect(((((basex + 12) + 20) + 12) - 4), ((((basey - 20) + 2) - 120) + 2), 12)
        gml_Script_c_wait(12)
        gml_Script_c_sel(kr)
        gml_Script_c_facing("d")
        gml_Script_c_sel(su)
        gml_Script_c_facing("d")
        gml_Script_c_sel(ra)
        gml_Script_c_facing("d")
    }
    gml_Script_c_wait(12)
    gml_Script_c_instance((basex + 4), ((basey - 120) + 16), 271)
    gml_Script_c_soundplay(snd_b)
    gml_Script_c_wait(30)
    gml_Script_c_var_instance(table, "x", (basex - 50))
    gml_Script_c_var_instance(table, "y", (basey - 84))
    gml_Script_c_var_instance(table, "draw_mode", 2)
    gml_Script_c_var_instance(table, "image_speed", 0.25)
    gml_Script_c_wait(20)
    if (loc == "botright")
        dogcon = 3.1
    else
        dogcon = 4.1
}
if (dogcon == 3.1)
{
    dogcon = 42069
    gml_Script_c_var_instance(table, "image_speed", 0.25)
    gml_Script_c_var_lerp_instance(table, "x", 909, 1090, 6)
    gml_Script_c_wait(6)
    gml_Script_c_soundplay(snd_impact)
    gml_Script_c_var_instance(table, "draw_mode", 3)
    gml_Script_c_var_instance(table, "toss", 1)
    gml_Script_c_var_instance(table, "tossdir", "left")
    gml_Script_c_var_lerp_instance(table, "x", 1080, 1072, 4)
    gml_Script_c_var_lerp_instance(table, "y", 1200, 1184, 4)
    gml_Script_c_wait(2)
    gml_Script_c_var_lerp_instance(table, "y", 1184, 1200, 4)
    gml_Script_c_wait(2)
    gml_Script_c_var_instance(table, "image_speed", 0)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect(((basex - 46) + 20), (basey - 102), 12)
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect((((basex - 46) - 40) + 22), ((basey - 102) + 16), 12)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect((((basex - 46) - 80) + 22), ((basey - 102) + 4), 12)
    gml_Script_c_wait(12)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_sel(su)
    gml_Script_c_facing("r")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_speaker("susie")
    global.msc = 1187
    gml_Script_scr_text(global.msc)
    gml_Script_c_talk_wait()
    gml_Script_c_sel(kr)
    gml_Script_c_facing("r")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("r")
    gml_Script_c_wait(30)
    gml_Script_c_var_lerp_instance(table, "x", 1072, ((basex - 35) - 52), 8)
    gml_Script_c_var_instance(table, "depth", 800000)
    gml_Script_c_pannable(true)
    gml_Script_c_panspeed(-2, 0, 8)
    gml_Script_c_wait(5)
    gml_Script_c_soundplay(snd_jump)
    gml_Script_c_sel(su)
    gml_Script_c_jump((((((((basex - 46) - 40) + 22) + 30) + 11) - 20) + 2), ((((((basey - 102) + 16) - 8) - 12) - 12) - 14), 20, 20)
    gml_Script_c_autowalk(false)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(spr_susie_dw_jump_ball)
    gml_Script_c_wait(2)
    gml_Script_c_sel(kr)
    gml_Script_c_jump(((((basex - 46) - 40) + 22) + 6), ((((basey - 102) + 16) - 8) - 12), 20, 20)
    gml_Script_c_autowalk(false)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(spr_kris_jump_ball)
    gml_Script_c_wait(2)
    gml_Script_c_sel(ra)
    gml_Script_c_jump(((((((basex - 46) - 40) + 22) - 30) - 20) + 27), ((((((((basey - 102) + 16) - 8) - 16) - 12) - 6) + 33) - 8), 20, 20)
    gml_Script_c_autowalk(false)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(spr_ralsei_jump_ball)
    gml_Script_c_wait(20)
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(true)
    gml_Script_c_sprite(spr_susie_sheeh)
    gml_Script_c_setxy(940, 1156)
    gml_Script_c_wait(2)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(true)
    gml_Script_c_facing("d")
    gml_Script_c_wait(2)
    gml_Script_c_sel(ra)
    gml_Script_c_setxy((((((basex - 46) - 40) + 22) - 30) - 20), ((((((basey - 102) + 16) - 8) - 16) - 12) - 6))
    gml_Script_c_sprite(spr_ralsei_hurt)
    gml_Script_c_speaker("susie")
    global.msc = 1188
    gml_Script_scr_text(global.msc)
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "dogcon", 69)
    gml_Script_c_pannable(false)
    gml_Script_c_actortokris()
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (dogcon == 4.1)
{
    dogcon = 42069
    gml_Script_c_var_instance(table, "image_speed", 0.25)
    gml_Script_c_var_lerp_instance(table, "x", 275, 80, 6)
    gml_Script_c_wait(6)
    gml_Script_c_soundplay(snd_impact)
    gml_Script_c_var_instance(table, "draw_mode", 3)
    gml_Script_c_var_instance(table, "toss", 1)
    gml_Script_c_var_instance(table, "tossdir", "right")
    gml_Script_c_var_lerp_instance(table, "x", 80, 116, 4)
    gml_Script_c_var_lerp_instance(table, "y", starty, (starty - 16), 4)
    gml_Script_c_wait(2)
    gml_Script_c_var_lerp_instance(table, "y", (starty - 16), starty, 4)
    gml_Script_c_wait(2)
    gml_Script_c_var_instance(table, "image_speed", 0)
    gml_Script_c_sel(su)
    gml_Script_c_walkdirect((((basex - 46) + 20) - 60), (basey - 102), 12)
    gml_Script_c_sel(kr)
    gml_Script_c_walkdirect((((((basex - 46) - 40) + 22) + 20) + 15), ((basey - 102) + 16), 12)
    gml_Script_c_sel(ra)
    gml_Script_c_walkdirect(((((basex - 46) - 80) + 22) + 120), ((basey - 102) + 4), 12)
    gml_Script_c_wait(12)
    gml_Script_c_sel(kr)
    gml_Script_c_facing("l")
    gml_Script_c_sel(su)
    gml_Script_c_facing("l")
    gml_Script_c_sel(ra)
    gml_Script_c_facing("l")
    gml_Script_c_speaker("susie")
    global.msc = 1187
    gml_Script_scr_text(global.msc)
    gml_Script_c_talk_wait()
    gml_Script_c_var_lerp_instance(table, "x", 116, 270, 8)
    gml_Script_c_var_instance(table, "depth", 800000)
    gml_Script_c_pannable(true)
    gml_Script_c_pan(0, 256, 22)
    gml_Script_c_wait(4)
    gml_Script_c_soundplay(snd_jump)
    gml_Script_c_sel(su)
    gml_Script_c_jump(((((((((basex - 46) - 40) + 22) + 30) + 11) - 20) + 2) + 30), ((((((basey - 102) + 16) - 8) - 12) - 12) - 14), 20, 20)
    gml_Script_c_autowalk(false)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(spr_susie_dw_jump_ball)
    gml_Script_c_wait(2)
    gml_Script_c_sel(kr)
    gml_Script_c_jump((((((basex - 46) - 40) + 22) + 6) + 30), ((((basey - 102) + 16) - 8) - 12), 20, 20)
    gml_Script_c_autowalk(false)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(spr_kris_jump_ball)
    gml_Script_c_wait(1)
    gml_Script_c_sel(ra)
    gml_Script_c_jump((((((((basex - 46) - 40) + 22) - 30) - 20) + 27) + 30), ((((((((basey - 102) + 16) - 8) - 16) - 12) - 6) + 33) - 8), 20, 20)
    gml_Script_c_autowalk(false)
    gml_Script_c_imagespeed(0.25)
    gml_Script_c_sprite(spr_ralsei_jump_ball)
    gml_Script_c_wait(20)
    gml_Script_c_sel(kr)
    gml_Script_c_autowalk(true)
    gml_Script_c_facing("d")
    gml_Script_c_sel(su)
    gml_Script_c_autowalk(true)
    gml_Script_c_setxy(334, 440)
    gml_Script_c_sprite(spr_susie_sheeh)
    gml_Script_c_wait(1)
    gml_Script_c_sel(ra)
    gml_Script_c_setxy(((((((basex - 46) - 40) + 22) - 30) - 20) + 30), ((((((basey - 102) + 16) - 8) - 16) - 12) - 6))
    gml_Script_c_sprite(spr_ralsei_hurt)
    gml_Script_c_speaker("susie")
    global.msc = 1188
    gml_Script_scr_text(global.msc)
    gml_Script_c_talk_wait()
    gml_Script_c_var_instance(id, "dogcon", 69)
    gml_Script_c_pannable(false)
    gml_Script_c_actortokris()
    gml_Script_c_var_instance(80, "x", (((basex - 35) + 50) - 52))
    gml_Script_c_var_instance(80, "y", (basey - 44))
    gml_Script_c_actortocaterpillar()
    gml_Script_c_terminatekillactors()
}
if (dogcon == 69)
{
    with (obj_saucer)
    {
        if gml_Script_i_ex(collider)
        {
            with (collider)
                instance_destroy()
        }
    }
    if instance_exists(obj_doorB)
    {
        with (obj_doorB)
            instance_destroy()
    }
    with (obj_dogtable_idle)
        instance_destroy()
    if (loc == "botright")
        dogtable = gml_Script_instance_create((((basex - 35) + 50) - 52), (basey - 44), obj_dogtable_controlled)
    else
        dogtable = gml_Script_instance_create((((basex - 35) + 52) - 22), (basey - 44), obj_dogtable_controlled)
    global.flag[7] = 1
    global.interact = 0
    with (obj_caterpillarchara)
        visible = false
    with (obj_mainchara)
        visible = false
    dogcon++
}
if (dogcon == 70)
    timer = 0
if (dogcon == 71)
{
    if (timer == 0)
    {
        gml_Script_snd_play(snd_sparkle_glock)
        obj_dogtable_controlled.drawcustom = 0
        with (key)
            depth = 80
        with (key)
            gml_Script_scr_move_to_point_over_time((other.dogtable.x - (sprite_width / 2)), (other.dogtable.y - 228), 16)
    }
    timer++
    if (timer == 20)
    {
        obj_dogtable_controlled.drawcustom = 1
        obj_dogtable_controlled.raspr = 799
        gml_Script_scr_speaker("ralsei")
        gml_Script_msgsetloc(0, "\\EJ* There's the key!!^1! Now we just have to--/%", "obj_controller_dining3_slash_Step_0_gml_539_0")
        gml_Script_d_make()
        dogcon = 72
        timer = 0
    }
}
if (dogcon > 69)
{
    if gml_Script_i_ex(key)
    {
        sparkletimer++
        if ((sparkletimer % 4) == 0)
        {
            for (i = 0; i < 1; i++)
            {
                sparkle[i] = gml_Script_instance_create((key.x + 50), (key.y + 42), obj_afterimage)
                sparkle[i].sprite_index = spr_sparestar_anim
                sparkle[i].fadeSpeed = choose(0.01, 0.02)
                sparkle[i].image_xscale = 2
                sparkle[i].image_yscale = 2
                sparkle[i].image_speed = 0.5
                sparkle[i].hspeed = random_range(-3, 3)
                sparkle[i].friction = 0.05
                sparkle[i].gravity = 0.1
                sparkle[i].depth = (key.depth + 1)
            }
        }
    }
}
if (dogcon == 72 && (!gml_Script_d_ex()))
{
    timer++
    if (timer == 29)
    {
        with (dogtable)
            gml_Script_scr_move_to_point_over_time(x, (y - 128), 4)
    }
    if (timer == 33)
    {
        for (i = 0; i < 8; i++)
        {
            shard[i] = gml_Script_instance_create((key.x + 50), (key.y + 42), obj_afterimage)
            shard[i].image_xscale = 2
            shard[i].image_yscale = 2
            shard[i].sprite_index = spr_keyShard
            shard[i].direction = ((i / 8) * 360)
            shard[i].image_angle = (shard[i].direction + random_range(-30, 30))
            shard[i].speed = random_range(6, 10)
            shard[i].depth = (key.depth + 1)
        }
        gml_Script_snd_play(snd_break2)
        with (key)
            instance_destroy()
    }
    if (timer == 50)
    {
        gml_Script_scr_speaker("ralsei")
        gml_Script_msgsetloc(0, "\\EL* It BROKE IT?!/%", "obj_controller_dining3_slash_Step_0_gml_603_0")
        gml_Script_d_make()
        dogcon++
        timer = 0
    }
}
if (dogcon == 73 && (!gml_Script_d_ex()))
{
    var dist = round((abs((dogtable.x - 64)) / 16))
    dist = clamp(dist, 4, 16)
    if (dogtable.y < 320)
        var targy = 360
    else
        targy = dogtable.y
    if (timer == 0)
    {
        with (dogtable)
            gml_Script_scr_move_to_point_over_time(640, targy, dist)
    }
    timer++
    if (timer == (dist + 10))
    {
        with (dogtable)
            gml_Script_scr_move_to_point_over_time(640, -128, ((y - 128) / 24))
    }
    if (dogtable.y <= 160 && timer > 18)
    {
        explosion_marker = gml_Script_instance_create(dogtable.x, dogtable.y, obj_marker)
        explosion_marker.image_yscale = 2
        explosion_marker.image_xscale = 2
        explosion_marker.sprite_index = spr_realisticexplosion
        gml_Script_snd_play(snd_badexplosion)
        layer_set_visible("TILES_Doorway", 1)
        layer_set_visible("TILES_Doorway_FG", 1)
        global.flag[381] = 1
        with (obj_doorW)
            event_user(9)
        dogcon++
    }
}
