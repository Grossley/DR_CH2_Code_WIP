if (global.flag[9] == 1)
    global.batmusic[1] = mus_loop_ext_ch1(global.batmusic[0], 0.7, 1)
victory = false
victoried = 0
skipvictory = false
global.battleend = false
battlewriter = 19212912
myface = 1913918291
lbuffer = 0
rbuffer = 0
onebuffer = 0
twobuffer = 0
global.darkzone = true
global.fighting = true
global.fe = 0
global.fc = 0
global.typer = 4
global.battletyper = 4
global.myfight = 0
global.mnfight = 0
global.bmenuno = 0
global.attacking = false
global.acting = false
global.tension = 0
global.spelldelay = 10
scr_spellinfo_all_ch1()
global.tensionselect = 0
for (j = 0; j < 3; j += 1)
{
    global.temptension[j] = global.tension
    for (i = 0; i < 13; i += 1)
        tempitem[i][j] = global.item[i]
}
for (i = 0; i < 3; i += 1)
{
    global.charcond[i] = 0
    global.automiss[i] = false
    if (global.char[i] != 0)
    {
        global.charmove[i] = true
        global.charcantarget[i] = true
        global.chardead[i] = false
    }
    else
    {
        global.charmove[i] = false
        global.charcantarget[i] = false
    }
}
itempage = 0
global.flag[50] = 0
global.flag[51] = 0
global.flag[52] = 0
global.flag[53] = 0
for (i = 0; i < 3; i += 1)
{
    global.monster[i] = false
    global.monsterx[i] = 0
    global.monstery[i] = 0
    global.monstername[i] = " "
    global.monsterat[i] = 0
    global.monsterdf[i] = 0
    global.monsterhp[i] = 0
    global.monstermaxhp[i] = 0
    global.monsterinstance[i] = 12913921839
    global.monstergold[i] = 0
    global.monsterexp[i] = 0
    global.sparepoint[i] = 0
    global.hittarget[i] = 0
    global.mercymod[i] = 0
    global.mercymax[i] = 0
    global.monstercomment[i] = " "
    global.monsterstatus[i] = false
    for (j = 0; j < 6; j += 1)
    {
        global.act[i][j] = 0
        global.canact[i][j] = false
        global.actname[i][j] = " "
        global.acttype[i][j] = 0
        global.actspell[i][j] = 0
        global.actactor[i][j] = 1
        global.actdesc[i][j] = " "
        global.actcost[i][j] = 0
    }
}
global.monstergold[3] = 0
global.monsterexp[3] = 0
for (i = 0; i < 3; i += 1)
{
    if (global.monstertype[i] > 0)
    {
        global.monster[i] = true
        global.monsterinstance[i] = instance_create_ch1(global.monstermakex[i], global.monstermakey[i], global.monsterinstancetype[i])
        global.monsterinstance[i].myself = i
        with (global.monsterinstance[i])
            event_user(12)
    }
}
global.charturn = 0
for (i = 0; i < 3; i += 1)
{
    global.acting[i] = false
    global.charaction[i] = 0
    global.charspecial[i] = 0
    global.chartarget[i] = 0
    global.faceaction[i] = 0
    global.rembmenuno[i] = 0
    global.targeted[i] = false
    global.battleat[i] = (((global.at[global.char[i]] + global.itemat[global.char[i]][0]) + global.itemat[global.char[i]][1]) + global.itemat[global.char[i]][2])
    global.battledf[i] = (((global.df[global.char[i]] + global.itemdf[global.char[i]][0]) + global.itemdf[global.char[i]][1]) + global.itemdf[global.char[i]][2])
    global.battlemag[i] = (((global.mag[global.char[i]] + global.itemmag[global.char[i]][0]) + global.itemmag[global.char[i]][1]) + global.itemmag[global.char[i]][2])
}
for (i = 0; i < 20; i += 1)
{
    for (j = 0; j < 20; j += 1)
        global.bmenucoord[i][j] = 0
}
movenoise = false
selnoise = false
laznoise = false
damagenoise = false
grazenoise = false
bcolor = merge_color(c_purple, c_black, 0.7)
bcolor = merge_color(bcolor, c_dkgray, 0.5)
tp = 0
tpy = 50
bp = 0
bpy = 152
intro = 1
chartotal = 0
charpos[0] = -1
charpos[1] = -1
charpos[2] = -1
havechar[0] = false
havechar[1] = false
havechar[2] = false
global.charinstance[0] = 12129292
global.charinstance[1] = 12129292
global.charinstance[2] = 12129292
with (global.charinstance[0])
    myself = 0
with (global.charinstance[1])
    myself = 1
with (global.charinstance[2])
    myself = 2
mmy[0] = 0
mmy[1] = 0
mmy[2] = 0
for (i = 0; i < 3; i += 1)
{
    if (global.char[i] != 0)
        chartotal += 1
    if (global.char[i] == 1)
    {
        havechar[0] = true
        charpos[0] = i
        global.charinstance[i] = instance_create_ch1(global.heromakex[i], global.heromakey[i], obj_herokris_ch1)
        global.charinstance[i].myself = i
        global.charinstance[i].char = 1
        global.charinstance[i].depth = (200 - (i * 20))
    }
    if (global.char[i] == 2)
    {
        havechar[1] = true
        charpos[1] = i
        global.charinstance[i] = instance_create_ch1(global.heromakex[i], global.heromakey[i], obj_herosusie_ch1)
        global.charinstance[i].myself = i
        global.charinstance[i].char = 2
        global.charinstance[i].depth = (200 - (i * 20))
    }
    if (global.char[i] == 3)
    {
        havechar[2] = true
        charpos[2] = i
        global.charinstance[i] = instance_create_ch1(global.heromakex[i], global.heromakey[i], obj_heroralsei_ch1)
        global.charinstance[i].myself = i
        global.charinstance[i].char = 3
        global.charinstance[i].depth = (200 - (i * 20))
    }
}
slmxx = 0
slmyy = 0
s_siner = 0
instance_create_ch1(0, 0, obj_tensionbar_ch1)
reset = false
timeron = true
noreturn = false
hpcolor[0] = c_aqua
hpcolor[1] = c_fuchsia
hpcolor[2] = c_lime
