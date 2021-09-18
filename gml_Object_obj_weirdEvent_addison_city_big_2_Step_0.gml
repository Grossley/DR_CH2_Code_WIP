var _temp_local_var_2, _temp_local_var_3, _temp_local_var_4, _temp_local_var_5, _temp_local_var_6, _temp_local_var_7, _temp_local_var_8;
if (con == 0)
{
    if (global.flag[915] == 2 && global.flag[916] == 0)
    {
        if (global.flag[421] == 1)
        {
            with (obj_mainchara)
            {
                if place_meeting(x, y, obj_triggervolume)
                    other.con++
            }
        }
    }
}
if (con == 1)
{
    global.interact = 1
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    gml_Script_mus_volume(global.currentsong[1], 0, 45)
    con++
}
if (con == 2)
{
    con = -1
    "no_name"
    gml_Script_c_msgsetloc(0, "* If you're something else^1, maybe a Dating Shoes isn't right...?/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_28_0")
    gml_Script_c_msgnextloc("* Maybe I could interest you in a FreezeRing?/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_29_0")
    // WARNING: Popz'd an empty stack.
    kr
    gml_Script_c_walkdirect(1140, 364, 12)
    no
    gml_Script_c_walkdirect_wait(1082, 346, 12)
    "u"
    kr
    "u"
    1
    1
    gml_Script_c_panobj(kr_actor, 8)
    8
    "noelle"
    gml_Script_c_msgsetloc(0, "\\E2* Huh...? A ring...?/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_44_0")
    gml_Script_c_msgnextloc("\\E8* Faha, sorry, I don't think WE need something like that!/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_46_0")
    gml_Script_c_facenext("no_name", 0)
    gml_Script_c_msgnextloc("* C'mon, angel! You can't get stronger without good equipment!/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_47_0")
    gml_Script_c_facenext("noelle", "D")
    gml_Script_c_msgnextloc("\\E1* Stronger...? R-right, I guess that's how it works here.../%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_49_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_instance(id, "con", 3)
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    0
    // WARNING: Popz'd an empty stack.
}
if (con == 3)
{
}
else
    var _temp_local_var_8 = 0
global.msc = 1208
global.msc
// WARNING: Popz'd an empty stack.
timer = 0
con = -1
if (con == 6)
{
}
else
    var _temp_local_var_7 = 0
timer++
if (timer == 15)
    fade = 30
if (timer == 75)
{
    with (obj_npc_room)
        // WARNING: Popz'd an empty stack.
    251
}
if (timer == 135)
{
    "no_name"
    gml_Script_msgsetloc(0, "* (You got the FreezeRing.)/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_84_0")
    // WARNING: Popz'd an empty stack.
    timer = 0
    con++
}
if (con == 7)
{
}
else
    var _temp_local_var_6 = 0
timer++
if (timer == 15)
    var _temp_local_var_2 = fade
if (timer == 60)
{
    "noelle"
    gml_Script_msgsetloc(0, "\\EB* (What..^1. what just happened?)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_117_0")
    gml_Script_msgnextloc("\\EB* (Did I actually just...)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_118_0")
    gml_Script_msgnextloc("\\E3* (No^1, they..^1. they must have given it to us. The ring.)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_119_0")
    gml_Script_msgnextloc("\\Ee* (...)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_120_0")
    gml_Script_msgnextloc("\\Ed* (Besides..^1. it's good to get stronger^1, isn't it?)/", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_121_0_b")
    gml_Script_msgnextloc("\\E4* Th..^1. thanks^1, Kris!/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_122_0")
    // WARNING: Popz'd an empty stack.
    con++
}
if (con == 8)
{
}
else
    var _temp_local_var_5 = 0
22
// WARNING: Popz'd an empty stack.
global.flag[915] = 3
global.interact = 0
con++
if (con == 72)
{
}
else
    var _temp_local_var_4 = 0
"noelle"
gml_Script_msgsetloc(0, "\\EQ* (Though^1, if Susie bought me a ring...)/%", "obj_weirdEvent_addison_city_big_2_slash_Step_0_gml_121_0")
// WARNING: Popz'd an empty stack.
con++
if (con == 73)
{
}
else
    var _temp_local_var_3 = 0
if (global.flag[915] > 0)
    // WARNING: Popz'd an empty stack.
gml_Script_mus_volume(global.currentsong[1], 0.8, 16)
global.interact = 0
con++
