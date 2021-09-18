var _temp_local_var_6;
if (global.interact == 0 && con == 1)
{
    con = 2
    global.interact = 1
    global.facing = 1
    var recruited_all = 2 >= 9
    var recruited_none = 2 == 0
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    qu = (actor_count + 2)
    qu_actor = ((obj_actor - 200) + 286)
    gml_Script_scr_actor_setup(qu, qu_actor, "queen")
    qu_actor.sprite_index = spr_queen_walk_down
    tr = (actor_count + 3)
    tr_actor = ((obj_actor - 100) + 463)
    gml_Script_scr_actor_setup(tr, tr_actor, "trashy")
    tr_actor.sprite_index = spr_npc_trashy
    qu
    gml_Script_c_var("image_alpha", 0)
    (50 + 286)
}
if (con == 2)
{
    con = 3
    alarm[0] = 30
    kr
    gml_Script_c_walkdirect(370, 225, 15)
    gml_Script_c_delayfacing(16, "u")
    su
    gml_Script_c_walkdirect(225, 207, 15)
    gml_Script_c_delayfacing(16, "u")
    qu
    gml_Script_c_var_lerp("image_alpha", 0, 1, 30)
    30
    45
    qu
    "l"
    30
    "r"
    30
    "u"
    30
    "bottom"
    "queen"
    gml_Script_c_msgsetloc(0, "\\E1* So This Is Your \"Castle Town\"/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_59_0")
    gml_Script_c_msgnextloc("\\ED* It's/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_60_0")
    // WARNING: Popz'd an empty stack.
    if recruited_all
    {
        "d"
        5
        "queen"
        gml_Script_c_msgsetloc(0, "\\EO* Not Bad/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_70_0")
        gml_Script_c_msgnextloc("\\E1* Kris^1, Susie.../", "obj_ch2_room_castle_area_1_slash_Step_0_gml_71_0")
        gml_Script_c_msgnextloc("\\ED* On Behalf Of Everyone I Oppressed/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_72_0")
        gml_Script_c_msgnextloc("\\EB* Thank You/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_73_0")
        // WARNING: Popz'd an empty stack.
        "u"
        90
        "queen"
        gml_Script_c_msgsetloc(0, "\\EC* I Am Going To Be Your Wacky Roommate Now/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_81_0")
        // WARNING: Popz'd an empty stack.
        gml_Script_c_walk_wait("u", 14, 20)
        50
    }
    if ((!recruited_all) && (!recruited_none))
    {
        "r"
        5
        "queen"
        gml_Script_c_msgsetloc(0, "\\EF* Wait/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_97_0")
        // WARNING: Popz'd an empty stack.
        "l"
        "queen"
        gml_Script_c_msgsetloc(0, "\\EE* Where's Nubert/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_104_0")
        // WARNING: Popz'd an empty stack.
        gml_Script_c_walk_wait("r", 12, 6)
        "queen"
        gml_Script_c_msgsetloc(0, "\\E5* Nubert..^1. Nuby..^1. Where Are You/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_111_0")
        // WARNING: Popz'd an empty stack.
        tr
        0
        0.25
        gml_Script_c_walkdirect(463, 60, 20)
        10
        qu
        "r"
        "no_name"
        gml_Script_c_msgsetloc(0, "* He said he wouldn't come unless everybody else did.../%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_126_0")
        // WARNING: Popz'd an empty stack.
        10
        tr
        0
        0.25
        gml_Script_c_walk_wait("u", 8, 20)
        10
        qu
        "u"
        "queen"
        gml_Script_c_msgsetloc(0, "\\E4* Nubert/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_142_0")
        gml_Script_c_msgnextloc("\\EB* A Hero Until The End/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_143_0")
        // WARNING: Popz'd an empty stack.
        "l"
        "queen"
        gml_Script_c_msgsetloc(0, "\\EE* Kris.../", "obj_ch2_room_castle_area_1_slash_Step_0_gml_150_0")
        gml_Script_c_msgnextloc("\\EB* You Truced Your Best I Know/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_151_0")
        // WARNING: Popz'd an empty stack.
        gml_Script_c_walk_wait("l", 6, 12)
        "u"
        30
        "queen"
        gml_Script_c_msgsetloc(0, "\\EA* Oh Well/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_161_0")
        gml_Script_c_msgnextloc("\\E1* It Seems Like A Wonderful Town/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_162_0")
        // WARNING: Popz'd an empty stack.
        gml_Script_c_walk_wait("u", 6, 60)
    }
    if recruited_none
    {
        "d"
        5
        "queen"
        gml_Script_c_msgsetloc(0, "\\E1* Magnificent/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_176_0")
        gml_Script_c_msgnextloc("\\ED* The Population Density Is So Wonderfully Low/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_177_0")
        // WARNING: Popz'd an empty stack.
        "r"
        5
        "queen"
        gml_Script_c_msgsetloc(0, "\\EC* I Bet The Swatchlings Will Love This/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_185_0")
        // WARNING: Popz'd an empty stack.
        60
        "d"
        5
        "queen"
        gml_Script_c_msgsetloc(0, "\\ED* Where Are The Swatchlings Anyhow/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_196_0")
        // WARNING: Popz'd an empty stack.
        "l"
        "queen"
        gml_Script_c_msgsetloc(0, "\\EE* Or Tasque Manager/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_203_0")
        // WARNING: Popz'd an empty stack.
        "u"
        "queen"
        gml_Script_c_msgsetloc(0, "\\E5* Or Even Regular Tasque/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_210_0")
        // WARNING: Popz'd an empty stack.
        90
        "d"
        "queen"
        gml_Script_c_msgsetloc(0, "\\E2* Hey Kris Where Is Everyone Else/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_220_0")
        // WARNING: Popz'd an empty stack.
        tr
        0
        0.25
        gml_Script_c_walkdirect(463, 60, 20)
        10
        qu
        "r"
        "no_name"
        gml_Script_c_msgsetloc(0, "* Don't worry^1, Queen^1! I'm here!/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_235_0")
        gml_Script_c_msgnextloc("* Me^1, and only me!/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_236_0")
        // WARNING: Popz'd an empty stack.
        10
        tr
        0
        0.25
        gml_Script_c_walk_wait("u", 8, 20)
        "queen"
        gml_Script_c_msgsetloc(0, "\\E5* .../%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_246_0")
        // WARNING: Popz'd an empty stack.
        qu
        "u"
        "queen"
        gml_Script_c_msgsetloc(0, "\\EB* Well I Guess I'll/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_254_0")
        gml_Script_c_msgnextloc("\\EB* \"Go To My Room\"/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_255_0")
        gml_Script_c_msgnextloc("\\E5* Ha Ha/%", "obj_ch2_room_castle_area_1_slash_Step_0_gml_256_0")
        // WARNING: Popz'd an empty stack.
        gml_Script_c_walk_wait("u", 2, 100)
    }
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 4 && (!895))
{
    con = 99
    global.flag[387] = 1
    if (!3)
        3
    global.facing = 0
    global.interact = 0
}
if (global.interact == 0 && global.plot <= 7 && global.flag[433] == 0 && con == 10)
{
    if 80
    {
        if (obj_mainchara.y <= 40 && obj_mainchara.runcounter <= 5)
        {
            con = 11
            global.flag[433] = 1
            "susie"
            gml_Script_msgsetloc(0, "\\E0* Hey Kris^1, uh^1, you really gonna walk everywhere so slowly?/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_298_0")
            gml_Script_msgnextloc("\\EK* I know you're kinda^1, uh^1, taking it in^1, but you can run^1, y'know?/", "obj_ch2_room_castle_area_1_slash_Step_0_gml_299_0")
            gml_Script_scr_anyface_next("no_name", 0)
            gml_Script_msgnextsubloc("* (You remembered something about the ~1 button.)/%", gml_Script_scr_get_input_name(5), "obj_ch2_room_castle_area_1_slash_Step_0_gml_301_0")
            global.interact = 1
            d = 
        }
    }
}
if (con == 11)
{
}
else
    var _temp_local_var_6 = 0
con = 12
global.interact = 0
