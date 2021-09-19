cost = -1
spelltarget = 1
spellname = gml_Script_stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_3_0")
spellnameb = " "
spelldescb = gml_Script_stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_5_0")
spelldesc = gml_Script_stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_6_0")
spellanim = 0
spellusable = false
spelltext = " "
switch argument0
{
    case 0:
        spellname = gml_Script_stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_14_0")
        spellnameb = " "
        spelltarget = 0
        cost = -1
        spelldescb = gml_Script_stringsetloc("None", "scr_spellinfo_slash_scr_spellinfo_gml_18_0")
        break
    case 1:
        spellname = gml_Script_stringsetloc("Rude Sword", "scr_spellinfo_slash_scr_spellinfo_gml_21_0")
        spellnameb = gml_Script_stringsetloc("RudeSword", "scr_spellinfo_slash_scr_spellinfo_gml_22_0")
        spelldescb = gml_Script_stringsetloc("Rude#Damage#", "scr_spellinfo_slash_scr_spellinfo_gml_23_0")
        spelldesc = gml_Script_stringsetloc("Deals moderate Rude-elemental damage to#one foe. Depends on Attack & Magic.", "scr_spellinfo_slash_scr_spellinfo_gml_24_0")
        spelltarget = 2
        cost = 125
        spellusable = false
        break
    case 2:
        spellname = gml_Script_stringsetloc("Heal Prayer", "scr_spellinfo_slash_scr_spellinfo_gml_31_0")
        spellnameb = gml_Script_stringsetloc("Heal Prayer", "scr_spellinfo_slash_scr_spellinfo_gml_32_0")
        spelldescb = gml_Script_stringsetloc("Heal#Ally", "scr_spellinfo_slash_scr_spellinfo_gml_33_0")
        spelldesc = gml_Script_stringsetloc("Heavenly light restores a little HP to#one party member. Depends on Magic.", "scr_spellinfo_slash_scr_spellinfo_gml_34_0")
        spelltarget = 1
        cost = 80
        usable = false
        spellusable = false
        break
    case 3:
        spellname = gml_Script_stringsetloc("Pacify", "scr_spellinfo_slash_scr_spellinfo_gml_42_0")
        spellnameb = gml_Script_stringsetloc("Pacify", "scr_spellinfo_slash_scr_spellinfo_gml_43_0")
        spelldescb = gml_Script_stringsetloc("Spare#TIRED foe", "scr_spellinfo_slash_scr_spellinfo_gml_44_0")
        spelldesc = gml_Script_stringsetloc("SPARE a tired enemy by putting them to sleep.", "scr_spellinfo_slash_scr_spellinfo_gml_45_0")
        spelltarget = 2
        cost = 40
        usable = false
        spellusable = false
        break
    case 4:
        spellname = gml_Script_stringsetloc("Rude Buster", "scr_spellinfo_slash_scr_spellinfo_gml_52_0")
        spellnameb = gml_Script_stringsetloc("Rude Buster", "scr_spellinfo_slash_scr_spellinfo_gml_53_0")
        spelldescb = gml_Script_stringsetloc("Rude#Damage#", "scr_spellinfo_slash_scr_spellinfo_gml_54_0")
        spelldesc = gml_Script_stringsetloc("Deals moderate Rude-elemental damage to#one foe. Depends on Attack & Magic.", "scr_spellinfo_slash_scr_spellinfo_gml_55_0")
        spelltarget = 2
        cost = 125
        if (global.charweapon[2] == 7)
            cost = 100
        spellusable = false
        break
    case 5:
        spellname = gml_Script_stringsetloc("Red Buster", "scr_spellinfo_slash_scr_spellinfo_gml_64_0")
        spellnameb = gml_Script_stringsetloc("Red Buster", "scr_spellinfo_slash_scr_spellinfo_gml_65_0")
        spelldescb = gml_Script_stringsetloc("Red#Damage#", "scr_spellinfo_slash_scr_spellinfo_gml_66_0")
        spelldesc = gml_Script_stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_67_0")
        spelltarget = 2
        cost = 0
        spellusable = false
        break
    case 6:
        spellname = gml_Script_stringsetloc("Dual Heal", "scr_spellinfo_slash_scr_spellinfo_gml_75_0")
        spellnameb = gml_Script_stringsetloc("Dual Heal", "scr_spellinfo_slash_scr_spellinfo_gml_76_0")
        spelldescb = gml_Script_stringsetloc("Heal All#30 HP", "scr_spellinfo_slash_scr_spellinfo_gml_77_0")
        spelldesc = gml_Script_stringsetloc(" ", "scr_spellinfo_slash_scr_spellinfo_gml_78_0")
        spelltarget = 0
        cost = 0
        spellusable = false
        break
    case 7:
        spellname = gml_Script_stringsetloc("ACT", "scr_spellinfo_slash_scr_spellinfo_gml_86_0")
        spellnameb = gml_Script_stringsetloc("ACT", "scr_spellinfo_slash_scr_spellinfo_gml_87_0")
        spelldescb = gml_Script_stringsetloc("Use#action", "scr_spellinfo_slash_scr_spellinfo_gml_88_0")
        spelldesc = gml_Script_stringsetloc("Do all sorts of things.#It isn't magic.", "scr_spellinfo_slash_scr_spellinfo_gml_89_0")
        spelltarget = 0
        cost = 0
        spellusable = false
        break
    case 8:
        spellname = gml_Script_stringsetloc("SleepMist", "scr_spellinfo_slash_scr_spellinfo_gml_96_0")
        spellnameb = gml_Script_stringsetloc("Sleep Mist", "scr_spellinfo_slash_scr_spellinfo_gml_97_0")
        spelldescb = gml_Script_stringsetloc("Spare#TIRED foes", "scr_spellinfo_slash_scr_spellinfo_gml_98_0")
        spelldesc = gml_Script_stringsetloc("A cold mist sweeps through,#sparing all TIRED enemies.", "scr_spellinfo_slash_scr_spellinfo_gml_99_0")
        spelltarget = 0
        cost = 80
        spellusable = false
        break
    case 9:
        spellname = gml_Script_stringsetloc("IceShock", "scr_spellinfo_slash_scr_spellinfo_gml_107_0")
        spellnameb = gml_Script_stringsetloc("IceShock", "scr_spellinfo_slash_scr_spellinfo_gml_108_0")
        spelldescb = gml_Script_stringsetloc("Damage#w/ ICE", "scr_spellinfo_slash_scr_spellinfo_gml_109_0")
        spelldesc = gml_Script_stringsetloc("Deals magical ICE damage to#one enemy.", "scr_spellinfo_slash_scr_spellinfo_gml_110_0")
        spelltarget = 2
        cost = 40
        if (global.charweapon[4] == 13)
            cost *= 0.5
        spellusable = false
        break
    case 10:
        spellname = gml_Script_stringsetloc("SnowGrave", "scr_spellinfo_slash_scr_spellinfo_gml_121_0")
        spellnameb = gml_Script_stringsetloc("SnowGrave", "scr_spellinfo_slash_scr_spellinfo_gml_122_0")
        spelldescb = gml_Script_stringsetloc("Fatal", "scr_spellinfo_slash_scr_spellinfo_gml_123_0")
        spelldesc = gml_Script_stringsetloc("Deals the fatal damage to#all of the enemies.", "scr_spellinfo_slash_scr_spellinfo_gml_124_0")
        spelltarget = 0
        if instance_exists(obj_berdlyb2_enemy)
        {
            if (global.flag[924] < 4)
                spelltarget = 3
            else
                spellanim = 1
        }
        cost = (global.maxtension * 2)
        if (global.charweapon[4] == 13)
            cost *= 0.5
        spellusable = false
        break
    case 11:
        spellname = gml_Script_stringsetloc("UltimatHeal", "scr_spellinfo_slash_scr_spellinfo_gml_147_0")
        spellnameb = gml_Script_stringsetloc("UltimatHeal", "scr_spellinfo_slash_scr_spellinfo_gml_148_0")
        spelldescb = gml_Script_stringsetloc("Best#healing", "scr_spellinfo_slash_scr_spellinfo_gml_149_0")
        spelldesc = gml_Script_stringsetloc("Heals 1 party member to the#best of Susie's ability.", "scr_spellinfo_slash_scr_spellinfo_gml_150_0")
        spelltarget = 1
        cost = 250
        spellusable = false
        break
}

return;
