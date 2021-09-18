var _temp_local_var_2, _temp_local_var_3;
if (con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    with (obj_npc_king)
        visible = false
    qu = (actor_count + 2)
    qu_actor = gml_Script_instance_create((gml_Script_camerax() - 100), 182, obj_actor)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_queen_walk_left
    ki = (actor_count + 3)
    ki_actor = gml_Script_instance_create(obj_npc_king.x, obj_npc_king.y, obj_actor)
    gml_Script_scr_actor_setup(ki, ki_actor, "rouxls")
    ki_actor.sprite_index = obj_npc_king.sprite_index
    ki_actor.depth = 500100
    ki
    0
    0
    500100
    ro = (actor_count + 4)
    ro_actor = gml_Script_instance_create((gml_Script_camerax() - 100), 182, obj_actor)
    gml_Script_scr_actor_setup(ro, ro_actor, "rouxls")
    ro_actor.sprite_index = spr_rurus_idle
    ro
    0
}
if (con == 1)
{
    con = 49
    alarm[0] = 30
    ra
    gml_Script_c_walkdirect(1150, 210, 15)
    gml_Script_c_delayfacing(16, "u")
    su
    gml_Script_c_walkdirect(1190, 204, 15)
    gml_Script_c_delayfacing(16, "u")
    kr
    gml_Script_c_walkdirect(1238, 220, 15)
    gml_Script_c_delayfacing(16, "u")
    16
    "king"
    gml_Script_c_msgsetloc(0, "\\E0* You may have bested me. But.../", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_59_0")
    gml_Script_c_msgnextloc("\\E7* You'll soon face someone..^1. More fearsome.../", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_60_0")
    gml_Script_c_msgnextloc("\\E4* More tyrannical than you could EVER imagine./", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_61_0")
    gml_Script_c_facenext("susie", 1)
    gml_Script_c_msgnextloc("\\E1* Queen? We already met her./%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_63_0")
    // WARNING: Popz'd an empty stack.
    ki
    1215
    "king"
    gml_Script_c_msgsetloc(0, "\\E6* WHAT!?/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_71_0")
    // WARNING: Popz'd an empty stack.
    kr
    "l"
    su
    "l"
    ra
    "l"
    qu
    gml_Script_c_walkdirect_wait(1020, 182, 20)
    "u"
    30
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* Wow Nice Hamster Wheel/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_96_0")
    // WARNING: Popz'd an empty stack.
    ki
    1214
    "king"
    gml_Script_c_msgsetloc(0, "\\E5* So you^1, too^1, have come to humiliate me.../", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_104_0")
    gml_Script_c_facenext("queen", 24)
    gml_Script_c_msgnextloc("\\EO* No I Am Serious It's Cool/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_106_0")
    // WARNING: Popz'd an empty stack.
    10
    qu
    gml_Script_c_walkdirect(1263, 182, 25)
    8
    kr
    0
    gml_Script_c_walk("r", 15, 15)
    su
    0
    gml_Script_c_walk("r", 15, 15)
    ra
    0
    gml_Script_c_walk("r", 15, 15)
    50
    qu
    0
    62
    0
    0.25
    "queen"
    gml_Script_c_msgsetloc(0, "\\EB* That Water Bottle However/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_137_0")
    // WARNING: Popz'd an empty stack.
    ki
    1217
    0
    0.25
    gml_Script_c_var_instance(id, "king_drink", 1)
    "king"
    gml_Script_c_msgsetloc(0, "\\EA* DO NOT SPEAK ILL OF THE ROYAL WATER BOTTLE!/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_150_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(id, "king_drink", 0)
    qu
    775
    ki
    1215
    "queen"
    gml_Script_c_msgsetloc(0, "\\EO* It's Nothing Compared To The One At My Mansion/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_163_0")
    // WARNING: Popz'd an empty stack.
    ki
    1214
    "king"
    gml_Script_c_msgsetloc(0, "\\E5* Hmph. Materialistic as always./%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_171_0")
    // WARNING: Popz'd an empty stack.
    qu
    1
    "u"
    "queen"
    gml_Script_c_msgsetloc(0, "\\E0* Materialism Evaluation Denied/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_180_0")
    gml_Script_c_msgnextloc("\\EC* I Simply Give Myself: The Treatment I Deserve/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_181_0")
    // WARNING: Popz'd an empty stack.
    0
    62
    0
    0.25
    "queen"
    gml_Script_c_msgsetloc(0, "\\ED* You Slept Curled Up On A Dirty Throne Every Day/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_191_0")
    // WARNING: Popz'd an empty stack.
    ki
    1218
    0
    0.25
    // WARNING: Popz'd an empty stack.
    qu
    0
    "king"
    gml_Script_c_msgsetloc(0, "\\EA* ENOUGH^1, WENCH!!!/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_206_0")
    // WARNING: Popz'd an empty stack.
    ki
    1215
    30
    ki
    1214
    qu
    1
    "u"
    "king"
    gml_Script_c_msgsetloc(0, "\\EB* What purpose have you here... Queenie Beanie./", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_224_0")
    gml_Script_c_facenext("queen", 13)
    gml_Script_c_msgnextloc("\\ED* Just Thought I Would Send A Message^1, Kingy Wingy/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_226_0")
    gml_Script_c_msgnextloc("\\E0* That You Don't Have To Worry About Lancer/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_227_0")
    // WARNING: Popz'd an empty stack.
    qu
    gml_Script_c_walkdirect_wait(1305, 182, 15)
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* I Will Be Looking After Him From Now On/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_235_0")
    gml_Script_c_msgnextloc("\\E5* After All..^1. I Am.../%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_236_0")
    // WARNING: Popz'd an empty stack.
    qu
    "d"
    "queen"
    gml_Script_c_msgsetloc(0, "\\E0* His Mother/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_244_0")
    // WARNING: Popz'd an empty stack.
    ki
    // WARNING: Popz'd an empty stack.
    1218
    0
    0.25
    "king"
    gml_Script_c_msgsetloc(0, "\\E9* When was that decided!?/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_255_0")
    // WARNING: Popz'd an empty stack.
    qu
    "l"
    "queen"
    gml_Script_c_msgsetloc(0, "\\ED* Arbitrarily Right Now/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_263_0")
    // WARNING: Popz'd an empty stack.
    ki
    1214
    "king"
    gml_Script_c_msgsetloc(0, "\\E5* ...^1. hmph./", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_271_0")
    gml_Script_c_msgnextloc("\\E5* Do what you please with the boy./", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_272_0")
    gml_Script_c_msgnextloc("\\E5* But if he cries.../", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_273_0")
    gml_Script_c_msgnextloc("\\E8* ..^1. Bounce him on the ground like a ball./%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_274_0")
    // WARNING: Popz'd an empty stack.
    30
    qu
    "d"
    "queen"
    gml_Script_c_msgsetloc(0, "\\ED* I Think It Is Time To Abort This Conversation/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_285_0")
    gml_Script_c_facenext("king", "B")
    gml_Script_c_msgnextloc("\\EB* ..^1. As you wish./%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_287_0")
    // WARNING: Popz'd an empty stack.
    ro
    gml_Script_c_walkdirect_wait(1118, ro_actor.y, 15)
    "rouxls"
    gml_Script_c_msgsetloc(0, "\\E0* Oho^1, quite sorry^1, mine Kinge.../", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_295_0")
    gml_Script_c_msgnextloc("\\E3* Queene hath a nyew Man about Towne now!!/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_296_0")
    // WARNING: Popz'd an empty stack.
    30
    "king"
    gml_Script_c_msgsetloc(0, "\\E5* Who?/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_303_0")
    // WARNING: Popz'd an empty stack.
    qu
    1
    "l"
    "queen"
    gml_Script_c_msgsetloc(0, "\\EI* Yeah Who/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_311_0")
    // WARNING: Popz'd an empty stack.
    30
    "rouxls"
    gml_Script_c_msgsetloc(0, "\\E6* Er/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_320_0")
    // WARNING: Popz'd an empty stack.
    ro
    gml_Script_c_walk_wait("l", 5, 5)
    "rouxls"
    gml_Script_c_msgsetloc(0, "\\E1* I think I/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_327_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walk_wait("l", 5, 5)
    "rouxls"
    gml_Script_c_msgsetloc(0, "\\E6* Left my puzzle on/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_333_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_walk("l", 15, 30)
    "rouxls"
    gml_Script_c_msgsetloc(0, "\\E5* POSTHASTE!!!/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_341_0")
    // WARNING: Popz'd an empty stack.
    30
    qu
    "u"
    "queen"
    gml_Script_c_msgsetloc(0, "\\EL* Who Was That??/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_352_0")
    // WARNING: Popz'd an empty stack.
    ki
    1215
    "king"
    gml_Script_c_msgsetloc(0, "\\E5* Sigh..^1. That was my son's..../%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_360_0")
    // WARNING: Popz'd an empty stack.
    ki
    1214
    "king"
    gml_Script_c_msgsetloc(0, "\\EC* LESSER father./%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_368_0")
    // WARNING: Popz'd an empty stack.
    qu
    0
    62
    0.25
    "queen"
    gml_Script_c_msgsetloc(0, "\\EN* Cannot Calculate Someone Less Than You/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_378_0")
    // WARNING: Popz'd an empty stack.
    ki
    1218
    0
    0.25
    // WARNING: Popz'd an empty stack.
    "king"
    gml_Script_c_msgsetloc(0, "\\EA* BEGONE!!!!/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_390_0")
    gml_Script_c_facenext("queen", "0")
    gml_Script_c_msgnextloc("\\E0* Bye Bye Kingy Wingy/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_392_0")
    // WARNING: Popz'd an empty stack.
    ki
    1214
    qu
    1
    "d"
    30
    qu
    1
    gml_Script_c_walk_wait("l", 8, 45)
    "r"
    30
    "queen"
    gml_Script_c_msgsetloc(0, "\\ED* By The Way Did You Want Anything From The Store/", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_413_0")
    gml_Script_c_facenext("king", "8")
    gml_Script_c_msgnextloc("\\E8* ..^1. cashews./", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_415_0")
    gml_Script_c_facenext("queen", 1)
    gml_Script_c_msgnextloc("\\E1* Order Processed/%", "obj_ch2_room_dungeon_2f_ee_slash_Step_0_gml_417_0")
    // WARNING: Popz'd an empty stack.
    qu
    gml_Script_c_walk_wait("l", 10, 10)
    1
    gml_Script_c_panobj(kr_actor, 15)
    15
    0
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 50 && (!895))
{
    global.interact = 0
    global.facing = 0
    con = 0
    global.flag[320] = 1
    with (obj_npc_king)
        visible = true
    // WARNING: Popz'd an empty stack.
}
if ki_actor
{
    if king_drink
    {
        var _temp_local_var_2 = ki_actor
        if (x < 1380)
        {
            if (hspeed < 3)
                hspeed = 3
            hspeed += 1
            if (y >= (ystart - 60))
                y -= 4
        }
        else
            hspeed = 0
    }
    else
    {
        var xpos = obj_npc_king.xstart
        var ypos = obj_npc_king.ystart
        var _temp_local_var_3 = ki_actor
        if (x > xpos)
        {
            if (y <= ypos)
                y = clamp((y + 4), 0, ypos)
            hspeed -= 1
        }
        else
        {
            hspeed = 0
            x = xpos
        }
    }
}
