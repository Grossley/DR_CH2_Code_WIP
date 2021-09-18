weaponchar4temp = 0
weaponnametemp = gml_Script_stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_2_0")
switch argument0
{
    case 0:
        weaponnametemp = gml_Script_stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_11_0")
        weapondesctemp = gml_Script_stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_12_0")
        wmessage2temp = gml_Script_stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_13_0")
        wmessage3temp = gml_Script_stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_14_0")
        wmessage4temp = gml_Script_stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_15_0")
        weaponattemp = 0
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 0
        weaponstyletemp = " "
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponchar4temp = 0
        weaponabilitytemp = " "
        weaponabilityicontemp = 0
        weaponicontemp = 0
        value = 0
        break
    case 1:
        weaponnametemp = gml_Script_stringsetloc("Wood Blade", "scr_weaponinfo_slash_scr_weaponinfo_gml_33_0")
        weapondesctemp = gml_Script_stringsetloc("A wooden practice blade with a carbon-#reinforced core.", "scr_weaponinfo_slash_scr_weaponinfo_gml_34_0")
        wmessage2temp = gml_Script_stringsetloc("What's this!? A CHOPSTICK?", "scr_weaponinfo_slash_scr_weaponinfo_gml_35_0")
        if (global.plot < 30 && global.chapter == 1)
            wmessage2tempt = gml_Script_stringsetloc("... You have a SWORD!?", "scr_weaponinfo_slash_scr_weaponinfo_gml_39_0")
        wmessage3temp = gml_Script_stringsetloc("That's yours, Kris...", "scr_weaponinfo_slash_scr_weaponinfo_gml_40_0")
        wmessage4temp = gml_Script_stringsetloc("(It has bite marks...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_42_0")
        weaponattemp = 0
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 1
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponicontemp = 1
        weaponabilityicontemp = 0
        weaponabilitytemp = " "
        value = 60
        break
    case 2:
        weaponnametemp = gml_Script_stringsetloc("Mane Ax", "scr_weaponinfo_slash_scr_weaponinfo_gml_59_0")
        weapondesctemp = gml_Script_stringsetloc("Beginner's ax forged from the#mane of a dragon whelp.", "scr_weaponinfo_slash_scr_weaponinfo_gml_60_0")
        wmessage2temp = gml_Script_stringsetloc("I'm too GOOD for that.", "scr_weaponinfo_slash_scr_weaponinfo_gml_61_0")
        wmessage3temp = gml_Script_stringsetloc("Ummm... it's a bit big.", "scr_weaponinfo_slash_scr_weaponinfo_gml_62_0")
        wmessage4temp = gml_Script_stringsetloc("It... smells nice...", "scr_weaponinfo_slash_scr_weaponinfo_gml_64_0")
        weaponattemp = 0
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponicontemp = 2
        weaponabilityicontemp = 0
        weaponabilitytemp = " "
        value = 80
        break
    case 3:
        weaponnametemp = gml_Script_stringsetloc("Red Scarf", "scr_weaponinfo_slash_scr_weaponinfo_gml_81_0")
        weapondesctemp = gml_Script_stringsetloc("A basic scarf made of lightly#magical fiber.", "scr_weaponinfo_slash_scr_weaponinfo_gml_82_0")
        wmessage2temp = gml_Script_stringsetloc("No. Just... no.", "scr_weaponinfo_slash_scr_weaponinfo_gml_83_0")
        wmessage3temp = gml_Script_stringsetloc("Comfy! Touch it, Kris!", "scr_weaponinfo_slash_scr_weaponinfo_gml_84_0")
        wmessage4temp = gml_Script_stringsetloc("Huh? No, I'm not cold.", "scr_weaponinfo_slash_scr_weaponinfo_gml_86_0")
        weaponattemp = 0
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 1
        weaponicontemp = 3
        weaponabilityicontemp = 0
        weaponabilitytemp = " "
        value = 100
        break
    case 4:
        weaponnametemp = gml_Script_stringsetloc("EverybodyWeapon", "scr_weaponinfo_slash_scr_weaponinfo_gml_105_0")
        weapondesctemp = gml_Script_stringsetloc("It felt right for everyone.", "scr_weaponinfo_slash_scr_weaponinfo_gml_106_0")
        wmessage2temp = gml_Script_stringsetloc("Uhhh... Ok.", "scr_weaponinfo_slash_scr_weaponinfo_gml_107_0")
        wmessage3temp = gml_Script_stringsetloc("A perfect fit!", "scr_weaponinfo_slash_scr_weaponinfo_gml_108_0")
        wmessage4temp = gml_Script_stringsetloc("Wh... what is this?", "scr_weaponinfo_slash_scr_weaponinfo_gml_109_0")
        weaponattemp = 12
        weapondftemp = 6
        weaponmagtemp = 8
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 1
        weaponchar2temp = 1
        weaponchar3temp = 1
        weaponchar4temp = 1
        weaponicontemp = 0
        weaponabilityicontemp = 0
        weaponabilitytemp = " "
        value = 150
        break
    case 5:
        weaponnametemp = gml_Script_stringsetloc("Spookysword", "scr_weaponinfo_slash_scr_weaponinfo_gml_127_0")
        weapondesctemp = gml_Script_stringsetloc("A black-and-orange sword with a bat hilt.", "scr_weaponinfo_slash_scr_weaponinfo_gml_128_0")
        wmessage2temp = gml_Script_stringsetloc("Ugh, it's too small!", "scr_weaponinfo_slash_scr_weaponinfo_gml_129_0")
        wmessage3temp = gml_Script_stringsetloc("Oh, it's too scary!", "scr_weaponinfo_slash_scr_weaponinfo_gml_130_0")
        wmessage4temp = gml_Script_stringsetloc("(It's kinda cool...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_132_0")
        weaponattemp = 2
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 1
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponicontemp = 1
        weaponabilityicontemp = 7
        weaponabilitytemp = gml_Script_stringsetloc("Spookiness UP", "scr_weaponinfo_slash_scr_weaponinfo_gml_145_0")
        value = 200
        break
    case 6:
        weaponnametemp = gml_Script_stringsetloc("Brave Ax", "scr_weaponinfo_slash_scr_weaponinfo_gml_149_0")
        weapondesctemp = gml_Script_stringsetloc("A glossy ax from a block warrior.#Suitable for heroes.", "scr_weaponinfo_slash_scr_weaponinfo_gml_150_0")
        wmessage2temp = gml_Script_stringsetloc("Well, if I have to.", "scr_weaponinfo_slash_scr_weaponinfo_gml_151_0")
        wmessage3temp = gml_Script_stringsetloc("It's a bit too heavy...", "scr_weaponinfo_slash_scr_weaponinfo_gml_152_0")
        wmessage4temp = gml_Script_stringsetloc("(W-wow, what presence...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_154_0")
        weaponattemp = 2
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 1
        weaponchar3temp = 0
        weaponicontemp = 2
        weaponabilityicontemp = 7
        weaponabilitytemp = gml_Script_stringsetloc("Guts Up", "scr_weaponinfo_slash_scr_weaponinfo_gml_167_0")
        value = 150
        break
    case 7:
        weaponnametemp = gml_Script_stringsetloc("Devilsknife", "scr_weaponinfo_slash_scr_weaponinfo_gml_171_0")
        weapondesctemp = gml_Script_stringsetloc("Skull-emblazoned scythe-ax.#Reduces Rudebuster's cost by 10", "scr_weaponinfo_slash_scr_weaponinfo_gml_172_0")
        wmessage2temp = gml_Script_stringsetloc("Let the games begin!", "scr_weaponinfo_slash_scr_weaponinfo_gml_173_0")
        wmessage3temp = gml_Script_stringsetloc("It's too, um, evil.", "scr_weaponinfo_slash_scr_weaponinfo_gml_174_0")
        wmessage4temp = gml_Script_stringsetloc("...? It smiled at me?", "scr_weaponinfo_slash_scr_weaponinfo_gml_176_0")
        weaponattemp = 5
        weapondftemp = 0
        weaponmagtemp = 4
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 1
        weaponchar3temp = 0
        weaponicontemp = 2
        weaponabilityicontemp = 6
        weaponabilitytemp = gml_Script_stringsetloc("Buster TP DOWN", "scr_weaponinfo_slash_scr_weaponinfo_gml_189_0")
        value = 0
        break
    case 8:
        weaponnametemp = gml_Script_stringsetloc("Trefoil", "scr_weaponinfo_slash_scr_weaponinfo_gml_194_0")
        weapondesctemp = gml_Script_stringsetloc("Mossy rapier with a clover emblem.#Increases $ found by 5%.", "scr_weaponinfo_slash_scr_weaponinfo_gml_195_0")
        wmessage2temp = gml_Script_stringsetloc("That tacky thing? No!", "scr_weaponinfo_slash_scr_weaponinfo_gml_196_0")
        wmessage3temp = gml_Script_stringsetloc("Not my shade of green...", "scr_weaponinfo_slash_scr_weaponinfo_gml_197_0")
        wmessage4temp = gml_Script_stringsetloc("Okay! ...? What do you mean, unused!?", "scr_weaponinfo_slash_scr_weaponinfo_gml_198_0")
        weaponattemp = 4
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 1
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponicontemp = 1
        weaponabilityicontemp = 7
        weaponabilitytemp = gml_Script_stringsetloc("Money Earned UP", "scr_weaponinfo_slash_scr_weaponinfo_gml_211_0")
        value = 250
        break
    case 9:
        weaponnametemp = gml_Script_stringsetloc("Ragger", "scr_weaponinfo_slash_scr_weaponinfo_gml_215_0")
        weapondesctemp = gml_Script_stringsetloc("A rugged scarf that cuts enemies like a dagger.", "scr_weaponinfo_slash_scr_weaponinfo_gml_216_0")
        wmessage2temp = gml_Script_stringsetloc("Ow! That can't be comfy!", "scr_weaponinfo_slash_scr_weaponinfo_gml_217_0")
        wmessage3temp = gml_Script_stringsetloc("Feels prickly... Nice!", "scr_weaponinfo_slash_scr_weaponinfo_gml_218_0")
        wmessage4temp = gml_Script_stringsetloc("Ouch! ... kind of nice", "scr_weaponinfo_slash_scr_weaponinfo_gml_220_0")
        weaponattemp = 2
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 1
        weaponicontemp = 3
        weaponabilityicontemp = 0
        weaponabilitytemp = " "
        value = 200
        break
    case 10:
        weaponnametemp = gml_Script_stringsetloc("DaintyScarf", "scr_weaponinfo_slash_scr_weaponinfo_gml_237_0")
        weapondesctemp = gml_Script_stringsetloc("Delicate scarf that increases healing#power but has no attack.", "scr_weaponinfo_slash_scr_weaponinfo_gml_238_0")
        wmessage2temp = gml_Script_stringsetloc("IT'S MADE OF DOILIES!", "scr_weaponinfo_slash_scr_weaponinfo_gml_239_0")
        wmessage3temp = gml_Script_stringsetloc("I'll protect everyone!", "scr_weaponinfo_slash_scr_weaponinfo_gml_240_0")
        wmessage4temp = gml_Script_stringsetloc("S-stop covering me with it!", "scr_weaponinfo_slash_scr_weaponinfo_gml_242_0")
        weaponattemp = 0
        weapondftemp = 0
        weaponmagtemp = 2
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 1
        weaponicontemp = 3
        weaponabilityicontemp = 7
        weaponabilitytemp = gml_Script_stringsetloc("Fluffiness UP", "scr_weaponinfo_slash_scr_weaponinfo_gml_255_0")
        value = 200
        break
    case 11:
        weaponnametemp = gml_Script_stringsetloc("TwistedSwd", "scr_weaponinfo_slash_scr_weaponinfo_gml_260_0")
        weapondesctemp = gml_Script_stringsetloc("A strange blade", "scr_weaponinfo_slash_scr_weaponinfo_gml_261_0")
        wmessage2temp = gml_Script_stringsetloc("... uhh, looks bad.", "scr_weaponinfo_slash_scr_weaponinfo_gml_262_0")
        wmessage3temp = gml_Script_stringsetloc("It's like a spiral.", "scr_weaponinfo_slash_scr_weaponinfo_gml_263_0")
        wmessage4temp = gml_Script_stringsetloc("It's... kind of scary...", "scr_weaponinfo_slash_scr_weaponinfo_gml_264_0")
        weaponattemp = 16
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 1
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponicontemp = 1
        weaponabilityicontemp = 6
        weaponabilitytemp = gml_Script_stringsetloc("Trance", "scr_weaponinfo_slash_scr_weaponinfo_gml_277_0")
        value = 1
        break
    case 12:
        weaponnametemp = gml_Script_stringsetloc("SnowRing", "scr_weaponinfo_slash_scr_weaponinfo_gml_282_0")
        weapondesctemp = gml_Script_stringsetloc("A ring with the emblem of the#snowflake", "scr_weaponinfo_slash_scr_weaponinfo_gml_283_0")
        wmessage2temp = gml_Script_stringsetloc("Smells like Noelle", "scr_weaponinfo_slash_scr_weaponinfo_gml_284_0")
        wmessage3temp = gml_Script_stringsetloc("Are you... proposing?", "scr_weaponinfo_slash_scr_weaponinfo_gml_285_0")
        wmessage4temp = gml_Script_stringsetloc("(Thank goodness...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_286_0")
        weaponattemp = 0
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponchar4temp = 1
        weaponicontemp = 14
        weaponabilityicontemp = 0
        weaponabilitytemp = " "
        value = 100
        break
    case 13:
        weaponnametemp = gml_Script_stringsetloc("ThornRing", "scr_weaponinfo_slash_scr_weaponinfo_gml_305_0")
        weapondesctemp = gml_Script_stringsetloc("Wearer takes damage from pain#Reduces the TP cost of ice spells", "scr_weaponinfo_slash_scr_weaponinfo_gml_306_0")
        wmessage2temp = gml_Script_stringsetloc("A torture device?", "scr_weaponinfo_slash_scr_weaponinfo_gml_307_0")
        wmessage3temp = gml_Script_stringsetloc("...", "scr_weaponinfo_slash_scr_weaponinfo_gml_308_0")
        wmessage4temp = gml_Script_stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_309_0")
        weaponattemp = 14
        weapondftemp = 0
        weaponmagtemp = 12
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponchar4temp = 1
        weaponicontemp = 14
        weaponabilityicontemp = 14
        weaponabilitytemp = gml_Script_stringsetloc("Trance", "scr_weaponinfo_slash_scr_weaponinfo_gml_323_0")
        value = 0
        break
    case 14:
        weaponnametemp = gml_Script_stringsetloc("BounceBlade", "scr_weaponinfo_slash_scr_weaponinfo_gml_328_0")
        weapondesctemp = gml_Script_stringsetloc("A pink saber with a rubber blade.#Weak, but increases defence.", "scr_weaponinfo_slash_scr_weaponinfo_gml_329_0")
        wmessage2temp = gml_Script_stringsetloc("What is this, rubber?", "scr_weaponinfo_slash_scr_weaponinfo_gml_330_0")
        wmessage3temp = gml_Script_stringsetloc("Soft and squishy!", "scr_weaponinfo_slash_scr_weaponinfo_gml_331_0")
        wmessage4temp = gml_Script_stringsetloc("S-stop thwacking me!", "scr_weaponinfo_slash_scr_weaponinfo_gml_332_0")
        weaponattemp = 2
        weapondftemp = 1
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 1
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponchar4temp = 0
        weaponicontemp = 1
        weaponabilityicontemp = 7
        weaponabilitytemp = gml_Script_stringsetloc("Defense", "scr_weaponinfo_slash_scr_weaponinfo_gml_346_0")
        value = 250
        break
    case 15:
        weaponnametemp = gml_Script_stringsetloc("CheerScarf", "scr_weaponinfo_slash_scr_weaponinfo_gml_351_0")
        weapondesctemp = gml_Script_stringsetloc("A scarf with colorful you-can-do-it#imagery. Gains more TP from criticals.", "scr_weaponinfo_slash_scr_weaponinfo_gml_352_0")
        wmessage2temp = gml_Script_stringsetloc("Smiley faces? Ecch.", "scr_weaponinfo_slash_scr_weaponinfo_gml_353_0")
        wmessage3temp = gml_Script_stringsetloc("You can do it!", "scr_weaponinfo_slash_scr_weaponinfo_gml_354_0")
        wmessage4temp = gml_Script_stringsetloc("Now THIS is a tacky scarf! Faha!", "scr_weaponinfo_slash_scr_weaponinfo_gml_355_0")
        weaponattemp = 1
        weapondftemp = 0
        weaponmagtemp = 2
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 1
        weaponchar4temp = 0
        weaponicontemp = 3
        weaponabilityicontemp = 10
        weaponabilitytemp = gml_Script_stringsetloc("Smiley", "scr_weaponinfo_slash_scr_weaponinfo_gml_369_0")
        value = 250
        break
    case 16:
        weaponnametemp = gml_Script_stringsetloc("MechaSaber", "scr_weaponinfo_slash_scr_weaponinfo_gml_374_0")
        weapondesctemp = gml_Script_stringsetloc("The blade extends when you press the hilt.#CHA-CHK!", "scr_weaponinfo_slash_scr_weaponinfo_gml_375_0")
        wmessage2temp = gml_Script_stringsetloc("*chk chk chk chk* Nah.", "scr_weaponinfo_slash_scr_weaponinfo_gml_376_0")
        wmessage3temp = gml_Script_stringsetloc("You'd look cool holding it, Kris!", "scr_weaponinfo_slash_scr_weaponinfo_gml_377_0")
        wmessage4temp = gml_Script_stringsetloc("*chk* A-AHH! Scared myself...", "scr_weaponinfo_slash_scr_weaponinfo_gml_378_0")
        weaponattemp = 4
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 1
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponchar4temp = 0
        weaponicontemp = 1
        weaponabilityicontemp = 13
        weaponabilitytemp = gml_Script_stringsetloc("Annoying", "scr_weaponinfo_slash_scr_weaponinfo_gml_392_0")
        value = 250
        break
    case 17:
        weaponnametemp = gml_Script_stringsetloc("AutoAxe", "scr_weaponinfo_slash_scr_weaponinfo_gml_397_0")
        weapondesctemp = gml_Script_stringsetloc("Make sure to charge it by#plugging it into the wall.", "scr_weaponinfo_slash_scr_weaponinfo_gml_398_0")
        wmessage2temp = gml_Script_stringsetloc("*chainsaw noises* Hahaha!!", "scr_weaponinfo_slash_scr_weaponinfo_gml_399_0")
        wmessage3temp = gml_Script_stringsetloc("(Is this a good idea?)", "scr_weaponinfo_slash_scr_weaponinfo_gml_400_0")
        wmessage4temp = gml_Script_stringsetloc("*zrrt* A-AHH! Scared myself...", "scr_weaponinfo_slash_scr_weaponinfo_gml_401_0")
        weaponattemp = 4
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 1
        weaponchar3temp = 0
        weaponchar4temp = 0
        weaponicontemp = 2
        weaponabilityicontemp = 13
        weaponabilitytemp = gml_Script_stringsetloc("BadIdea", "scr_weaponinfo_slash_scr_weaponinfo_gml_415_0")
        value = 250
        break
    case 18:
        weaponnametemp = gml_Script_stringsetloc("FiberScarf", "scr_weaponinfo_slash_scr_weaponinfo_gml_420_0")
        weapondesctemp = gml_Script_stringsetloc("A scarf made of soft microfiber.#Balances attack and magic.", "scr_weaponinfo_slash_scr_weaponinfo_gml_421_0")
        wmessage2temp = gml_Script_stringsetloc("(Soft...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_422_0")
        wmessage3temp = gml_Script_stringsetloc("Oh! My fur's staticy!", "scr_weaponinfo_slash_scr_weaponinfo_gml_423_0")
        wmessage4temp = gml_Script_stringsetloc("Sure, I'll... huh? It's a weapon?", "scr_weaponinfo_slash_scr_weaponinfo_gml_424_0")
        weaponattemp = 2
        weapondftemp = 0
        weaponmagtemp = 2
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 1
        weaponchar4temp = 0
        weaponicontemp = 3
        weaponabilityicontemp = 0
        weaponabilitytemp = " "
        value = 250
        break
    case 19:
        weaponnametemp = gml_Script_stringsetloc("Ragger2", "scr_weaponinfo_slash_scr_weaponinfo_gml_443_0")
        weapondesctemp = gml_Script_stringsetloc("A sharp and scratchy scarf.#Worse healing, better attack.", "scr_weaponinfo_slash_scr_weaponinfo_gml_444_0")
        wmessage2temp = gml_Script_stringsetloc("This is Ralsei's deal.", "scr_weaponinfo_slash_scr_weaponinfo_gml_445_0")
        wmessage3temp = gml_Script_stringsetloc("I'm a prickly prince!", "scr_weaponinfo_slash_scr_weaponinfo_gml_446_0")
        wmessage4temp = gml_Script_stringsetloc("(It's like Santa's beard?)", "scr_weaponinfo_slash_scr_weaponinfo_gml_447_0")
        weaponattemp = 5
        weapondftemp = 0
        weaponmagtemp = -1
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 1
        weaponchar4temp = 0
        weaponicontemp = 3
        weaponabilityicontemp = 7
        weaponabilitytemp = gml_Script_stringsetloc("Prickly", "scr_weaponinfo_slash_scr_weaponinfo_gml_461_0")
        value = 250
        break
    case 20:
        weaponnametemp = gml_Script_stringsetloc("BrokenSwd", "scr_weaponinfo_slash_scr_weaponinfo_gml_467_0")
        weapondesctemp = gml_Script_stringsetloc("A rejected sword cut into 2 pieces.#Not even you can equip this...", "scr_weaponinfo_slash_scr_weaponinfo_gml_468_0")
        wmessage2temp = gml_Script_stringsetloc("... this is trash.", "scr_weaponinfo_slash_scr_weaponinfo_gml_469_0")
        wmessage3temp = gml_Script_stringsetloc("Should we fix this...?", "scr_weaponinfo_slash_scr_weaponinfo_gml_470_0")
        wmessage4temp = gml_Script_stringsetloc("(Wh... why give this to me?)", "scr_weaponinfo_slash_scr_weaponinfo_gml_471_0")
        weaponattemp = 0
        weapondftemp = 0
        weaponmagtemp = 0
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponchar4temp = 0
        weaponicontemp = 1
        weaponabilityicontemp = 6
        weaponabilitytemp = gml_Script_stringsetloc("Failure", "scr_weaponinfo_slash_scr_weaponinfo_gml_485_0")
        value = 2
        break
    case 21:
        weaponnametemp = gml_Script_stringsetloc("PuppetScarf", "scr_weaponinfo_slash_scr_weaponinfo_gml_490_0")
        weapondesctemp = gml_Script_stringsetloc("A scarf made of strange strings.#For those that abandon healing.", "scr_weaponinfo_slash_scr_weaponinfo_gml_491_0")
        wmessage2temp = gml_Script_stringsetloc("No way, that's creepy.", "scr_weaponinfo_slash_scr_weaponinfo_gml_492_0")
        wmessage3temp = gml_Script_stringsetloc("If I have to fight...", "scr_weaponinfo_slash_scr_weaponinfo_gml_493_0")
        wmessage4temp = gml_Script_stringsetloc("(Feels like guitar strings...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_494_0")
        weaponattemp = 10
        weapondftemp = 0
        weaponmagtemp = -6
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 1
        weaponchar4temp = 0
        weaponicontemp = 3
        weaponabilityicontemp = 0
        weaponabilitytemp = " "
        value = 0
        break
    case 22:
        weaponnametemp = gml_Script_stringsetloc("FreezeRing", "scr_weaponinfo_slash_scr_weaponinfo_gml_513_0")
        weapondesctemp = gml_Script_stringsetloc("A ring with a snowglobe on it.#... is that someone inside?", "scr_weaponinfo_slash_scr_weaponinfo_gml_514_0")
        wmessage2temp = gml_Script_stringsetloc("Heh, you steal this? Heh.", "scr_weaponinfo_slash_scr_weaponinfo_gml_515_0")
        wmessage3temp = gml_Script_stringsetloc("It's beautiful...", "scr_weaponinfo_slash_scr_weaponinfo_gml_516_0")
        wmessage4temp = gml_Script_stringsetloc("...", "scr_weaponinfo_slash_scr_weaponinfo_gml_517_0")
        weaponattemp = 4
        weapondftemp = 0
        weaponmagtemp = 4
        weaponboltstemp = 1
        weaponstyletemp = "?"
        weapongrazeamttemp = 0
        weapongrazesizetemp = 0
        weaponchar1temp = 0
        weaponchar2temp = 0
        weaponchar3temp = 0
        weaponchar4temp = 1
        weaponicontemp = 14
        weaponabilityicontemp = 0
        weaponabilitytemp = " "
        value = 1000
        break
}

return;
