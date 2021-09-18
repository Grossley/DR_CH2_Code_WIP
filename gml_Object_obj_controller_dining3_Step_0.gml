var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_21, _temp_local_var_22, _temp_local_var_25, _temp_local_var_26, _temp_local_var_28, _temp_local_var_29, _temp_local_var_34, _temp_local_var_38, _temp_local_var_40, _temp_local_var_42, _temp_local_var_43, _temp_local_var_44, _temp_local_var_45, _temp_local_var_46, _temp_local_var_47, _temp_local_var_48;
if (weird == 1)
{
    layer_set_visible("TILES_Doorway", 1)
    var _temp_local_var_1 = blocker
}
if (dogcon == 0)
{
    if (con == 1)
    {
    }
    else
        var _temp_local_var_48 = 0
    layer_set_visible("TILES_BlockedEntrance", 1)
    entranceblock = gml_Script_instance_create(600, 1360, obj_solidblocksized)
    entranceblock.image_xscale = 2
    queen_monitor.turnon = 1
    queen_monitor2.turnon = 1
    global.interact = 1
    con++
    if (con == 2)
    {
    }
    else
        var _temp_local_var_47 = 0
    "queen"
    gml_Script_msgsetloc(0, "\\E1* Welcome To My Extravagant Dining Bonanza/%", "obj_controller_dining3_slash_Step_0_gml_19_0")
    // WARNING: Popz'd an empty stack.
    con = 2.5
    timer = 0
    if (con == 2.5)
    {
    }
    else
        var _temp_local_var_46 = 0
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
    if 258
    {
        other.con = 2.9
        timer = 0
    }
    if (con == 2.9)
    {
    }
    else
        var _temp_local_var_45 = 0
    timer++
    if (timer == 1)
        61
    if (timer == 1)
        gml_Script_instance_create(0, 0, obj_shake)
    if (timer == 30)
        con = 3
    if (con == 3)
    {
    }
    else
        var _temp_local_var_44 = 0
    "queen"
    gml_Script_msgsetloc(0, "\\ED* Only One Of These Delicious Platters Has The Key/", "obj_controller_dining3_slash_Step_0_gml_72_0")
    gml_Script_msgnextloc("\\E1* I Am Sure Searching Will Be An Addicting Game of Chance/%", "obj_controller_dining3_slash_Step_0_gml_73_0")
    // WARNING: Popz'd an empty stack.
    con++
    if (con == 4)
    {
    }
    else
        var _temp_local_var_43 = 0
    queen_monitor.turnoff = 1
    queen_monitor2.turnoff = 1
    "susie"
    gml_Script_msgsetloc(0, "\\EH* H-how the hell are we gonna search all these!?/%", "obj_controller_dining3_slash_Step_0_gml_82_0")
    // WARNING: Popz'd an empty stack.
    con++
    if (con == 5)
    {
    }
    else
        var _temp_local_var_42 = 0
    global.interact = 0
    dogSpawned = 0
    con++
    if (con == 6 && checkCount == 3)
    {
        global.interact = 1
        queen_monitor.turnon = 1
        queen_monitor2.turnon = 1
        "queen"
        gml_Script_msgsetloc(0, "\\E1* ERROR: Results: Key Not Found/", "obj_controller_dining3_slash_Step_0_gml_98_0")
        gml_Script_msgnextloc("\\EN* Did You Mean: Give Up?/%", "obj_controller_dining3_slash_Step_0_gml_99_0")
        attempt++
        // WARNING: Popz'd an empty stack.
        con++
    }
    if (con == 7)
    {
    }
    else
        var _temp_local_var_40 = 0
    if 1194
    {
        with (obj_dogtable_idle)
        {
            sprite_index = spr_saucernolegs
            // WARNING: Popz'd an empty stack.
            // WARNING: Popz'd an empty stack.
        }
    }
    with (obj_saucer)
    {
        // WARNING: Popz'd an empty stack.
        // WARNING: Popz'd an empty stack.
    }
    timer = 0
    con++
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
        if (timer > 5 && 258)
        {
            timer = 0
            con = 8.9
        }
    }
    if (con == 8.9)
    {
    }
    else
        var _temp_local_var_38 = 0
    timer++
    if (timer == 1)
        61
    if (timer == 1)
        gml_Script_instance_create(0, 0, obj_shake)
    if (timer == 30)
        con = 9
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
                    // WARNING: Popz'd an empty stack.
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
                    // WARNING: Popz'd an empty stack.
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
            "ralsei"
            gml_Script_msgsetloc(0, "\\EL* All the platters got mixed up again!?/%", "obj_controller_dining3_slash_Step_0_gml_210_0")
            // WARNING: Popz'd an empty stack.
            con = 5
        }
        if (attempt == 2)
        {
            "susie"
            gml_Script_msgsetloc(0, "\\EK* Hey^1, Kris^1, isn't there something else we can do!?/%", "obj_controller_dining3_slash_Step_0_gml_217_0")
            // WARNING: Popz'd an empty stack.
            con = 5
        }
    }
}
if (dogcon == 1)
{
}
else
    var _temp_local_var_34 = 0
