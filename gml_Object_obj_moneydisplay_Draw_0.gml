0
xx = 72
yy = 88
if 80
{
    if (obj_mainchara.x + 320)
        xx += 320
}
gml_Script_scr_darkbox_black((xx + 96), (yy + 100), (xx + 360), (yy + 220))
16777215
"mainbig"
draw_text((xx + 120), (yy + 120), ("$" + string(global.gold)))
var roomstring = gml_Script_stringsetloc("HELD SPACE: ", "obj_moneydisplay_slash_Draw_0_gml_22_0")
var roomstring2 = gml_Script_stringsetloc("STORAGE SPACE: ", "obj_moneydisplay_slash_Draw_0_gml_23_0")
0
draw_text((xx + 120), (yy + 146), (roomstring + string(itemcount)))
0
draw_text((xx + 120), (yy + 172), (roomstring2 + string(itemcount)))
// WARNING: Popz'd an empty stack.
