usable = false
replaceable = 0
value = 0
itemtarget = 0
itemnameb = " "
itemdescb = " "
switch argument0
{
    case 0:
        itemnameb = " "
        itemdescb = "---"
        break
    case 1:
        itemnameb = gml_Script_stringsetloc("Dark Candy", "scr_iteminfo_slash_scr_iteminfo_gml_15_0")
        itemdescb = gml_Script_stringsetloc("Heals#40HP", "scr_iteminfo_slash_scr_iteminfo_gml_16_0")
        itemtarget = 1
        value = 25
        usable = true
        break
    case 2:
        itemnameb = gml_Script_stringsetloc("ReviveMint", "scr_iteminfo_slash_scr_iteminfo_gml_22_0")
        itemdescb = gml_Script_stringsetloc("Heal#Downed#Ally", "scr_iteminfo_slash_scr_iteminfo_gml_23_0")
        itemtarget = 1
        value = 400
        usable = true
        break
    case 3:
        itemnameb = gml_Script_stringsetloc("Glowshard", "scr_iteminfo_slash_scr_iteminfo_gml_29_0")
        itemdescb = gml_Script_stringsetloc("Sell#at#shops", "scr_iteminfo_slash_scr_iteminfo_gml_30_0")
        itemtarget = 0
        value = (200 + (global.chapter * 100))
        usable = false
        break
    case 4:
        itemnameb = gml_Script_stringsetloc("Manual", "scr_iteminfo_slash_scr_iteminfo_gml_36_0")
        itemdescb = gml_Script_stringsetloc("Read#out of#battle", "scr_iteminfo_slash_scr_iteminfo_gml_37_0")
        itemtarget = 2
        value = 1
        usable = false
        break
    case 5:
        itemnameb = gml_Script_stringsetloc("BrokenCake", "scr_iteminfo_slash_scr_iteminfo_gml_43_0")
        itemdescb = gml_Script_stringsetloc("Heals#20HP", "scr_iteminfo_slash_scr_iteminfo_gml_44_0")
        itemtarget = 1
        value = 5
        usable = true
        break
    case 6:
        itemnameb = gml_Script_stringsetloc("Top Cake", "scr_iteminfo_slash_scr_iteminfo_gml_50_0")
        itemdescb = gml_Script_stringsetloc("Heals#team#160HP", "scr_iteminfo_slash_scr_iteminfo_gml_51_0")
        itemtarget = 2
        value = 150
        usable = true
        break
    case 7:
        var healamount = (global.chapter == 1 ? 80 : 140)
        itemnameb = gml_Script_stringsetloc("Spincake", "scr_iteminfo_slash_scr_iteminfo_gml_58_0")
        itemdescb = gml_Script_stringsetsubloc("Heals#team#~1HP", string(healamount), "scr_iteminfo_slash_scr_iteminfo_gml_59_0")
        itemtarget = 2
        value = 5
        usable = true
        break
    case 8:
        itemnameb = gml_Script_stringsetloc("Darkburger", "scr_iteminfo_slash_scr_iteminfo_gml_65_0")
        itemdescb = gml_Script_stringsetloc("Heals#70HP", "scr_iteminfo_slash_scr_iteminfo_gml_66_0")
        itemtarget = 1
        value = 70
        usable = true
        break
    case 9:
        itemnameb = gml_Script_stringsetloc("LancerCookie", "scr_iteminfo_slash_scr_iteminfo_gml_72_0")
        itemdescb = gml_Script_stringsetloc("Heals#50HP", "scr_iteminfo_slash_scr_iteminfo_gml_73_0")
        itemtarget = 1
        value = 10
        usable = true
        break
    case 10:
        itemnameb = gml_Script_stringsetloc("GigaSalad", "scr_iteminfo_slash_scr_iteminfo_gml_79_0")
        itemdescb = gml_Script_stringsetloc("Heals#4HP", "scr_iteminfo_slash_scr_iteminfo_gml_80_0")
        itemtarget = 1
        value = 10
        usable = true
        break
    case 11:
        itemnameb = gml_Script_stringsetloc("ClubsSandwich", "scr_iteminfo_slash_scr_iteminfo_gml_86_0")
        itemdescb = gml_Script_stringsetloc("Heals#team#70HP", "scr_iteminfo_slash_scr_iteminfo_gml_87_0")
        itemtarget = 2
        value = 70
        usable = true
        break
    case 12:
        itemnameb = gml_Script_stringsetloc("HeartsDonut", "scr_iteminfo_slash_scr_iteminfo_gml_93_0")
        itemdescb = gml_Script_stringsetloc("Healing#varies", "scr_iteminfo_slash_scr_iteminfo_gml_94_0")
        itemtarget = 1
        value = 40
        usable = true
        break
    case 13:
        itemnameb = gml_Script_stringsetloc("ChocDiamond", "scr_iteminfo_slash_scr_iteminfo_gml_100_0")
        itemdescb = gml_Script_stringsetloc("Healing#varies", "scr_iteminfo_slash_scr_iteminfo_gml_101_0")
        itemtarget = 1
        value = 40
        usable = true
        break
    case 14:
        itemnameb = gml_Script_stringsetloc("Favwich", "scr_iteminfo_slash_scr_iteminfo_gml_107_0")
        itemdescb = gml_Script_stringsetloc("Heals#ALL HP", "scr_iteminfo_slash_scr_iteminfo_gml_108_0")
        itemtarget = 1
        value = 10
        usable = true
        break
    case 15:
        itemnameb = gml_Script_stringsetloc("RouxlsRoux", "scr_iteminfo_slash_scr_iteminfo_gml_114_0")
        itemdescb = gml_Script_stringsetloc("Heals#50 HP", "scr_iteminfo_slash_scr_iteminfo_gml_115_0")
        itemtarget = 1
        value = 50
        usable = true
        break
    case 16:
        itemnameb = gml_Script_stringsetloc("CD Bagel", "scr_iteminfo_slash_scr_iteminfo_gml_121_0")
        itemdescb = gml_Script_stringsetloc("Heals#80 HP", "scr_iteminfo_slash_scr_iteminfo_gml_122_0")
        itemtarget = 1
        value = 100
        usable = true
        break
    case 17:
        itemnameb = gml_Script_stringsetloc("Mannequin", "scr_iteminfo_slash_scr_iteminfo_gml_128_0")
        itemdescb = gml_Script_stringsetloc("Useless", "scr_iteminfo_slash_scr_iteminfo_gml_129_0")
        itemtarget = 0
        value = 300
        usable = false
        break
    case 18:
        itemnameb = gml_Script_stringsetloc("Kris Tea", "scr_iteminfo_slash_scr_iteminfo_gml_135_0")
        itemdescb = gml_Script_stringsetloc("Healing#varies", "scr_iteminfo_slash_scr_iteminfo_gml_136_0")
        itemtarget = 1
        value = 10
        usable = true
        break
    case 19:
        itemnameb = gml_Script_stringsetloc("Noelle Tea", "scr_iteminfo_slash_scr_iteminfo_gml_142_0")
        itemdescb = gml_Script_stringsetloc("Healing#varies", "scr_iteminfo_slash_scr_iteminfo_gml_143_0")
        itemtarget = 1
        value = 10
        usable = true
        break
    case 20:
        itemnameb = gml_Script_stringsetloc("Ralsei Tea", "scr_iteminfo_slash_scr_iteminfo_gml_149_0")
        itemdescb = gml_Script_stringsetloc("Healing#varies", "scr_iteminfo_slash_scr_iteminfo_gml_150_0")
        itemtarget = 1
        value = 10
        usable = true
        break
    case 21:
        itemnameb = gml_Script_stringsetloc("Susie Tea", "scr_iteminfo_slash_scr_iteminfo_gml_156_0")
        itemdescb = gml_Script_stringsetloc("Healing#varies", "scr_iteminfo_slash_scr_iteminfo_gml_157_0")
        itemtarget = 1
        value = 10
        usable = true
        break
    case 22:
        itemnameb = gml_Script_stringsetloc("DD-Burger", "scr_iteminfo_slash_scr_iteminfo_gml_163_0")
        itemdescb = gml_Script_stringsetloc("Heals#60HP 2x", "scr_iteminfo_slash_scr_iteminfo_gml_164_0")
        itemtarget = 1
        value = 110
        usable = true
        replaceable = 8
        break
    case 23:
        itemnameb = gml_Script_stringsetloc("LightCandy", "scr_iteminfo_slash_scr_iteminfo_gml_171_0")
        itemdescb = gml_Script_stringsetloc("Heals#120HP", "scr_iteminfo_slash_scr_iteminfo_gml_172_0")
        itemtarget = 1
        value = 200
        usable = true
        break
    case 24:
        itemnameb = gml_Script_stringsetloc("ButJuice", "scr_iteminfo_slash_scr_iteminfo_gml_178_0")
        itemdescb = gml_Script_stringsetloc("Heals#100HP", "scr_iteminfo_slash_scr_iteminfo_gml_179_0")
        itemtarget = 1
        value = 200
        usable = true
        break
    case 25:
        itemnameb = gml_Script_stringsetloc("SpagettiCode", "scr_iteminfo_slash_scr_iteminfo_gml_185_0")
        itemdescb = gml_Script_stringsetloc("Heals#team#30HP", "scr_iteminfo_slash_scr_iteminfo_gml_186_0")
        itemtarget = 2
        value = 180
        usable = true
        break
    case 26:
        itemnameb = gml_Script_stringsetloc("JavaCookie", "scr_iteminfo_slash_scr_iteminfo_gml_192_0")
        itemdescb = gml_Script_stringsetloc("Healing#varies", "scr_iteminfo_slash_scr_iteminfo_gml_193_0")
        itemtarget = 1
        value = 160
        usable = true
        break
    case 27:
        itemnameb = gml_Script_stringsetloc("TensionBit", "scr_iteminfo_slash_scr_iteminfo_gml_199_0")
        itemdescb = gml_Script_stringsetloc("Raises#TP#32%", "scr_iteminfo_slash_scr_iteminfo_gml_200_0")
        itemtarget = 2
        value = 100
        usable = true
        break
    case 28:
        itemnameb = gml_Script_stringsetloc("TensionGem", "scr_iteminfo_slash_scr_iteminfo_gml_206_0")
        itemdescb = gml_Script_stringsetloc("Raises#TP#50%", "scr_iteminfo_slash_scr_iteminfo_gml_207_0")
        itemtarget = 2
        value = 300
        usable = true
        break
    case 29:
        itemnameb = gml_Script_stringsetloc("TensionMax", "scr_iteminfo_slash_scr_iteminfo_gml_213_0")
        itemdescb = gml_Script_stringsetloc("Raises#TP#Max", "scr_iteminfo_slash_scr_iteminfo_gml_214_0")
        itemtarget = 2
        value = 1000
        usable = true
        break
    case 30:
        itemnameb = gml_Script_stringsetloc("ReviveDust", "scr_iteminfo_slash_scr_iteminfo_gml_220_0")
        itemdescb = gml_Script_stringsetloc("Revives#team#25%", "scr_iteminfo_slash_scr_iteminfo_gml_221_0")
        itemtarget = 2
        value = 100
        usable = true
        break
    case 31:
        itemnameb = gml_Script_stringsetloc("ReviveBrite", "scr_iteminfo_slash_scr_iteminfo_gml_227_0")
        itemdescb = gml_Script_stringsetloc("Revives#team#100%", "scr_iteminfo_slash_scr_iteminfo_gml_228_0")
        itemtarget = 2
        value = 4000
        usable = true
        break
    case 32:
        itemnameb = gml_Script_stringsetloc("S.POISON", "scr_iteminfo_slash_scr_iteminfo_gml_234_0")
        itemdescb = gml_Script_stringsetloc("Hurts#party#member", "scr_iteminfo_slash_scr_iteminfo_gml_235_0")
        itemtarget = 1
        value = 110
        usable = true
        break
    case 33:
        itemnameb = gml_Script_stringsetloc("DogDollar", "scr_iteminfo_slash_scr_iteminfo_gml_241_0")
        itemdescb = gml_Script_stringsetloc("Not#so#useful", "scr_iteminfo_slash_scr_iteminfo_gml_242_0")
        itemtarget = 0
        value = floor((200 / global.chapter))
        usable = false
        break
}

return;
