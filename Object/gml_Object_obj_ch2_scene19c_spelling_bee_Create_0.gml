sb_con = 0
sb_word[0] = gml_Script_stringsetloc("SMART", "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_5_0")
sb_word[1] = gml_Script_stringsetloc("INTELLIGENT", "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_6_0")
sb_word[2] = gml_Script_stringsetloc("CLEVER", "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_7_0")
sb_word[3] = gml_Script_stringsetloc("GENIUS", "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_8_0")
sb_word[4] = gml_Script_stringsetloc("PRODIGY", "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_9_0")
sb_word[5] = gml_Script_stringsetloc("QUICK", "obj_ch2_scene19c_spelling_bee_slash_Create_0_gml_10_0")
sb_word_current = sb_word[random_range(0, 5)]
sb_word_previous = sb_word_current
sb_noelle = ""
sb_berdly = ""
noelle_index = 0
berdly_index = 0
wb_word_length = (string_length(sb_word_current) + 1)
noelle_spell = 1
berdly_spell = 1
noelle_finish = 0
berdly_finish = 0
update_word = 1
noelle_lose = 0
text_alpha = 1
berdly_smart = 0
berdly_show_word = 1
berdly_word_current = ""
berdly_word_previous = ""
berdly_iq_siner = 0
berdly_word_count = 0