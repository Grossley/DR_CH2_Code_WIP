var _temp_local_var_1, _temp_local_var_2, _temp_local_var_3, _temp_local_var_11;
if (obj_mainchara.x > x && con == -1)
{
    con = 1
    global.interact = 1
    gml_Script_snd_volume(global.currentsong[1], 0, 30)
}
if (con == 1)
{
    con = 2
    with (obj_mainchara)
        visible = false
    global.facing = 0
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    qu = 3
    qu_actor = gml_Script_instance_create(1410, 188, obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_cutscene_13_queen_drunk_left
    qu
    "x"
    ar = 4
    ar_actor = gml_Script_instance_create(1310, -180, obj_actor)
    gml_Script_scr_actor_setup(ar, ar_actor, "arcade")
    ar_actor.sprite_index = spr_cutscene_13_arcade
    ar_actor.depthbonus = 4000
    ar
    0
    st = 5
    st_actor = gml_Script_instance_create(1230, -300, obj_actor)
    gml_Script_scr_actor_setup(st, st_actor, "statue")
    st_actor.sprite_index = spr_cutscene_13_berdly_statue
    st_actor.depthbonus = 2000
    st
    0
    be = 6
    be_actor = gml_Script_instance_create(1250, -200, obj_actor)
    gml_Script_scr_actor_setup(be, be_actor, "berdly")
    be_actor.sprite_index = spr_berdly_walk_down_dw
    save_object[0] = cutscene_master
    var _temp_local_var_2 = id
}
if (con == 2)
    var _temp_local_var_3 = 1
else
    _temp_local_var_2 = id
if 1
{
    con = 3
    gml_Script_c_soundplay(282)
    gml_Script_c_sel(no)
    gml_Script_c_sprite(716)
    gml_Script_c_emote("!", 30)
    gml_Script_c_wait(30)
    gml_Script_c_wait(15)
    gml_Script_c_speaker("noelle")
    gml_Script_c_msgsetloc(0, "\\EE* Kris^1, it's Queen..^1. She's right over there!/", "obj_ch2_scene13_slash_Step_0_gml_70_0")
    gml_Script_c_msgnextloc("\\E8* C-Can you distract her somehow!!?/%", "obj_ch2_scene13_slash_Step_0_gml_71_0")
    gml_Script_c_walk("l", 7, 40)
    gml_Script_c_delaycmd(41, "sprite", 98)
    gml_Script_c_delaycmd4(42, "setxy", 600, 175, 0, 0)
    kr
    gml_Script_c_walkdirect(1170, 239, 20)
    1
    gml_Script_c_panspeed_wait(10, 0, 24)
    5
    qu
    20
    "x"
    gml_Script_c_emote("!", 20)
    30
    gml_Script_c_mus2("initloop", "queen.ogg", 0)
    "queen"
    "bottom"
    gml_Script_c_msgsetloc(0, "\\ED* Oh/", "obj_ch2_scene13_slash_Step_0_gml_95_0")
    gml_Script_c_msgnextloc("\\EN* Lmao/", "obj_ch2_scene13_slash_Step_0_gml_96_0")
    gml_Script_c_msgnextloc("\\E9* You're here/%", "obj_ch2_scene13_slash_Step_0_gml_97_0")
    // WARNING: Popz'd an empty stack.
    0
    92
    gml_Script_c_arg_objectxy(qu_actor, -5, 0)
    gml_Script_c_setxy(x, y)
    289
    0
    15
    0
    15
    94
    gml_Script_c_arg_objectxy(qu_actor, 5, 0)
    gml_Script_c_setxy(x, y)
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* Sorry Kris While I've Been Looking For Noelle/", "obj_ch2_scene13_slash_Step_0_gml_119_0")
    gml_Script_c_msgnextloc("\\E9* I've Had Like 4 Of These All-Ages Appropriate/%", "obj_ch2_scene13_slash_Step_0_gml_120_0")
    // WARNING: Popz'd an empty stack.
    88
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* Glasses of Pure Battery Acid/%", "obj_ch2_scene13_slash_Step_0_gml_126_0")
    // WARNING: Popz'd an empty stack.
    292
    89
    gml_Script_c_arg_objectxy(qu_actor, -70, -30)
    gml_Script_c_setxy(x, y)
    1
    30
    8
    59
    5
    90
    gml_Script_c_var_instance(id, "wineglasscon", 1)
    0
    30
    282
    62
    0.25
    gml_Script_c_arg_objectxy(qu_actor, 70, 30)
    gml_Script_c_setxy(x, y)
    55
    0
    15
    770
    "x"
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* Don't Worry That Was My Throwing Glass It's Safe/%", "obj_ch2_scene13_slash_Step_0_gml_162_0")
    // WARNING: Popz'd an empty stack.
    30
    "queen"
    gml_Script_c_msgsetloc(0, "\\ED* Look Kris/%", "obj_ch2_scene13_slash_Step_0_gml_169_0")
    // WARNING: Popz'd an empty stack.
    "x"
    1
    gml_Script_c_walkdirect((obj_mainchara.x + 315), 188, 15)
    "queen"
    gml_Script_c_msgsetloc(0, "\\E9* Kris Cross Applesauce/%", "obj_ch2_scene13_slash_Step_0_gml_177_0")
    // WARNING: Popz'd an empty stack.
    4
    gml_Script_c_soundplay_x(64, 0.5, 7)
    gml_Script_c_soundplay_x(340, 0.35, 2.5)
    8
    gml_Script_c_soundplay_x(64, 0.5, 7)
    gml_Script_c_soundplay_x(340, 0.35, 2)
    1
    // WARNING: Popz'd an empty stack.
    769
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* Now That We Are Trucies I Feel Like We Are On The Same/%", "obj_ch2_scene13_slash_Step_0_gml_185_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walkdirect((obj_mainchara.x + 200), 188, 30)
    4
    gml_Script_c_soundplay_x(64, 0.5, 7)
    gml_Script_c_soundplay_x(340, 0.25, 2.2)
    8
    gml_Script_c_soundplay_x(64, 0.5, 7)
    gml_Script_c_soundplay_x(340, 0.35, 1)
    8
    gml_Script_c_soundplay_x(64, 0.5, 7)
    gml_Script_c_soundplay_x(340, 0.25, 1.8)
    10
    // WARNING: Popz'd an empty stack.
    "queen"
    gml_Script_c_msgsetloc(0, "\\E9* Mathematical Wavelength/%", "obj_ch2_scene13_slash_Step_0_gml_194_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walkdirect_wait((obj_mainchara.x + 164), 188, 20)
    1
    kr
    0
    qu
    0
    105
    216
    gml_Script_c_arg_objectxy(qu_actor, -45, -15)
    gml_Script_c_setxy(x, y)
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* You Get Me Kris/%", "obj_ch2_scene13_slash_Step_0_gml_211_0")
    // WARNING: Popz'd an empty stack.
    15
    // WARNING: Popz'd an empty stack.
    106
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* You Do Not Do Crazy Things Like \"Have Opinions\"/", "obj_ch2_scene13_slash_Step_0_gml_219_0")
    gml_Script_c_msgnextloc("\\EB* Or Scream When I Capture You/%", "obj_ch2_scene13_slash_Step_0_gml_220_0")
    // WARNING: Popz'd an empty stack.
    107
    "queen"
    gml_Script_c_msgsetloc(0, "\\E9* Or Tell Me Horrible Plans For Smartboy Theme Park/%", "obj_ch2_scene13_slash_Step_0_gml_226_0")
    // WARNING: Popz'd an empty stack.
    104
    // WARNING: Popz'd an empty stack.
    "queen"
    gml_Script_c_msgsetloc(0, "\\E5* I Just Cannot Compute It/", "obj_ch2_scene13_slash_Step_0_gml_233_0")
    gml_Script_c_msgnextloc("\\E5* Why Everyone Else Is So..^1. Ungrateful/%", "obj_ch2_scene13_slash_Step_0_gml_234_0")
    // WARNING: Popz'd an empty stack.
    kr
    1
    qu
    771
    gml_Script_c_setxy((obj_mainchara.x + 150), 188)
    1
    gml_Script_c_walkdirect_wait((obj_mainchara.x + 190), 188, 5)
    5
    0
    gml_Script_c_setxy((obj_mainchara.x + 180), 152)
    0
    89
    6
    289
    "x"
    1
    283
    // WARNING: Popz'd an empty stack.
    15
    1
    15
    188
    gml_Script_c_var_instance(id, "wineglasscon", -1)
    gml_Script_c_var_instance(glassexplosion, "x", 1340)
    gml_Script_c_var_instance(glassexplosion, "y", 295)
    gml_Script_c_var_instance(glassexplosion, "visible", 1)
    gml_Script_c_var_instance(glassexplosion, "image_index", 0)
    5
    0
    90
    0
    5
    gml_Script_c_var_instance(glassexplosion, "visible", 0)
    50
    0
    "x"
    gml_Script_c_setxy((obj_mainchara.x + 220), 188)
    "r"
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* Whoops That Was My Extra Dangerous Glass/%", "obj_ch2_scene13_slash_Step_0_gml_284_0")
    // WARNING: Popz'd an empty stack.
    30
    "d"
    "queen"
    gml_Script_c_msgsetloc(0, "\\ED* Kris/%", "obj_ch2_scene13_slash_Step_0_gml_292_0")
    // WARNING: Popz'd an empty stack.
    771
    "queen"
    gml_Script_c_msgsetloc(0, "\\EP* I Just Want To Make Everyone Smile/%", "obj_ch2_scene13_slash_Step_0_gml_298_0")
    // WARNING: Popz'd an empty stack.
    1
    gml_Script_c_walkdirect((obj_mainchara.x + 350), 188, 30)
    "queen"
    gml_Script_c_msgsetloc(0, "\\E9* And If I Become An Evil Villain To Accomplish That/%", "obj_ch2_scene13_slash_Step_0_gml_305_0")
    // WARNING: Popz'd an empty stack.
    30
    // WARNING: Popz'd an empty stack.
    20
    "queen"
    gml_Script_c_msgsetloc(0, "\\ED* Is That Bad?/%", "obj_ch2_scene13_slash_Step_0_gml_313_0")
    // WARNING: Popz'd an empty stack.
    "u"
    40
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* It's Okay/", "obj_ch2_scene13_slash_Step_0_gml_320_0")
    gml_Script_c_msgnextloc("\\E1* You Do Not Have To Answer/%", "obj_ch2_scene13_slash_Step_0_gml_321_0")
    // WARNING: Popz'd an empty stack.
    1
    0
    62
    292
    0.3
    30
    0
    15
    "queen"
    gml_Script_c_msgsetloc(0, "\\EN* You Would Be Wrong/%", "obj_ch2_scene13_slash_Step_0_gml_337_0")
    // WARNING: Popz'd an empty stack.
    770
    "queen"
    gml_Script_c_msgsetloc(0, "\\E5* But Kris..^1. While We're Still Trucies/", "obj_ch2_scene13_slash_Step_0_gml_343_0")
    gml_Script_c_msgnextloc("\\ED* Maybe We Could..^1. Make The Most Of It/%", "obj_ch2_scene13_slash_Step_0_gml_344_0")
    // WARNING: Popz'd an empty stack.
    ar
    45
    gml_Script_c_walkdirect_wait(1310, 250, 20)
    61
    // WARNING: Popz'd an empty stack.
    gml_Script_c_delaycmd(15, "sprite", 109)
    kr
    "u"
    qu
    "u"
    "x"
    15
    172
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* We Could Play That Game Again/", "obj_ch2_scene13_slash_Step_0_gml_365_0")
    gml_Script_c_msgnextloc("\\E9* Wasn't That..^1. Fun^1, Kris/%", "obj_ch2_scene13_slash_Step_0_gml_366_0")
    // WARNING: Popz'd an empty stack.
    kr
    gml_Script_c_walkdirect(1255, 218, 40)
    qu
    1
    "x"
    gml_Script_c_walkdirect_wait(1330, 166, 40)
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* Just You And Me/%", "obj_ch2_scene13_slash_Step_0_gml_379_0")
    // WARNING: Popz'd an empty stack.
    30
    // WARNING: Popz'd an empty stack.
    "queen"
    gml_Script_c_msgsetloc(0, "\\EQ* Having A Good Time/", "obj_ch2_scene13_slash_Step_0_gml_385_0")
    gml_Script_c_msgnextloc("\\ED* No One Else To Get In The Way/%", "obj_ch2_scene13_slash_Step_0_gml_386_0")
    // WARNING: Popz'd an empty stack.
    st
    gml_Script_c_walkdirect(1232, 30, 15)
    8
    kr
    "u"
    0
    qu
    "u"
    "x"
    0
    ar
    gml_Script_c_var_lerp("image_yscale", 2, 0, 6)
    gml_Script_c_var_lerp("image_xscale", 2, 6, 6)
    40
    25
    kr
    // WARNING: Popz'd an empty stack.
    qu
    // WARNING: Popz'd an empty stack.
    188
    5
    kr
    gml_Script_c_walkdirect(1180, 238, 2)
    qu
    gml_Script_c_walkdirect(1450, 186, 2)
    // WARNING: Popz'd an empty stack.
}
if (wineglasscon == 1)
{
    glass_marker = gml_Script_scr_dark_marker(qu_actor.x, (qu_actor.y + 6), 2062)
    glass_marker.depth = (qu_actor.depth + 500)
    wineglasscon = 0
}
else if (wineglasscon == -1)
{
    for (var i = 0; i < 6; i++)
    {
        var _xoff = (((0.5235987755982988 * i) * 50) + 10)
        var _yoff = ((0.5235987755982988 * i) * -15)
        var _shard = gml_Script_instance_create((glass_marker.x + _xoff), ((glass_marker.y + 142) + _yoff), obj_particle_effect)
        _shard.destroyoffscreen = 1
        _shard.sprite_index = spr_cutscene_13_broken_shards
        _shard.image_speed = 0
        _shard.image_index = i
        _shard.direction = point_direction(glass_marker.x, (glass_marker.y + 142), _shard.x, _shard.y)
        _shard.image_xscale = 2
        _shard.image_yscale = 2
        _shard.gravity = 1
        _shard.speed = random_range(25, 35)
        _shard.rotation = choose(-90, 90)
    }
    glass_marker
    wineglasscon = 0
}
if (con == 3 && customcon == 1)
{
    explodetimer++
    if (explodetimer == 1)
    {
        for (i = 0; i < 6; i++)
        {
            explosion_marker[i] = gml_Script_instance_create((1220 + (i * 40)), 250, obj_marker)
            explosion_marker[i].depth = (st_actor.depth - 5)
            explosion_marker[i].sprite_index = spr_realisticexplosion
        }
    }
    else
    {
        with (obj_marker)
        {
            if (sprite_index == spr_realisticexplosion && image_index == 16)
                // WARNING: Popz'd an empty stack.
        }
    }
    if (explodetimer >= 17)
    {
        con = 4
        customcon = 0
        // WARNING: Popz'd an empty stack.
    }
}
if (con == 4)
{
    con = 5
    45
    be
    93
    2
    0
    gml_Script_c_walkdirect(1230, 230, 60)
    45
    kr
    "r"
    qu
    "x"
    "l"
    be
    16
    0
    "r"
    39
    30
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E6* Queen!^1! I've been looking everywhere to show you this!!/%", "obj_ch2_scene13_slash_Step_0_gml_498_0")
    // WARNING: Popz'd an empty stack.
    be
    3331
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EJ* A monument to our greatness..^1. Together./", "obj_ch2_scene13_slash_Step_0_gml_507_0")
    gml_Script_c_facenext("queen", "I")
    gml_Script_c_msgnextloc("\\EI* Oh/%", "obj_ch2_scene13_slash_Step_0_gml_510_0")
    // WARNING: Popz'd an empty stack.
    qu
    "u"
    "x"
    gml_Script_c_facenext("queen", "I")
    gml_Script_c_msgsetloc(0, "* Um/%", "obj_ch2_scene13_slash_Step_0_gml_518_0")
    // WARNING: Popz'd an empty stack.
    "l"
    "x"
    gml_Script_c_facenext("queen", "I")
    gml_Script_c_msgsetloc(0, "\\s0* Oh%%", "obj_ch2_scene13_slash_Step_0_gml_525_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_facenext("queen", "I")
    gml_Script_c_msgsetloc(0, "\\s0* Uh%%", "obj_ch2_scene13_slash_Step_0_gml_529_0")
    // WARNING: Popz'd an empty stack.
    "u"
    gml_Script_c_facenext("queen", "I")
    gml_Script_c_msgsetloc(0, "\\s0* It%%", "obj_ch2_scene13_slash_Step_0_gml_535_0")
    // WARNING: Popz'd an empty stack.
    "l"
    gml_Script_c_facenext("queen", "I")
    gml_Script_c_msgsetloc(0, "\\s0* It's%%", "obj_ch2_scene13_slash_Step_0_gml_541_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_facenext("queen", "I")
    gml_Script_c_msgsetloc(0, "\\s0* Oh%%", "obj_ch2_scene13_slash_Step_0_gml_545_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_facenext("queen", "I")
    gml_Script_c_msgsetloc(0, "\\s0* Well%%", "obj_ch2_scene13_slash_Step_0_gml_549_0")
    // WARNING: Popz'd an empty stack.
    "u"
    gml_Script_c_facenext("queen", "I")
    gml_Script_c_msgsetloc(0, "\\s0* Um%%", "obj_ch2_scene13_slash_Step_0_gml_555_0")
    // WARNING: Popz'd an empty stack.
    "l"
    gml_Script_c_facenext("queen", "I")
    gml_Script_c_msgsetloc(0, "\\s0* Mmm%%", "obj_ch2_scene13_slash_Step_0_gml_561_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_facenext("queen", "I")
    gml_Script_c_msgsetloc(0, "\\s0* It's%%", "obj_ch2_scene13_slash_Step_0_gml_565_0")
    // WARNING: Popz'd an empty stack.
    "r"
    "queen"
    gml_Script_c_msgsetloc(0, "\\ED* How Do I Put This/", "obj_ch2_scene13_slash_Step_0_gml_571_0")
    gml_Script_c_msgnextloc("\\E1* Very.../", "obj_ch2_scene13_slash_Step_0_gml_572_0")
    gml_Script_c_msgnextloc("\\ED* .../%", "obj_ch2_scene13_slash_Step_0_gml_573_0")
    // WARNING: Popz'd an empty stack.
    qu
    "l"
    "queen"
    gml_Script_c_msgsetloc(0, "\\EK* Smart/", "obj_ch2_scene13_slash_Step_0_gml_581_0")
    gml_Script_c_msgnextloc("\\EK* So Smart You Are/", "obj_ch2_scene13_slash_Step_0_gml_582_0")
    gml_Script_c_msgnextloc("\\EK* I Love Tolerating You/%", "obj_ch2_scene13_slash_Step_0_gml_583_0")
    // WARNING: Popz'd an empty stack.
    be
    3343
    // WARNING: Popz'd an empty stack.
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EL* Haha!^1! I KNEW you'd be enamored. Such perfect taste./%", "obj_ch2_scene13_slash_Step_0_gml_592_0")
    // WARNING: Popz'd an empty stack.
    qu
    "u"
    "x"
    "queen"
    gml_Script_c_msgsetloc(0, "\\EK* Very Cool Statues/", "obj_ch2_scene13_slash_Step_0_gml_601_0")
    gml_Script_c_msgnextloc("\\ED* I Did Not Know You Had..^1. Nipples/%", "obj_ch2_scene13_slash_Step_0_gml_602_0")
    // WARNING: Popz'd an empty stack.
    be
    3331
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E6* Haha..^1. I will SOON..^1. in our IDEAL WORLD./%", "obj_ch2_scene13_slash_Step_0_gml_610_0")
    // WARNING: Popz'd an empty stack.
    be
    "r"
    "berdly"
    gml_Script_c_msgsetloc(0, "\\EE* Kris^1, feel free to admire our artisanship./%", "obj_ch2_scene13_slash_Step_0_gml_617_0")
    // WARNING: Popz'd an empty stack.
    "berdly"
    gml_Script_c_msgsetloc(0, "\\E1* Queen and I have PLANs to consider./", "obj_ch2_scene13_slash_Step_0_gml_621_0")
    qu
    "x"
    "l"
    gml_Script_c_facenext("queen", "1")
    gml_Script_c_msgnextloc("\\E1* Haha Yes Oooh So Good Looking Forward To That/%", "obj_ch2_scene13_slash_Step_0_gml_628_0")
    // WARNING: Popz'd an empty stack.
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* MMmmm Yum Yum Yum Yum Yum/%", "obj_ch2_scene13_slash_Step_0_gml_632_0")
    // WARNING: Popz'd an empty stack.
    "r"
    "queen"
    gml_Script_c_msgsetloc(0, "\\ED* Let's Go Burghley/%", "obj_ch2_scene13_slash_Step_0_gml_638_0")
    // WARNING: Popz'd an empty stack.
    be
    "r"
    1
    gml_Script_c_walk("r", 10, 50)
    qu
    1
    gml_Script_c_walk("r", 3, 45)
    45
    qu
    0
    767
    0.2
    "queen"
    gml_Script_c_msgsetloc(0, "\\EK* Keep Going I Am Right Behind You/%", "obj_ch2_scene13_slash_Step_0_gml_662_0")
    // WARNING: Popz'd an empty stack.
    0.1
    gml_Script_c_walkdirect_wait(1500, 186, 10)
    gml_Script_c_msgsetloc(0, "\\E1* Procedurally Lowering The Volume Of My Voice/%", "obj_ch2_scene13_slash_Step_0_gml_668_0")
    // WARNING: Popz'd an empty stack.
    0
    30
    1
    gml_Script_c_walkdirect_wait((obj_mainchara.x + 200), 186, 15)
    "queen"
    gml_Script_c_msgsetloc(0, "\\ED* Sorry Kris I Must Alt Tab Out Of Here/%", "obj_ch2_scene13_slash_Step_0_gml_678_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walkdirect(320, 186, 60)
    gml_Script_c_delaywalk(71, "u", 8, 120)
    gml_Script_c_panobj(no_actor, 60)
    40
    gml_Script_c_mus2("volume", 0, 30)
    1
    "queen"
    gml_Script_c_msgsetloc(0, "\\ED* Wow Cool Face/%", "obj_ch2_scene13_slash_Step_0_gml_694_0")
    // WARNING: Popz'd an empty stack.
    no
    1
    0
    100
    0.25
    gml_Script_c_walkdirect((kr_actor.x - 210), 218, 60)
    gml_Script_c_delaycmd(56, "imagespeed", 0)
    kr
    1
    gml_Script_c_walkdirect((no_actor.x + 500), 233, 60)
    gml_Script_c_panspeed_wait(10, 0, 55)
    15
    "noelle"
    gml_Script_c_msgsetloc(0, "\\E3* Phew.../", "obj_ch2_scene13_slash_Step_0_gml_723_0")
    gml_Script_c_msgnextloc("\\E2* Looks like my disguise worked./%", "obj_ch2_scene13_slash_Step_0_gml_724_0")
    // WARNING: Popz'd an empty stack.
    no
    110
    0
    0.25
    35
    0
    5
    "noelle"
    gml_Script_c_msgsetloc(0, "\\E8* It's silly looking^1, but it beats hiding.../%", "obj_ch2_scene13_slash_Step_0_gml_746_0")
    // WARNING: Popz'd an empty stack.
    0
    111
    0
    0.25
    35
    0
    98
    gml_Script_c_arg_objectxy(no_actor, 0, -2)
    gml_Script_c_setxy(x, y)
    "noelle"
    gml_Script_c_msgsetloc(0, "\\E4* Let's get going^1, Kris!/%", "obj_ch2_scene13_slash_Step_0_gml_763_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_setxy(970, 216)
    gml_Script_c_panobj(kr_actor, 15)
    15
    kr
    "d"
    0
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 5 && (!895))
{
    con = 50
    global.interact = 0
    global.facing = 0
}
if (con == 50 && (!895))
{
    con = 55
    global.interact = 0
    global.facing = 0
    statuenpc.visible = true
    noellebox.visible = true
    with (obj_caterpillarchara)
        visible = false
    // WARNING: Popz'd an empty stack.
    global.currentsong[0] = "cybercity.ogg"
    global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 0.8, 0.97)
    audio_sound_gain(global.currentsong[1], 1, 30)
}
if (con == 55 && (!noellelost) && (obj_mainchara.x != 1100 || obj_mainchara.y != 233))
{
    noellebox.image_speed = 0.25
    noellelost = 1
}
if (con == 20)
{
    with (obj_actor)
        // WARNING: Popz'd an empty stack.
    con = 21
    global.facing = (obj_mainchara.x < noellebox.x ? 1 : 3)
    cutscene_master = 
    no = 3
    no_actor = gml_Script_instance_create(1222, 218, obj_actor)
    gml_Script_scr_actor_setup(no, no_actor, "noelle")
    no_actor.sprite_index = spr_cutscene_13_noelle_trip_1
    gml_Script_c_soundplay_x(51, 1, 0.8)
    no
    0
    97300
    0
    5
    113
    // WARNING: Popz'd an empty stack.
    noellebox.visible = false
}
if (con == 21 && customcon == 1 && global.interact == 0)
{
    con = 60
    global.interact = 1
    // WARNING: Popz'd an empty stack.
    0.25
    25
    0
    30
    "noelle"
    gml_Script_c_msgsetloc(0, "\\E8* Just realized..^1. I can't see anything..^1. haha.../%", "obj_ch2_scene13_slash_Step_0_gml_859_0")
    // WARNING: Popz'd an empty stack.
    0
    98
    if (obj_mainchara.y > 165)
        800000
    110
    gml_Script_c_setxy(1202, 145)
    5
    0
    0
    0
    0.25
    33
    0
    1
    1
    717
    gml_Script_c_arg_objectxy(no_actor, 2, 0)
    gml_Script_c_setxy(x, y)
    "noelle"
    gml_Script_c_msgsetloc(0, "\\E4* Guess I'll try not to wear it unless I have to./", "obj_ch2_scene13_slash_Step_0_gml_878_0")
    gml_Script_c_msgnextloc("\\ET* OK^1, let's go for real this time!!/%", "obj_ch2_scene13_slash_Step_0_gml_879_0")
    // WARNING: Popz'd an empty stack.
    1
    30
    30
    // WARNING: Popz'd an empty stack.
}
if (con == 60 && (!895))
{
    with (obj_caterpillarchara)
        // WARNING: Popz'd an empty stack.
    global.interact = 0
    global.facing = 0
    con = 0
    global.plot = 75
    with (obj_caterpillarchara)
        visible = true
}
if (noellelost == 1)
    var _temp_local_var_11 = noellebox
