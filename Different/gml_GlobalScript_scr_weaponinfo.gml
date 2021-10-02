scr_weaponinfo = function(argument0) // gml_Script_scr_weaponinfo
{
    weaponchar4temp = 0
    weaponnametemp = stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_2_0")
    switch argument0
    {
        case 0:
            weaponnametemp = stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_11_0")
            weapondesctemp = stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_12_0")
            wmessage2temp = stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_13_0")
            wmessage3temp = stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_14_0")
            wmessage4temp = stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_15_0")
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
            weaponnametemp = stringsetloc("Wood Blade", "scr_weaponinfo_slash_scr_weaponinfo_gml_33_0")
            weapondesctemp = stringsetloc("A wooden practice blade with a carbon-#reinforced core.", "scr_weaponinfo_slash_scr_weaponinfo_gml_34_0")
            wmessage2temp = stringsetloc("What's this!? A CHOPSTICK?", "scr_weaponinfo_slash_scr_weaponinfo_gml_35_0")
            if (global.plot < 30 && global.chapter == 1)
                wmessage2tempt = stringsetloc("... You have a SWORD!?", "scr_weaponinfo_slash_scr_weaponinfo_gml_39_0")
            wmessage3temp = stringsetloc("That's yours, Kris...", "scr_weaponinfo_slash_scr_weaponinfo_gml_40_0")
            wmessage4temp = stringsetloc("(It has bite marks...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_42_0")
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
            weaponnametemp = stringsetloc("Mane Ax", "scr_weaponinfo_slash_scr_weaponinfo_gml_59_0")
            weapondesctemp = stringsetloc("Beginner's ax forged from the#mane of a dragon whelp.", "scr_weaponinfo_slash_scr_weaponinfo_gml_60_0")
            wmessage2temp = stringsetloc("I'm too GOOD for that.", "scr_weaponinfo_slash_scr_weaponinfo_gml_61_0")
            wmessage3temp = stringsetloc("Ummm... it's a bit big.", "scr_weaponinfo_slash_scr_weaponinfo_gml_62_0")
            wmessage4temp = stringsetloc("It... smells nice...", "scr_weaponinfo_slash_scr_weaponinfo_gml_64_0")
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
            weaponnametemp = stringsetloc("Red Scarf", "scr_weaponinfo_slash_scr_weaponinfo_gml_81_0")
            weapondesctemp = stringsetloc("A basic scarf made of lightly#magical fiber.", "scr_weaponinfo_slash_scr_weaponinfo_gml_82_0")
            wmessage2temp = stringsetloc("No. Just... no.", "scr_weaponinfo_slash_scr_weaponinfo_gml_83_0")
            wmessage3temp = stringsetloc("Comfy! Touch it, Kris!", "scr_weaponinfo_slash_scr_weaponinfo_gml_84_0")
            wmessage4temp = stringsetloc("Huh? No, I'm not cold.", "scr_weaponinfo_slash_scr_weaponinfo_gml_86_0")
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
            weaponnametemp = stringsetloc("EverybodyWeapon", "scr_weaponinfo_slash_scr_weaponinfo_gml_105_0")
            weapondesctemp = stringsetloc("It felt right for everyone.", "scr_weaponinfo_slash_scr_weaponinfo_gml_106_0")
            wmessage2temp = stringsetloc("Uhhh... Ok.", "scr_weaponinfo_slash_scr_weaponinfo_gml_107_0")
            wmessage3temp = stringsetloc("A perfect fit!", "scr_weaponinfo_slash_scr_weaponinfo_gml_108_0")
            wmessage4temp = stringsetloc("Wh... what is this?", "scr_weaponinfo_slash_scr_weaponinfo_gml_109_0")
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
            weaponnametemp = stringsetloc("Spookysword", "scr_weaponinfo_slash_scr_weaponinfo_gml_127_0")
            weapondesctemp = stringsetloc("A black-and-orange sword with a bat hilt.", "scr_weaponinfo_slash_scr_weaponinfo_gml_128_0")
            wmessage2temp = stringsetloc("Ugh, it's too small!", "scr_weaponinfo_slash_scr_weaponinfo_gml_129_0")
            wmessage3temp = stringsetloc("Oh, it's too scary!", "scr_weaponinfo_slash_scr_weaponinfo_gml_130_0")
            wmessage4temp = stringsetloc("(It's kinda cool...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_132_0")
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
            weaponabilitytemp = stringsetloc("Spookiness UP", "scr_weaponinfo_slash_scr_weaponinfo_gml_145_0")
            value = 200
            break
        case 6:
            weaponnametemp = stringsetloc("Brave Ax", "scr_weaponinfo_slash_scr_weaponinfo_gml_149_0")
            weapondesctemp = stringsetloc("A glossy ax from a block warrior.#Suitable for heroes.", "scr_weaponinfo_slash_scr_weaponinfo_gml_150_0")
            wmessage2temp = stringsetloc("Well, if I have to.", "scr_weaponinfo_slash_scr_weaponinfo_gml_151_0")
            wmessage3temp = stringsetloc("It's a bit too heavy...", "scr_weaponinfo_slash_scr_weaponinfo_gml_152_0")
            wmessage4temp = stringsetloc("(W-wow, what presence...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_154_0")
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
            weaponabilitytemp = stringsetloc("Guts Up", "scr_weaponinfo_slash_scr_weaponinfo_gml_167_0")
            value = 150
            break
        case 7:
            weaponnametemp = stringsetloc("Devilsknife", "scr_weaponinfo_slash_scr_weaponinfo_gml_171_0")
            weapondesctemp = stringsetloc("Skull-emblazoned scythe-ax.#Reduces Rudebuster's cost by 10", "scr_weaponinfo_slash_scr_weaponinfo_gml_172_0")
            wmessage2temp = stringsetloc("Let the games begin!", "scr_weaponinfo_slash_scr_weaponinfo_gml_173_0")
            wmessage3temp = stringsetloc("It's too, um, evil.", "scr_weaponinfo_slash_scr_weaponinfo_gml_174_0")
            wmessage4temp = stringsetloc("...? It smiled at me?", "scr_weaponinfo_slash_scr_weaponinfo_gml_176_0")
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
            weaponabilitytemp = stringsetloc("Buster TP DOWN", "scr_weaponinfo_slash_scr_weaponinfo_gml_189_0")
            value = 0
            break
        case 8:
            weaponnametemp = stringsetloc("Trefoil", "scr_weaponinfo_slash_scr_weaponinfo_gml_194_0")
            weapondesctemp = stringsetloc("Mossy rapier with a clover emblem.#Increases $ found by 5%.", "scr_weaponinfo_slash_scr_weaponinfo_gml_195_0")
            wmessage2temp = stringsetloc("That tacky thing? No!", "scr_weaponinfo_slash_scr_weaponinfo_gml_196_0")
            wmessage3temp = stringsetloc("Not my shade of green...", "scr_weaponinfo_slash_scr_weaponinfo_gml_197_0")
            wmessage4temp = stringsetloc("Okay! ...? What do you mean, unused!?", "scr_weaponinfo_slash_scr_weaponinfo_gml_198_0")
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
            weaponabilitytemp = stringsetloc("Money Earned UP", "scr_weaponinfo_slash_scr_weaponinfo_gml_211_0")
            value = 250
            break
        case 9:
            weaponnametemp = stringsetloc("Ragger", "scr_weaponinfo_slash_scr_weaponinfo_gml_215_0")
            weapondesctemp = stringsetloc("A rugged scarf that cuts enemies like a dagger.", "scr_weaponinfo_slash_scr_weaponinfo_gml_216_0")
            wmessage2temp = stringsetloc("Ow! That can't be comfy!", "scr_weaponinfo_slash_scr_weaponinfo_gml_217_0")
            wmessage3temp = stringsetloc("Feels prickly... Nice!", "scr_weaponinfo_slash_scr_weaponinfo_gml_218_0")
            wmessage4temp = stringsetloc("Ouch! ... kind of nice", "scr_weaponinfo_slash_scr_weaponinfo_gml_220_0")
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
            weaponnametemp = stringsetloc("DaintyScarf", "scr_weaponinfo_slash_scr_weaponinfo_gml_237_0")
            weapondesctemp = stringsetloc("Delicate scarf that increases healing#power but has no attack.", "scr_weaponinfo_slash_scr_weaponinfo_gml_238_0")
            wmessage2temp = stringsetloc("IT'S MADE OF DOILIES!", "scr_weaponinfo_slash_scr_weaponinfo_gml_239_0")
            wmessage3temp = stringsetloc("I'll protect everyone!", "scr_weaponinfo_slash_scr_weaponinfo_gml_240_0")
            wmessage4temp = stringsetloc("S-stop covering me with it!", "scr_weaponinfo_slash_scr_weaponinfo_gml_242_0")
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
            weaponabilitytemp = stringsetloc("Fluffiness UP", "scr_weaponinfo_slash_scr_weaponinfo_gml_255_0")
            value = 200
            break
        case 11:
            weaponnametemp = stringsetloc("TwistedSwd", "scr_weaponinfo_slash_scr_weaponinfo_gml_260_0")
            weapondesctemp = stringsetloc("A strange blade", "scr_weaponinfo_slash_scr_weaponinfo_gml_261_0")
            wmessage2temp = stringsetloc("... uhh, looks bad.", "scr_weaponinfo_slash_scr_weaponinfo_gml_262_0")
            wmessage3temp = stringsetloc("It's like a spiral.", "scr_weaponinfo_slash_scr_weaponinfo_gml_263_0")
            wmessage4temp = stringsetloc("It's... kind of scary...", "scr_weaponinfo_slash_scr_weaponinfo_gml_264_0")
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
            weaponabilitytemp = stringsetloc("Trance", "scr_weaponinfo_slash_scr_weaponinfo_gml_277_0")
            value = 1
            break
        case 12:
            weaponnametemp = stringsetloc("SnowRing", "scr_weaponinfo_slash_scr_weaponinfo_gml_282_0")
            weapondesctemp = stringsetloc("A ring with the emblem of the#snowflake", "scr_weaponinfo_slash_scr_weaponinfo_gml_283_0")
            wmessage2temp = stringsetloc("Smells like Noelle", "scr_weaponinfo_slash_scr_weaponinfo_gml_284_0")
            wmessage3temp = stringsetloc("Are you... proposing?", "scr_weaponinfo_slash_scr_weaponinfo_gml_285_0")
            wmessage4temp = stringsetloc("(Thank goodness...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_286_0")
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
            weaponnametemp = stringsetloc("ThornRing", "scr_weaponinfo_slash_scr_weaponinfo_gml_305_0")
            weapondesctemp = stringsetloc("Wearer takes damage from pain#Reduces the TP cost of ice spells", "scr_weaponinfo_slash_scr_weaponinfo_gml_306_0")
            wmessage2temp = stringsetloc("A torture device?", "scr_weaponinfo_slash_scr_weaponinfo_gml_307_0")
            wmessage3temp = stringsetloc("...", "scr_weaponinfo_slash_scr_weaponinfo_gml_308_0")
            wmessage4temp = stringsetloc(" ", "scr_weaponinfo_slash_scr_weaponinfo_gml_309_0")
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
            weaponabilitytemp = stringsetloc("Trance", "scr_weaponinfo_slash_scr_weaponinfo_gml_323_0")
            value = 0
            break
        case 14:
            weaponnametemp = stringsetloc("BounceBlade", "scr_weaponinfo_slash_scr_weaponinfo_gml_328_0")
            weapondesctemp = stringsetloc("A pink saber with a rubber blade.#Weak, but increases defence.", "scr_weaponinfo_slash_scr_weaponinfo_gml_329_0")
            wmessage2temp = stringsetloc("What is this, rubber?", "scr_weaponinfo_slash_scr_weaponinfo_gml_330_0")
            wmessage3temp = stringsetloc("Soft and squishy!", "scr_weaponinfo_slash_scr_weaponinfo_gml_331_0")
            wmessage4temp = stringsetloc("S-stop thwacking me!", "scr_weaponinfo_slash_scr_weaponinfo_gml_332_0")
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
            weaponabilitytemp = stringsetloc("Defense", "scr_weaponinfo_slash_scr_weaponinfo_gml_346_0")
            value = 250
            break
        case 15:
            weaponnametemp = stringsetloc("CheerScarf", "scr_weaponinfo_slash_scr_weaponinfo_gml_351_0")
            weapondesctemp = stringsetloc("A scarf with colorful you-can-do-it#imagery. Gains more TP from criticals.", "scr_weaponinfo_slash_scr_weaponinfo_gml_352_0")
            wmessage2temp = stringsetloc("Smiley faces? Ecch.", "scr_weaponinfo_slash_scr_weaponinfo_gml_353_0")
            wmessage3temp = stringsetloc("You can do it!", "scr_weaponinfo_slash_scr_weaponinfo_gml_354_0")
            wmessage4temp = stringsetloc("Now THIS is a tacky scarf! Faha!", "scr_weaponinfo_slash_scr_weaponinfo_gml_355_0")
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
            weaponabilitytemp = stringsetloc("Smiley", "scr_weaponinfo_slash_scr_weaponinfo_gml_369_0")
            value = 250
            break
        case 16:
            weaponnametemp = stringsetloc("MechaSaber", "scr_weaponinfo_slash_scr_weaponinfo_gml_374_0")
            weapondesctemp = stringsetloc("The blade extends when you press the hilt.#CHA-CHK!", "scr_weaponinfo_slash_scr_weaponinfo_gml_375_0")
            wmessage2temp = stringsetloc("*chk chk chk chk* Nah.", "scr_weaponinfo_slash_scr_weaponinfo_gml_376_0")
            wmessage3temp = stringsetloc("You'd look cool holding it, Kris!", "scr_weaponinfo_slash_scr_weaponinfo_gml_377_0")
            wmessage4temp = stringsetloc("*chk* A-AHH! Scared myself...", "scr_weaponinfo_slash_scr_weaponinfo_gml_378_0")
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
            weaponabilitytemp = stringsetloc("Annoying", "scr_weaponinfo_slash_scr_weaponinfo_gml_392_0")
            value = 250
            break
        case 17:
            weaponnametemp = stringsetloc("AutoAxe", "scr_weaponinfo_slash_scr_weaponinfo_gml_397_0")
            weapondesctemp = stringsetloc("Make sure to charge it by#plugging it into the wall.", "scr_weaponinfo_slash_scr_weaponinfo_gml_398_0")
            wmessage2temp = stringsetloc("*chainsaw noises* Hahaha!!", "scr_weaponinfo_slash_scr_weaponinfo_gml_399_0")
            wmessage3temp = stringsetloc("(Is this a good idea?)", "scr_weaponinfo_slash_scr_weaponinfo_gml_400_0")
            wmessage4temp = stringsetloc("*zrrt* A-AHH! Scared myself...", "scr_weaponinfo_slash_scr_weaponinfo_gml_401_0")
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
            weaponabilitytemp = stringsetloc("BadIdea", "scr_weaponinfo_slash_scr_weaponinfo_gml_415_0")
            value = 250
            break
        case 18:
            weaponnametemp = stringsetloc("FiberScarf", "scr_weaponinfo_slash_scr_weaponinfo_gml_420_0")
            weapondesctemp = stringsetloc("A scarf made of soft microfiber.#Balances attack and magic.", "scr_weaponinfo_slash_scr_weaponinfo_gml_421_0")
            wmessage2temp = stringsetloc("(Soft...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_422_0")
            wmessage3temp = stringsetloc("Oh! My fur's staticy!", "scr_weaponinfo_slash_scr_weaponinfo_gml_423_0")
            wmessage4temp = stringsetloc("Sure, I'll... huh? It's a weapon?", "scr_weaponinfo_slash_scr_weaponinfo_gml_424_0")
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
            weaponnametemp = stringsetloc("Ragger2", "scr_weaponinfo_slash_scr_weaponinfo_gml_443_0")
            weapondesctemp = stringsetloc("A sharp and scratchy scarf.#Worse healing, better attack.", "scr_weaponinfo_slash_scr_weaponinfo_gml_444_0")
            wmessage2temp = stringsetloc("This is Ralsei's deal.", "scr_weaponinfo_slash_scr_weaponinfo_gml_445_0")
            wmessage3temp = stringsetloc("I'm a prickly prince!", "scr_weaponinfo_slash_scr_weaponinfo_gml_446_0")
            wmessage4temp = stringsetloc("(It's like Santa's beard?)", "scr_weaponinfo_slash_scr_weaponinfo_gml_447_0")
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
            weaponabilitytemp = stringsetloc("Prickly", "scr_weaponinfo_slash_scr_weaponinfo_gml_461_0")
            value = 250
            break
        case 20:
            weaponnametemp = stringsetloc("BrokenSwd", "scr_weaponinfo_slash_scr_weaponinfo_gml_467_0")
            weapondesctemp = stringsetloc("A rejected sword cut into 2 pieces.#Not even you can equip this...", "scr_weaponinfo_slash_scr_weaponinfo_gml_468_0")
            wmessage2temp = stringsetloc("... this is trash.", "scr_weaponinfo_slash_scr_weaponinfo_gml_469_0")
            wmessage3temp = stringsetloc("Should we fix this...?", "scr_weaponinfo_slash_scr_weaponinfo_gml_470_0")
            wmessage4temp = stringsetloc("(Wh... why give this to me?)", "scr_weaponinfo_slash_scr_weaponinfo_gml_471_0")
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
            weaponabilitytemp = stringsetloc("Failure", "scr_weaponinfo_slash_scr_weaponinfo_gml_485_0")
            value = 2
            break
        case 21:
            weaponnametemp = stringsetloc("PuppetScarf", "scr_weaponinfo_slash_scr_weaponinfo_gml_490_0")
            weapondesctemp = stringsetloc("A scarf made of strange strings.#For those that abandon healing.", "scr_weaponinfo_slash_scr_weaponinfo_gml_491_0")
            wmessage2temp = stringsetloc("No way, that's creepy.", "scr_weaponinfo_slash_scr_weaponinfo_gml_492_0")
            wmessage3temp = stringsetloc("If I have to fight...", "scr_weaponinfo_slash_scr_weaponinfo_gml_493_0")
            wmessage4temp = stringsetloc("(Feels like guitar strings...)", "scr_weaponinfo_slash_scr_weaponinfo_gml_494_0")
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
            weaponnametemp = stringsetloc("FreezeRing", "scr_weaponinfo_slash_scr_weaponinfo_gml_513_0")
            weapondesctemp = stringsetloc("A ring with a snowglobe on it.#... is that someone inside?", "scr_weaponinfo_slash_scr_weaponinfo_gml_514_0")
            wmessage2temp = stringsetloc("Heh, you steal this? Heh.", "scr_weaponinfo_slash_scr_weaponinfo_gml_515_0")
            wmessage3temp = stringsetloc("It's beautiful...", "scr_weaponinfo_slash_scr_weaponinfo_gml_516_0")
            wmessage4temp = stringsetloc("...", "scr_weaponinfo_slash_scr_weaponinfo_gml_517_0")
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
}

