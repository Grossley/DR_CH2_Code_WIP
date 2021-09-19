tempkeyitemdesc = gml_Script_stringsetloc("---", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_2_0")
tempkeyitemname = gml_Script_stringsetloc(" ", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_3_0")
tempkeyitemusable = false
switch argument0
{
    case obj_sneo_friedpipis:
        tempkeyitemdesc = gml_Script_stringsetloc("---", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_9_0")
        tempkeyitemname = gml_Script_stringsetloc(" ", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_10_0")
        break
    case obj_pipis_bullet_cone:
        tempkeyitemdesc = gml_Script_stringsetloc("It can be used to make calls.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_13_0")
        tempkeyitemname = gml_Script_stringsetloc("Cell Phone", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_14_0")
        tempkeyitemusable = true
        break
    case obj_84_lang_helper:
        tempkeyitemdesc = gml_Script_stringsetloc("Not too important, not too unimportant.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_18_0")
        tempkeyitemname = gml_Script_stringsetloc("Egg", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_19_0")
        tempkeyitemusable = true
        break
    case obj_pipisFireworkGenerator:
        tempkeyitemdesc = gml_Script_stringsetloc("Though broken, it seethes with power.#A master smith could fix it.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_23_0")
        tempkeyitemname = gml_Script_stringsetloc("BrokenCake", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_24_0")
        break
    case obj_afterimage_anim:
        tempkeyitemdesc = gml_Script_stringsetloc("It's the top part of a key.#A smith could fix all three parts.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_27_0")
        tempkeyitemname = gml_Script_stringsetloc("Broken Key A", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_28_0")
        break
    case obj_ch2_scene26_henshin_flash:
        tempkeyitemdesc = gml_Script_stringsetloc("The key to a mysterious cell.#Something feels strange about it.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_31_0")
        tempkeyitemname = gml_Script_stringsetloc("Door Key", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_32_0")
        break
    case obj_spamtonpainting:
        tempkeyitemdesc = gml_Script_stringsetloc("It's the middle part of a key.#A smith could fix all three parts.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_35_0")
        tempkeyitemname = gml_Script_stringsetloc("Broken Key B", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_36_0")
        break
    case obj_growtangle_spark:
        tempkeyitemdesc = gml_Script_stringsetloc("It's the bottom part of a key.#A smith could fix all three parts.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_39_0")
        tempkeyitemname = gml_Script_stringsetloc("Broken Key C", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_40_0")
        break
    case obj_mettaton_bomb_hitbox:
        tempkeyitemdesc = gml_Script_stringsetloc("Hohoho! I'm a tough boy!#Treat me like one of your ITEMS!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_43_0")
        if (global.plot >= 20)
            tempkeyitemdesc = gml_Script_stringsetloc("Hohoho! ROUXLS jumped out of your#pocket! How dadcrobatic! (Lesser)", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_46_0")
        if (global.plot >= 55)
            tempkeyitemdesc = gml_Script_stringsetloc("Hohoho! That game looked fun!#Let me be the stool next!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_50_0")
        if (global.plot >= 60)
            tempkeyitemdesc = gml_Script_stringsetloc("Sounded like milk out there. Splat!#Were you three osmosing without me!?", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_54_0")
        if (global.plot >= 65)
            tempkeyitemdesc = gml_Script_stringsetloc("We fell! But don't worry. I'm a strong boy.#I won't be trounced by a mere bounce!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_58_0")
        if (global.plot >= 66)
            tempkeyitemdesc = gml_Script_stringsetloc("Split up? We'll solve this mystery fast!#You? You can be the un-talking dog.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_62_0")
        if (global.plot >= 70)
            tempkeyitemdesc = gml_Script_stringsetloc("Ho-ho! A soft cream is following you!#Can we make them a bad guy?", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_66_0")
        if (global.plot >= 75)
        {
            tempkeyitemdesc = gml_Script_stringsetloc("That golden statue... Could it be...#The illusory nipple technique!?", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_70_0_b")
            if (global.flag[418] == 1)
                tempkeyitemdesc = gml_Script_stringsetloc("Wow! Thanks for the free sample!#I couldn't eat another bite!!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_74_0")
        }
        if (global.plot >= 79)
            tempkeyitemdesc = gml_Script_stringsetloc("The bluebird of crappiness.#Fly high, bluebird. Fly high.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_79_0")
        if (global.plot >= 85)
            tempkeyitemdesc = gml_Script_stringsetloc("Did I miss something? I was doing my#calisthetics. Stay handsome.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_83_0")
        if (global.plot >= 90)
            tempkeyitemdesc = gml_Script_stringsetloc("Hey! Thanks for the tape! I was hungry!#Push my tummy to hear a cool song!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_87_0")
        if (global.plot >= 99)
            tempkeyitemdesc = gml_Script_stringsetloc("Hoho! It's me, Lancer! Release me and#I will release you!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_91_0")
        if (gml_Script_scr_sideb_get_phase() >= 1 && global.flag[915] >= 1.5)
        {
            tempkeyitemdesc = gml_Script_stringsetloc("(Innocent boys are fast asleep.)", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_95_0")
            if (gml_Script_scr_sideb_get_phase() >= 3)
                tempkeyitemdesc = gml_Script_stringsetloc("A stone statue.#Strangely, it looks like Lancer...", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_99_0")
        }
        if (global.plot >= 200)
        {
            tempkeyitemdesc = gml_Script_stringsetloc("Hoho! What a terrific boy's adventure.#Time to kick off my feet and relax...", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_105_0")
            if (null.room == room_dw_castle_restaurant)
                tempkeyitemdesc = gml_Script_stringsetloc("Oo la la! Who is that handsome#mustachioed boy! I think I'm in love!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_109_0")
            if (room == room_cc_lancer || room == room_dw_ralsei_castle_2f)
                tempkeyitemdesc = gml_Script_stringsetloc("(huff, puff) There, I got back into your#pocket! Now you can use my power!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_114_0")
        }
        tempkeyitemname = gml_Script_stringsetloc("Lancer", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_48_0")
        tempkeyitemusable = true
        break
    case obj_dw_city_mice3Fence:
        tempkeyitemdesc = gml_Script_stringsetloc("Thou gazeth upon a man most handsometh.#This daringst genius, adoredeth beyondth all hey let me speakst", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_52_0")
        tempkeyitemname = gml_Script_stringsetloc("Rouxls Kaard", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_53_0")
        if (global.plot >= 200)
            tempkeyitemdesc = gml_Script_stringsetloc("Oh, milord! Tis I, your humblest servante,#righte here where I never lefteth!", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_126_0")
        break
    case obj_gigaqueen_intro_fight:
        tempkeyitemdesc = gml_Script_stringsetloc("A data disk from a strange machine.#Didn't someone want this?", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_56_0")
        tempkeyitemname = gml_Script_stringsetloc("EmptyDisk", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_57_0")
        break
    case obj_berdlyb_tornado_old:
        tempkeyitemdesc = gml_Script_stringsetloc("A strange disk. You can feel it#smiling in your hand.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_60_0")
        tempkeyitemname = gml_Script_stringsetloc("LoadedDisk", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_61_0")
        break
    case obj_magicalglass:
        tempkeyitemdesc = gml_Script_stringsetloc("A shady-looking program that can#open certain doors.", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_64_0")
        tempkeyitemname = gml_Script_stringsetloc("KeyGen", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_65_0")
        break
    case obj_intro_ch2:
        var crystal_amount = 0
        if (global.flag[241] >= 6)
            crystal_amount++
        if (global.flag[309] >= 9)
            crystal_amount++
        tempkeyitemusable = true
        tempkeyitemdesc = gml_Script_stringsetsubloc("A sharp shadow moves like water in the hand.#You have collected [~1].", crystal_amount, "scr_keyiteminfo_slash_scr_keyiteminfo_gml_70_0")
        tempkeyitemname = gml_Script_stringsetloc("ShadowCrystal", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_71_0")
        break
    case obj_sneo_wireheart_old:
        tempkeyitemname = gml_Script_stringsetloc("Starwalker", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_123_0")
        tempkeyitemdesc = gml_Script_stringsetloc("The original                     #         (Starwalker)", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_124_0")
        break
    case obj_flowerking:
        tempkeyitemname = gml_Script_stringsetloc("PureCrystal", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_132_0")
        tempkeyitemdesc = gml_Script_stringsetloc("The shadow purified by the cat", "scr_keyiteminfo_slash_scr_keyiteminfo_gml_133_0")
        break
}

return;
