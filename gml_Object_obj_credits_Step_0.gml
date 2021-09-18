timer += 1
if (timer == 1)
{
    // WARNING: Popz'd an empty stack.
    song0 = "ch2_credits.ogg"
    song1 = song0
    line[0] = gml_Script_stringsetloc("DELTARUNE", "obj_credits_slash_Step_0_gml_21_0")
    line[1] = gml_Script_stringsetloc("Chapter 2", "obj_credits_slash_Step_0_gml_22_0")
    line[2] = " "
    line[3] = gml_Script_stringsetloc("by Toby Fox", "obj_credits_slash_Step_0_gml_24_0")
}
if (timer == 100)
{
    line[0] = gml_Script_stringsetloc("Main Artist, Animator, & Cleanup", "obj_credits_slash_Step_0_gml_38_0")
    line[1] = gml_Script_stringsetloc("(BG, Overworld, Battle)", "obj_credits_slash_Step_0_gml_39_0")
    line[2] = gml_Script_stringsetloc("(Sepia and Menu Art)", "obj_credits_slash_Step_0_gml_40_0")
    line[3] = " "
    line[4] = "Temmie Chang"
    linecolor[0] = c_silver
    linecolor[1] = c_silver
    linecolor[2] = c_silver
    linecolor[4] = c_white
}
if (timer == 200)
{
    line[0] = gml_Script_stringsetloc("Main Team", "obj_credits_slash_Step_0_gml_52_0")
    line[1] = "Sarah O'Donnell"
    line[2] = "Juju (taxiderby)"
    line[3] = "Fred Wood"
    line[4] = "Jean Canellas"
    linecolor[0] = c_silver
    linecolor[1] = c_white
    linecolor[2] = c_white
    linecolor[3] = c_white
    linecolor[4] = c_white
}
if (timer == 300)
{
    line[0] = gml_Script_stringsetloc("Lancer, Rudinn, Hathy", "obj_credits_slash_Step_0_gml_59_0")
    line[1] = gml_Script_stringsetloc("Clover, King, Jevil", "obj_credits_slash_Step_0_gml_60_0")
    line[2] = gml_Script_stringsetloc("Original Character Designs", "obj_credits_slash_Step_0_gml_61_0")
    linecolor[2] = c_silver
    line[3] = " "
    line[4] = "Kanotynes"
}
if (timer == 400)
{
    line[0] = gml_Script_stringsetloc("Area Concept Art", "obj_credits_slash_Step_0_gml_80_0")
    line[1] = gml_Script_stringsetloc("Dark World Costume Design", "obj_credits_slash_Step_0_gml_81_0")
    line[2] = " "
    line[3] = "Gigi DG"
    linecolor[0] = c_silver
    linecolor[1] = c_silver
    linecolor[3] = c_white
}
if (timer == 500)
{
    textalpha = 1
    line[0] = gml_Script_stringsetloc("Programming Help", "obj_credits_slash_Step_0_gml_103_0")
    line[1] = "Shaun Spalding"
    line[2] = " "
    line[3] = gml_Script_stringsetloc("Character Design Assistance", "obj_credits_slash_Step_0_gml_106_0")
    line[4] = "Samanthuel Gillson (splendidland)"
    linecolor[0] = c_silver
    linecolor[1] = c_white
    linecolor[3] = c_silver
    linecolor[4] = c_white
}
if (timer == 600)
{
    creditalpha = 1
    line[0] = gml_Script_stringsetloc("Cutscene Assistance", "obj_credits_slash_Step_0_gml_119_0_b")
    line[1] = "Chess"
    line[2] = "PixelatedCrown"
    line[3] = " "
    line[4] = gml_Script_stringsetloc("Shop and BG Pixel Assistance", "obj_credits_slash_Step_0_gml_123_0_b")
    line[5] = "Shawn (puppiesandanime)"
    line[6] = "Kenju"
    linecolor[0] = c_silver
    linecolor[1] = c_white
    linecolor[2] = c_white
    linecolor[4] = c_silver
    linecolor[5] = c_white
    linecolor[6] = c_white
}
if (timer == 700)
{
    line[0] = gml_Script_stringsetloc("Music Assistance", "obj_credits_slash_Step_0_gml_142_0")
    line[1] = "Lena Raine"
    line[2] = "Marcy Nabors"
    line[3] = " "
    line[4] = gml_Script_stringsetloc("Fireworks Effect", "obj_credits_slash_Step_0_gml_146_0")
    line[5] = "Lars Korendijk"
    line[6] = " "
    linecolor[0] = c_silver
    linecolor[1] = c_white
    linecolor[2] = c_white
    linecolor[4] = c_silver
    linecolor[5] = c_white
}
if (timer == 800)
{
    line[0] = gml_Script_stringsetloc("Japanese Localization", "obj_credits_slash_Step_0_gml_95_0")
    line[1] = gml_Script_stringsetloc("8-4 Ltd.", "obj_credits_slash_Step_0_gml_96_0")
    line[2] = " "
    line[3] = gml_Script_stringsetloc("Translator", "obj_credits_slash_Step_0_gml_98_0")
    line[4] = gml_Script_stringsetloc("Keiko Fukuichi", "obj_credits_slash_Step_0_gml_99_0")
    line[5] = " "
    linecolor[0] = c_silver
    linecolor[1] = c_white
    linecolor[3] = c_silver
    linecolor[4] = c_white
}
if (timer == 900)
{
    line[0] = gml_Script_stringsetloc("Testers", "obj_credits_slash_Step_0_gml_177_0")
    line[1] = "Tester A"
    line[2] = "Tester B"
    line[3] = " "
    line[4] = " "
    line[5] = " "
    linecolor[0] = c_silver
    linecolor[1] = c_white
    linecolor[2] = c_white
}
if (timer == 1000)
{
    line[0] = gml_Script_stringsetloc("Website", "obj_credits_slash_Step_0_gml_192_0_b")
    line[1] = "Ryan"
    line[2] = "Brian"
    linecolor[0] = c_silver
    linecolor[1] = c_white
    linecolor[2] = c_white
}
if (timer == 1100)
{
    line[0] = gml_Script_stringsetloc("Special Thanks", "obj_credits_slash_Step_0_gml_152_0")
    line[1] = gml_Script_stringsetloc("Fangamer", "obj_credits_slash_Step_0_gml_153_0")
    line[2] = " "
    line[3] = gml_Script_stringsetloc("\"Temmie\" Character Design", "obj_credits_slash_Step_0_gml_155_0")
    line[4] = gml_Script_stringsetloc("Betty Kwong", "obj_credits_slash_Step_0_gml_156_0")
    linecolor[1] = c_white
    linecolor[3] = c_silver
    linecolor[4] = c_white
}
if (timer >= 1150 && timer <= 1200)
{
    creditalpha -= 0.02
    textalpha -= 0.02
}
if (timer >= 1400)
{
    if (timer <= 1560 && creditalpha < 1)
        creditalpha += 0.01
    if (timer >= 1560 && creditalpha > 0)
        creditalpha -= 0.01
    line[0] = gml_Script_stringsetloc("To be continued", "obj_credits_slash_Step_0_gml_191_0")
    line[1] = gml_Script_stringsetloc("in Chapter 3", "obj_credits_slash_Step_0_gml_192_0")
    linecolor[0] = c_white
    linecolor[1] = c_white
    line[2] = " "
    line[3] = " "
    line[4] = " "
    textalpha -= 0.01
}
if (timer == 1860)
    song0
if (timer == 1880)
    // WARNING: Popz'd an empty stack.
