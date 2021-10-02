cur_jewel = 0
alarm[0] = 1
charcon = 0
chartimer = 0
tp = 0
xx = __view_get((0 << 0), 0)
yy = __view_get((1 << 0), 0)
global.fighting = false
movenoise = false
selectnoise = false
cancelnoise = false
onebuffer = 0
twobuffer = 0
threebuffer = 0
upbuffer = 0
downbuffer = 0
hold_up = 0
hold_down = 0
dograndom = 0
atalk = 0
deschaver = 0
bcolor = merge_color(c_purple, c_black, 0.7)
bcolor = merge_color(bcolor, c_dkgray, 0.5)
chartotal = 0
havechar[0] = false
havechar[1] = false
havechar[2] = false
havechar[3] = false
global.charturn = 3
tp = 0
tpy = 50
bp = 0
bpy = 152
mmy[0] = 0
mmy[1] = 0
mmy[2] = 0
mmy[3] = 0
global.submenu = 0
global.charselect = -1
for (var i = 0; i < 36; i += 1)
    global.submenucoord[i] = 0
global.cinstance[0] = 4343434343
global.cinstance[1] = 343434343434
for (i = 0; i < 3; i += 1)
{
    global.faceaction[i] = 0
    if (global.char[i] != 0)
        chartotal += 1
    if (global.char[i] == 1)
    {
        havechar[0] = true
        charpos[0] = i
    }
    if (global.char[i] == 2)
    {
        havechar[1] = true
        charpos[1] = i
        if (i > 0)
        {
            global.cinstance[(i - 1)] = instance_create((obj_mainchara.x - 6), (obj_mainchara.y - 16), obj_caterpillarchara)
            global.cinstance[(i - 1)].target = (i * 12)
        }
    }
    if (global.char[i] == 3)
    {
        havechar[2] = true
        charpos[2] = i
        if (i > 0)
        {
            global.cinstance[(i - 1)] = instance_create((obj_mainchara.x - 2), (obj_mainchara.y - 12), obj_caterpillarchara)
            global.cinstance[(i - 1)].target = (i * 12)
            with (global.cinstance[(i - 1)])
            {
                name = "ralsei"
                slidesprite = spr_ralsei_slide
                if (global.chapter >= 2)
                {
                    usprite = spr_ralsei_walk_up
                    dsprite = spr_ralsei_walk_down
                    rsprite = spr_ralsei_walk_right
                    lsprite = spr_ralsei_walk_left
                }
                else
                {
                    usprite = spr_ralseiu
                    dsprite = spr_ralseid
                    rsprite = spr_ralseir
                    lsprite = spr_ralseil
                }
            }
        }
    }
    if (global.char[i] == 4)
    {
        havechar[3] = true
        charpos[3] = i
        if (i > 0)
        {
            global.cinstance[(i - 1)] = instance_create((obj_mainchara.x - 4), (obj_mainchara.y - 20), obj_caterpillarchara)
            global.cinstance[(i - 1)].target = (i * 12)
            with (global.cinstance[(i - 1)])
            {
                name = "noelle"
                slidesprite = spr_noelle_walk_down_dw
                usprite = spr_noelle_walk_up_dw
                dsprite = spr_noelle_walk_down_dw
                rsprite = spr_noelle_walk_right_dw
                lsprite = spr_noelle_walk_left_dw
            }
        }
    }
}
global.charinstance[0] = obj_mainchara
global.charinstance[1] = global.cinstance[0]
global.charinstance[2] = global.cinstance[1]
slmxx = 0
slmyy = 0
s_siner = 0
menusiner = 0
pagemax[0] = 0
pagemax[1] = 0
getmusvol = 1
curvol = 1
hpcolor[0] = c_aqua
hpcolor[1] = c_fuchsia
hpcolor[2] = c_lime
hpcolor[3] = c_yellow
menu_sprite = scr_84_get_sprite("spr_darkmenudesc")
autorun_text = stringsetloc("Auto-Run", "obj_darkcontroller_slash_Draw_0_gml_94_0")
back_text = stringsetloc("Back", "obj_darkcontroller_slash_Draw_0_gml_96_0")
gamepad_controls = [32769, 32770, 32771, 32772, 32773, 32775, 32774, 32776, 32777, 32778, 32779, 32780, 32781, 32782, 32783, 32784]
border_options = [stringsetloc("Dynamic", "obj_darkcontroller_slash_Create_0_gml_153_0"), stringsetloc("Simple", "obj_darkcontroller_slash_Create_0_gml_153_1"), stringsetloc("None", "obj_darkcontroller_slash_Create_0_gml_153_2")]
selected_border = 0
i = 0
while (i < array_length_1d(border_options))
{
    if (border_options[i] == global.screen_border_id)
    {
        selected_border = i
        break
    }
    else
    {
        i++
        continue
    }
}
