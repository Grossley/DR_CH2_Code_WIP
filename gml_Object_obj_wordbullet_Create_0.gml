// WARNING: Popz'd an empty stack.
if 571
    damage = (global.monsterat[obj_queen_enemy.myself] * 5)
if 572
    target = obj_queen_bulletcontroller.target
grazepoints = 4
destroyonhit = 1
word[0] = gml_Script_stringsetloc("LOL", "obj_wordbullet_slash_Create_0_gml_9_0")
word[1] = gml_Script_stringsetloc("TOP10", "obj_wordbullet_slash_Create_0_gml_10_0")
word[2] = gml_Script_stringsetloc("FAMILY", "obj_wordbullet_slash_Create_0_gml_11_0")
word[3] = gml_Script_stringsetloc("GUY", "obj_wordbullet_slash_Create_0_gml_12_0")
word[4] = gml_Script_stringsetloc("FUNNY", "obj_wordbullet_slash_Create_0_gml_13_0")
word[5] = gml_Script_stringsetloc("MOMENTS", "obj_wordbullet_slash_Create_0_gml_14_0")
word[6] = gml_Script_stringsetloc("GIRL", "obj_wordbullet_slash_Create_0_gml_15_0")
word[7] = gml_Script_stringsetloc("DOLL", "obj_wordbullet_slash_Create_0_gml_16_0")
word[8] = gml_Script_stringsetloc("BOY", "obj_wordbullet_slash_Create_0_gml_17_0")
word[9] = gml_Script_stringsetloc("QUEEN", "obj_wordbullet_slash_Create_0_gml_18_0")
word[10] = gml_Script_stringsetloc("TALE", "obj_wordbullet_slash_Create_0_gml_19_0")
word[11] = gml_Script_stringsetloc("JOKE", "obj_wordbullet_slash_Create_0_gml_20_0")
word[12] = gml_Script_stringsetloc("FASHION", "obj_wordbullet_slash_Create_0_gml_21_0")
word[13] = gml_Script_stringsetloc("MIX", "obj_wordbullet_slash_Create_0_gml_22_0")
word[14] = gml_Script_stringsetloc("SOUND", "obj_wordbullet_slash_Create_0_gml_23_0")
word[15] = gml_Script_stringsetloc("VIDEO", "obj_wordbullet_slash_Create_0_gml_24_0")
word[16] = gml_Script_stringsetloc("TOP20", "obj_wordbullet_slash_Create_0_gml_25_0")
word[17] = gml_Script_stringsetloc("LAUGH", "obj_wordbullet_slash_Create_0_gml_26_0")
word[18] = gml_Script_stringsetloc("AND", "obj_wordbullet_slash_Create_0_gml_27_0")
word[19] = gml_Script_stringsetloc("CRY", "obj_wordbullet_slash_Create_0_gml_28_0")
word[20] = gml_Script_stringsetloc("LIKE", "obj_wordbullet_slash_Create_0_gml_29_0")
word[21] = gml_Script_stringsetloc("RATE", "obj_wordbullet_slash_Create_0_gml_30_0")
wordchoice = word[floor(random(21))]
active = true
timer = 0
"main"
stringlength = wordchoice
stringheight = wordchoice
if (global.lang == "ja")
{
    jpstringlength = wordchoice
    jpstringwidth = wordchoice
}
idealxscale = (sprite_width / stringlength)
idealyscale = (sprite_height / stringheight)
scaleupx = 0
queenword = 0
init = 0
gray = 0
angry = 0
dramatimer_x = 0
dramatimer_y = 0
if (y + 290)
    depth = (obj_heart.depth - 1)
if (y + 290)
    depth = (obj_heart.depth + 100.5)