global.interact = 1
cutscene_master = 
// WARNING: Popz'd an empty stack.
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
        moveloc
    }
    else
    {
        moveloc = "below"
        moveloc
    }
}
if (loc == "topright")
{
    if (obj_mainchara.y < 470)
    {
        moveloc = "above"
        moveloc
    }
    else
    {
        moveloc = "below"
        moveloc
    }
}
dogcon++
if (dogcon == 2)
{
    "susie"
    gml_Script_c_msgsetloc(0, "\\E6* Hey^1, there's something under this one!/%", "obj_controller_dining3_slash_Step_0_gml_246_0")
    // WARNING: Popz'd an empty stack.
    if (moveloc == "below")
    {
        su
        gml_Script_c_walkdirect(((basex - 20) - 6), (basey - 20), 12)
        ra
        gml_Script_c_walkdirect(((((basex - 12) - 40) - 12) - 20), ((basey - 20) + 2), 12)
        kr
        gml_Script_c_walkdirect((((basex + 12) + 20) + 12), ((basey - 20) + 2), 12)
        12
        kr
        "u"
        su
        "u"
        ra
        "u"
    }
    if (moveloc == "above")
    {
        su
        gml_Script_c_walkdirect(((basex - 20) - 6), ((basey - 20) - 120), 12)
        ra
        gml_Script_c_walkdirect(((((basex - 12) - 40) - 12) - 20), ((((basey - 20) + 2) - 120) - 10), 12)
        kr
        gml_Script_c_walkdirect(((((basex + 12) + 20) + 12) - 4), ((((basey - 20) + 2) - 120) + 2), 12)
        12
        kr
        "d"
        su
        "d"
        ra
        "d"
    }
    12
    gml_Script_c_instance((basex + 4), ((basey - 120) + 16), 271)
    163
    30
    gml_Script_c_var_instance(table, "x", (basex - 50))
    gml_Script_c_var_instance(table, "y", (basey - 84))
    gml_Script_c_var_instance(table, "draw_mode", 2)
    gml_Script_c_var_instance(table, "image_speed", 0.25)
    20
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
    6
    61
    gml_Script_c_var_instance(table, "draw_mode", 3)
    gml_Script_c_var_instance(table, "toss", 1)
    gml_Script_c_var_instance(table, "tossdir", "left")
    gml_Script_c_var_lerp_instance(table, "x", 1080, 1072, 4)
    gml_Script_c_var_lerp_instance(table, "y", 1200, 1184, 4)
    2
    gml_Script_c_var_lerp_instance(table, "y", 1184, 1200, 4)
    2
    gml_Script_c_var_instance(table, "image_speed", 0)
    su
    gml_Script_c_walkdirect(((basex - 46) + 20), (basey - 102), 12)
    kr
    gml_Script_c_walkdirect((((basex - 46) - 40) + 22), ((basey - 102) + 16), 12)
    ra
    gml_Script_c_walkdirect((((basex - 46) - 80) + 22), ((basey - 102) + 4), 12)
    12
    kr
    "r"
    su
    "r"
    ra
    "r"
    "susie"
    global.msc = 1187
    global.msc
    // WARNING: Popz'd an empty stack.
    kr
    "r"
    ra
    "r"
    30
    gml_Script_c_var_lerp_instance(table, "x", 1072, ((basex - 35) - 52), 8)
    gml_Script_c_var_instance(table, "depth", 800000)
    1
    gml_Script_c_panspeed(-2, 0, 8)
    5
    159
    su
    gml_Script_c_jump((((((((basex - 46) - 40) + 22) + 30) + 11) - 20) + 2), ((((((basey - 102) + 16) - 8) - 12) - 12) - 14), 20, 20)
    0
    0.25
    543
    2
    kr
    gml_Script_c_jump(((((basex - 46) - 40) + 22) + 6), ((((basey - 102) + 16) - 8) - 12), 20, 20)
    0
    0.25
    545
    2
    ra
    gml_Script_c_jump(((((((basex - 46) - 40) + 22) - 30) - 20) + 27), ((((((((basey - 102) + 16) - 8) - 16) - 12) - 6) + 33) - 8), 20, 20)
    0
    0.25
    781
    20
    su
    1
    843
    gml_Script_c_setxy(940, 1156)
    2
    kr
    1
    "d"
    2
    ra
    gml_Script_c_setxy((((((basex - 46) - 40) + 22) - 30) - 20), ((((((basey - 102) + 16) - 8) - 16) - 12) - 6))
    1505
    "susie"
    global.msc = 1188
    global.msc
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(id, "dogcon", 69)
    0
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (dogcon == 4.1)
{
    dogcon = 42069
    gml_Script_c_var_instance(table, "image_speed", 0.25)
    gml_Script_c_var_lerp_instance(table, "x", 275, 80, 6)
    6
    61
    gml_Script_c_var_instance(table, "draw_mode", 3)
    gml_Script_c_var_instance(table, "toss", 1)
    gml_Script_c_var_instance(table, "tossdir", "right")
    gml_Script_c_var_lerp_instance(table, "x", 80, 116, 4)
    gml_Script_c_var_lerp_instance(table, "y", starty, (starty - 16), 4)
    2
    gml_Script_c_var_lerp_instance(table, "y", (starty - 16), starty, 4)
    2
    gml_Script_c_var_instance(table, "image_speed", 0)
    su
    gml_Script_c_walkdirect((((basex - 46) + 20) - 60), (basey - 102), 12)
    kr
    gml_Script_c_walkdirect((((((basex - 46) - 40) + 22) + 20) + 15), ((basey - 102) + 16), 12)
    ra
    gml_Script_c_walkdirect(((((basex - 46) - 80) + 22) + 120), ((basey - 102) + 4), 12)
    12
    kr
    "l"
    su
    "l"
    ra
    "l"
    "susie"
    global.msc = 1187
    global.msc
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_lerp_instance(table, "x", 116, 270, 8)
    gml_Script_c_var_instance(table, "depth", 800000)
    1
    gml_Script_c_pan(0, 256, 22)
    4
    159
    su
    gml_Script_c_jump(((((((((basex - 46) - 40) + 22) + 30) + 11) - 20) + 2) + 30), ((((((basey - 102) + 16) - 8) - 12) - 12) - 14), 20, 20)
    0
    0.25
    543
    2
    kr
    gml_Script_c_jump((((((basex - 46) - 40) + 22) + 6) + 30), ((((basey - 102) + 16) - 8) - 12), 20, 20)
    0
    0.25
    545
    1
    ra
    gml_Script_c_jump((((((((basex - 46) - 40) + 22) - 30) - 20) + 27) + 30), ((((((((basey - 102) + 16) - 8) - 16) - 12) - 6) + 33) - 8), 20, 20)
    0
    0.25
    781
    20
    kr
    1
    "d"
    su
    1
    gml_Script_c_setxy(334, 440)
    843
    1
    ra
    gml_Script_c_setxy(((((((basex - 46) - 40) + 22) - 30) - 20) + 30), ((((((basey - 102) + 16) - 8) - 16) - 12) - 6))
    1505
    "susie"
    global.msc = 1188
    global.msc
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(id, "dogcon", 69)
    0
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(80, "x", (((basex - 35) + 50) - 52))
    gml_Script_c_var_instance(80, "y", (basey - 44))
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (dogcon == 69)
{
    with (obj_saucer)
    {
        if collider
            var _temp_local_var_21 = collider
    }
    if 142
    {
        with (obj_doorB)
            // WARNING: Popz'd an empty stack.
    }
    with (obj_dogtable_idle)
        // WARNING: Popz'd an empty stack.
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
        231
        obj_dogtable_controlled.drawcustom = 0
        var _temp_local_var_22 = key
        depth = 80
    }
    timer++
    if (timer == 20)
    {
        obj_dogtable_controlled.drawcustom = 1
        obj_dogtable_controlled.raspr = 798
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
        var _temp_local_var_25 = dogtable
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
        gml_Script_snd_play(165)
        var _temp_local_var_26 = key
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
        var _temp_local_var_28 = dogtable
        gml_Script_scr_move_to_point_over_time(640, targy, dist)
    }
    timer++
    if (timer == (dist + 10))
    {
        var _temp_local_var_29 = dogtable
        gml_Script_scr_move_to_point_over_time(640, -128, ((y - 128) / 24))
    }
    if (dogtable.y <= 160 && timer > 18)
    {
        explosion_marker = gml_Script_instance_create(dogtable.x, dogtable.y, obj_marker)
        explosion_marker.image_yscale = 2
        explosion_marker.image_xscale = 2
        explosion_marker.sprite_index = spr_realisticexplosion
        gml_Script_snd_play(188)
        layer_set_visible("TILES_Doorway", 1)
        layer_set_visible("TILES_Doorway_FG", 1)
        global.flag[381] = 1
        with (obj_doorW)
            event_user(9)
        dogcon++
    }
}
