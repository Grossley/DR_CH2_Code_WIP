grazetimer = 0
grazetpfactor = 1
grazetimefactor = 1
grazesizefactor = 1
grazetpfactor += (gml_Script_scr_armorcheck_equipped_party(15) * 0.1)
grazetimefactor += (gml_Script_scr_armorcheck_equipped_party(14) * 0.1)
grazesizefactor += (gml_Script_scr_armorcheck_equipped_party(3) * 0.2)
grazesizefactor += (gml_Script_scr_armorcheck_equipped_party(9) * 0.25)
if (grazetimefactor > 3)
    grazetimefactor = 3
if (grazetpfactor > 3)
    grazetpfactor = 3
if (grazesizefactor > 3)
    grazesizefactor = 3
image_xscale = grazesizefactor
image_yscale = grazesizefactor
if 628
{
    sizexoff = 0
    sizeyoff = 0
    x = ((obj_heart.x + 10) + sizexoff)
    y = ((obj_heart.y + 10) + sizeyoff)
}
