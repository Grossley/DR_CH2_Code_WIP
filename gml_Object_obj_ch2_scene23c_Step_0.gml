if (con == -1)
{
    con = 1
    global.interact = 1
    global.facing = 1
    cutscene_master = 
    // WARNING: Popz'd an empty stack.
    kr
    0
}
if (con == 1)
{
    con = 2
    "free_all"
    gml_Script_c_mus2("initloop", "noelle_ferriswheel.ogg", 0)
    "bottom"
    gml_Script_c_var_lerp_instance(ferris_wheel, "x", -100, 320, 400)
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 1, 0, 30)
    120
    1121
    // WARNING: Popz'd an empty stack.
}
if (con == 10)
{
    con = 11
    gml_Script_scr_smallface(0, "susie", 3, "middle", "bottom", gml_Script_stringsetloc("I guess I do like slime and blood...", "obj_ch2_scene23c_slash_Step_0_gml_40_0"))
    "noelle"
    gml_Script_c_msgsetloc(0, "\\E6* .../", "obj_ch2_scene23c_slash_Step_0_gml_43_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* So^1, uh..^1. Ferris wheels^1, huh./", "obj_ch2_scene23c_slash_Step_0_gml_45_0")
    gml_Script_c_msgnextloc("\\E2* Kinda makes you wonder what car they were built for./", "obj_ch2_scene23c_slash_Step_0_gml_46_0")
    gml_Script_c_facenext("noelle", "8")
    gml_Script_c_msgnextloc("\\E8* (It's..^1. it's different than riding one with Kris...)/", "obj_ch2_scene23c_slash_Step_0_gml_48_0")
    gml_Script_c_facenext("susie", "4")
    gml_Script_c_msgnextloc("\\E4* ..^1. the hell's wrong^1, you scared of heights?/", "obj_ch2_scene23c_slash_Step_0_gml_50_0")
    gml_Script_c_facenext("noelle", "M")
    gml_Script_c_msgnextloc("\\EM* No^1! No^1, I..^1. I love heights^1! Haha!/", "obj_ch2_scene23c_slash_Step_0_gml_52_0")
    gml_Script_c_facenext("susie", 1)
    gml_Script_c_msgnextloc("\\E1* .../", "obj_ch2_scene23c_slash_Step_0_gml_54_0")
    gml_Script_c_msgnextloc("\\E0* You're^1, uh^1, shaking./", "obj_ch2_scene23c_slash_Step_0_gml_55_0")
    gml_Script_c_facenext("noelle", "3")
    gml_Script_c_msgnextloc("\\E3* Well^1, um^1, maybe^1, I'm a little scared^1, but..^1. I.../", "obj_ch2_scene23c_slash_Step_0_gml_57_0")
    gml_Script_c_msgnextloc("\\E8* To be honest^1, I..^1. I actually like..^1. scary things./", "obj_ch2_scene23c_slash_Step_0_gml_58_0")
    gml_Script_c_facenext("susie", 6)
    gml_Script_c_msgnextloc("\\E6* ..^1. what do you mean?/", "obj_ch2_scene23c_slash_Step_0_gml_60_0")
    gml_Script_c_facenext("noelle", "3")
    gml_Script_c_msgnextloc("\\E3* When we were little^1, me and my sister would stay up.../", "obj_ch2_scene23c_slash_Step_0_gml_62_0")
    gml_Script_c_msgnextloc("\\E2* And go past our bedtime watching horror movies./", "obj_ch2_scene23c_slash_Step_0_gml_63_0")
    gml_Script_c_msgnextloc("\\E4* At first I cried^1, but now..^1. it's like..^1. watching them.../", "obj_ch2_scene23c_slash_Step_0_gml_64_0")
    gml_Script_c_msgnextloc("\\E8* Makes me feel..^1. comforted...?/", "obj_ch2_scene23c_slash_Step_0_gml_65_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* Comforted?\\f0/", "obj_ch2_scene23c_slash_Step_0_gml_67_0")
    gml_Script_c_facenext("noelle", "4")
    gml_Script_c_msgnextloc("\\E4* It's scary^1, but I can just turn it off^1, right?/", "obj_ch2_scene23c_slash_Step_0_gml_69_0")
    gml_Script_c_msgnextloc("\\E3* Now it's mostly..^1. people^1, that are scary. Haha./", "obj_ch2_scene23c_slash_Step_0_gml_70_0")
    gml_Script_c_facenext("susie", "0")
    gml_Script_c_msgnextloc("\\E0* .../", "obj_ch2_scene23c_slash_Step_0_gml_72_0")
    gml_Script_c_msgnextloc("\\EY* You can just say you mean me./", "obj_ch2_scene23c_slash_Step_0_gml_73_0")
    gml_Script_c_facenext("noelle", "3")
    gml_Script_c_msgnextloc("\\E3* Haha..^1. umm..^1. well..^1. I guess y-you too^1, but.../", "obj_ch2_scene23c_slash_Step_0_gml_75_0")
    gml_Script_c_msgnextloc("\\E8* But that's..^1. what's..^1. NICE about you^1, y'know?/", "obj_ch2_scene23c_slash_Step_0_gml_76_0")
    gml_Script_c_facenext("susie", "5")
    gml_Script_c_msgnextloc("\\E5* Nice!? The hell does that mean???/", "obj_ch2_scene23c_slash_Step_0_gml_78_0")
    gml_Script_c_facenext("noelle", "3")
    gml_Script_c_msgnextloc("\\E3* You're the..^1. good kind of scary./", "obj_ch2_scene23c_slash_Step_0_gml_80_0")
    gml_Script_c_msgnextloc("\\ES* You aren't afraid to... break the rules^1, y'know?/", "obj_ch2_scene23c_slash_Step_0_gml_81_0")
    gml_Script_c_msgnextloc("\\E9* ..^1. I wish I could do crazy stuff like you./%", "obj_ch2_scene23c_slash_Step_0_gml_82_0")
    // WARNING: Popz'd an empty stack.
    1123
    // WARNING: Popz'd an empty stack.
}
if (con == 20)
{
    con = 21
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* So^1, um.../", "obj_ch2_scene23c_slash_Step_0_gml_94_0")
    gml_Script_c_msgnextloc("\\E1* If YOU could do something crazy right now^1,/", "obj_ch2_scene23c_slash_Step_0_gml_95_0")
    gml_Script_c_msgnextloc("\\E2* What would you do?/", "obj_ch2_scene23c_slash_Step_0_gml_96_0")
    gml_Script_c_facenext("noelle", "2")
    gml_Script_c_msgnextloc("\\E2* U-umm..^1. Well^1, I..^1. I.../", "obj_ch2_scene23c_slash_Step_0_gml_98_0")
    gml_Script_c_msgnextloc("\\E8* I'd... I'd jump out the window!/", "obj_ch2_scene23c_slash_Step_0_gml_99_0")
    gml_Script_c_facenext("susie", "6")
    gml_Script_c_msgnextloc("\\E6* Huh?/", "obj_ch2_scene23c_slash_Step_0_gml_101_0")
    gml_Script_c_facenext("noelle", 26)
    gml_Script_c_msgnextloc("\\EQ* It's a dream^1, right?/", "obj_ch2_scene23c_slash_Step_0_gml_103_0")
    gml_Script_c_msgnextloc("\\ES* I'd grow big angel wings^1,/", "obj_ch2_scene23c_slash_Step_0_gml_104_0")
    gml_Script_c_msgnextloc("\\E2* And fly as far as I can^1, gazing back at it all.../", "obj_ch2_scene23c_slash_Step_0_gml_105_0")
    gml_Script_c_msgnextloc("\\E4* The skyline shining like Holiday lights./", "obj_ch2_scene23c_slash_Step_0_gml_106_0")
    gml_Script_c_facenext("susie", "K")
    gml_Script_c_msgnextloc("\\EK* ... that's kinda..^1. beautiful?/", "obj_ch2_scene23c_slash_Step_0_gml_108_0")
    gml_Script_c_msgnextloc("\\E6* Wait^1, you wouldn't seriously jump out^1, would you!?/", "obj_ch2_scene23c_slash_Step_0_gml_109_0")
    gml_Script_c_facenext("noelle", 27)
    gml_Script_c_msgnextloc("\\ER* Hahaha!^1! No promises!/", "obj_ch2_scene23c_slash_Step_0_gml_111_0")
    gml_Script_c_msgnextloc("\\E2* ..^1. Susie...?/", "obj_ch2_scene23c_slash_Step_0_gml_112_0")
    gml_Script_c_msgnextloc("\\E3* What do YOU think looking out there?/%", "obj_ch2_scene23c_slash_Step_0_gml_113_0")
    // WARNING: Popz'd an empty stack.
    1125
    // WARNING: Popz'd an empty stack.
}
if (con == 30)
{
    con = 31
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* Uh..^1. seeing everything small^1, makes me feel like^1, um.../", "obj_ch2_scene23c_slash_Step_0_gml_125_0")
    gml_Script_c_msgnextloc("\\EH* If I was Susiezilla or something^1, I could wreck the whole city./", "obj_ch2_scene23c_slash_Step_0_gml_126_0")
    gml_Script_c_facenext("noelle", "4")
    gml_Script_c_msgnextloc("\\E4* Hahahaha!!^1! Susie!!/", "obj_ch2_scene23c_slash_Step_0_gml_128_0")
    gml_Script_c_facenext("susie", "2")
    gml_Script_c_msgnextloc("\\E2* Heh^1, what!?/", "obj_ch2_scene23c_slash_Step_0_gml_130_0")
    gml_Script_c_facenext("noelle", "8")
    gml_Script_c_msgnextloc("\\E8* ..^1. is being Susiezilla something you think about a lot?/%", "obj_ch2_scene23c_slash_Step_0_gml_132_0")
    // WARNING: Popz'd an empty stack.
    1127
    // WARNING: Popz'd an empty stack.
}
if (con == 40)
{
    con = 49
    alarm[0] = 30
    "susie"
    gml_Script_c_msgsetloc(0, "\\EK* No I just made it up now./", "obj_ch2_scene23c_slash_Step_0_gml_145_0")
    gml_Script_c_facenext("noelle", "6")
    gml_Script_c_msgnextloc("\\E6* ..^1. does your tail always do that when you lie?/", "obj_ch2_scene23c_slash_Step_0_gml_147_0")
    gml_Script_c_facenext("susie", 17)
    gml_Script_c_msgnextloc("\\EH* H..^1. hey!^1! Don't look at that!!/", "obj_ch2_scene23c_slash_Step_0_gml_149_0")
    gml_Script_c_msgnextloc("\\E5* I don't have a tail!^1! It's part of your dream!!/", "obj_ch2_scene23c_slash_Step_0_gml_150_0")
    gml_Script_c_facenext("noelle", "4")
    gml_Script_c_msgnextloc("\\E4* Oh^1, right. S..^1. sorry./", "obj_ch2_scene23c_slash_Step_0_gml_152_0")
    gml_Script_c_msgnextloc("\\ER* Guess I'll just have to check in real life^1, too./", "obj_ch2_scene23c_slash_Step_0_gml_153_0")
    gml_Script_c_facenext("susie", 17)
    gml_Script_c_msgnextloc("\\EH* H-Hey!!^1! Don't!!!/", "obj_ch2_scene23c_slash_Step_0_gml_155_0")
    gml_Script_c_facenext("noelle", "8")
    gml_Script_c_msgnextloc("\\E8* Hahaha!^1! Susie? Everything OK?/", "obj_ch2_scene23c_slash_Step_0_gml_157_0")
    gml_Script_c_facenext("susie", 17)
    gml_Script_c_msgnextloc("\\EH* LOOK^1, I just^1, uhhh -/", "obj_ch2_scene23c_slash_Step_0_gml_159_0")
    gml_Script_c_msgnextloc("\\EM* I just don't like people knowing about^1, it./", "obj_ch2_scene23c_slash_Step_0_gml_160_0")
    gml_Script_c_facenext("noelle", "2")
    gml_Script_c_msgnextloc("\\E2* Umm^1, well.../", "obj_ch2_scene23c_slash_Step_0_gml_162_0")
    gml_Script_c_msgnextloc("\\E3* I think it's..^1. a nice tail./", "obj_ch2_scene23c_slash_Step_0_gml_163_0")
    gml_Script_c_facenext("susie", 22)
    gml_Script_c_msgnextloc("\\EM* ..^1. whatever./", "obj_ch2_scene23c_slash_Step_0_gml_165_0")
    gml_Script_c_facenext("noelle", "4")
    gml_Script_c_msgnextloc("\\E4* (It's wagging...)/%", "obj_ch2_scene23c_slash_Step_0_gml_167_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_var_lerp_instance(ferris_wheel, "x", 320, 840, 300)
    80
    gml_Script_c_var_lerp_instance(blackall, "image_alpha", 0, 1, 50)
    80
    "susie"
    gml_Script_c_msgsetloc(0, "\\E0* ..^1. you stopped shaking./", "obj_ch2_scene23c_slash_Step_0_gml_181_0")
    gml_Script_c_facenext("noelle", 6)
    gml_Script_c_msgnextloc("\\E6* Guess I got comfortable./", "obj_ch2_scene23c_slash_Step_0_gml_183_0")
    gml_Script_c_facenext("susie", "0")
    gml_Script_c_msgnextloc("\\E0* .../", "obj_ch2_scene23c_slash_Step_0_gml_185_0")
    gml_Script_c_msgnextloc("\\EL* ..^1. me too./%", "obj_ch2_scene23c_slash_Step_0_gml_186_0")
    // WARNING: Popz'd an empty stack.
    gml_Script_c_mus2("volume", 0, 30)
    31
    "free_all"
    // WARNING: Popz'd an empty stack.
    // WARNING: Popz'd an empty stack.
}
if (con == 50 && (!895))
{
    con = 0
    global.flag[319] = 2
    209
}
