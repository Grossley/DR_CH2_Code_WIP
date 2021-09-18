var _temp_local_var_1, _temp_local_var_2;
global.interact = 1
if (con == 0)
{
    con = 1
    small[0] = gml_Script_stringsetloc("(Powerless!?)", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_11_0")
    small[1] = gml_Script_stringsetloc("SIMPLETON?", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_13_0")
    small[2] = gml_Script_stringsetloc("... H-huh? Berdly?", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_14_0")
    small[3] = gml_Script_stringsetloc("BERDLY??? BERDLY KNOWS???", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_15_0")
    small[4] = gml_Script_stringsetloc("...", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_16_0")
    small[5] = gml_Script_stringsetloc("Berdly...", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_17_0")
    small[6] = gml_Script_stringsetloc("WHY THAT!?", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_18_0")
    if jp
    {
        gml_Script_scr_smallface(2, "noelle_cropped", 8, 420, 68, small[0])
        gml_Script_scr_smallface(4, "noelle_cropped", 8, 400, 68, small[1])
        gml_Script_scr_smallface(5, "noelle_cropped", 2, 260, 68, small[2])
        gml_Script_scr_smallface(6, "noelle_cropped", 23, 260, 68, small[3])
        gml_Script_scr_smallface(7, "noelle_cropped", 10, 400, 68, small[4])
        gml_Script_scr_smallface(8, "noelle", 6, 400, 30, small[5])
        gml_Script_scr_smallface(9, "noelle_cropped", 8, 410, 68, small[6])
    }
    else
    {
        gml_Script_scr_smallface(2, "noelle_cropped", 8, 176, "bottom", small[0])
        gml_Script_scr_smallface(4, "noelle_cropped", 8, 275, "bottom", small[1])
        gml_Script_scr_smallface(5, "noelle_cropped", 2, "middle", "bottom", small[2])
        gml_Script_scr_smallface(6, "noelle_cropped", 23, "middle", "bottom", small[3])
        gml_Script_scr_smallface(7, "noelle_cropped", 10, "right", "bottom", small[4])
        gml_Script_scr_smallface(8, "noelle", 6, 300, 44, small[5])
        gml_Script_scr_smallface(9, "noelle_cropped", 8, "right", "bottom", small[6])
    }
    "berdly"
    gml_Script_msgsetloc(0, "\\E5* Ahh^1, Kris. Stuck on this puzzle^1, I see?/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_21_0")
    gml_Script_msgnextloc("\\E7* I thought I heard Noelle calling for help^1, but.../", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_22_0")
    gml_Script_msgnextloc("\\EE* I get what that sound was now. Kris./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_23_0")
    gml_Script_msgnextloc("\\E7* Your brain must be crying./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_24_0")
    gml_Script_msgnextloc("\\E0* Poor^1, sweet^1, Noelle. Where could she be now./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_25_0")
    gml_Script_msgnextloc("\\EG* Stuck on a puzzle just like this one^1, no doubt./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_26_0")
    gml_Script_msgnextloc("\\EH* If only I was there to do it for her./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_27_0")
    gml_Script_msgnextloc("\\E8* She's but a powerless doe without my help...\\f2 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_28_0")
    gml_Script_msgnextloc("\\E1* Though being alone might be better than being with you!/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_29_0")
    gml_Script_msgnextloc("\\E7* Kris^1, you would only get in the way!/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_30_0")
    gml_Script_msgnextloc("\\EI* After all^1, you can't understand Noelle like I can./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_31_0")
    gml_Script_msgnextloc("\\E4* Yes^1, you may have been her lifelong neighbor. But./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_32_0")
    gml_Script_msgnextloc("\\EJ* I am a maestro of emotional intelligence./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_33_0")
    gml_Script_msgnextloc("\\E7* I can read her feelings like a strategy guide./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_34_0")
    gml_Script_msgnextloc("\\EC* Which^1, I have NEVER needed by the way!/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_35_0")
    gml_Script_msgnextloc("\\EE* You may see her as the simpleton girl next door.\\f4 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_36_0")
    gml_Script_msgnextloc("\\EI* But the reality. Is that she is./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_37_0")
    gml_Script_msgnextloc("\\EG* A lovestruck girl with her heart on her sleeve.\\f5 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_38_0")
    gml_Script_msgnextloc("\\E3* And..^1. Kris..^1. The target of her affection.../", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_39_0")
    gml_Script_msgnextloc("\\EI* May be surprising to you.\\f6 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_40_0")
    gml_Script_msgnextloc("\\E8* It's..^1. Truly sad. Such love..^1. May never fruit.\\f7 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_41_0")
    gml_Script_msgnextloc("\\E9* But still^1, I have to support her^1, Kris./", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_42_0")
    gml_Script_msgnextloc("\\E5* She's my friend.\\f8 ^1/", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_43_0")
    gml_Script_msgnextloc("\\EE* Also^1, my only worthy opponent at racing games.\\f9 ^1/%", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_44_0")
    d = 
    d.side = 0
}
if (con == 1)
{
}
else
    var _temp_local_var_2 = 0
con = 2
alarm[0] = 60
if (con == 3)
{
    con = 99
    "noelle"
    gml_Script_msgsetloc(0, "\\E8* (Is that really what you're gonna end it on!?)/%", "obj_event_mouse3_berdlymonologue_slash_Step_0_gml_61_0")
    d = 
    d.side = 0
}
if (con == 99)
{
}
else
    var _temp_local_var_1 = 0
// WARNING: Popz'd an empty stack.
if 62
{
    if (obj_writer.halt != 0)
    {
        msgtimer++
        if (msgtimer >= 60)
        {
            with (obj_writer)
                forcebutton1 = 1
            msgtimer = 0
        }
    }
    else
        msgtimer = 0
}
