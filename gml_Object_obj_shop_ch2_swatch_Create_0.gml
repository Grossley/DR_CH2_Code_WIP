idletimer = 0
idlefacer = 0
talkfacer = 0
talkbuffer = 0
menu = 0
submenu = 0
global.typer = 6
16777215
"mainbig"
talktimer = 0
cur_jewel = 0
shopcharx = 0
siner = 0
for (i = 0; i < 20; i += 1)
{
    menuc[i] = 0
    submenuc[i] = 0
}
onebuffer = 0
twobuffer = 0
upbuffer = 0
downbuffer = 0
hold_up = 0
hold_down = 0
_up_pressed = 0
_down_pressed = 0
murder = 0
moff = 415
global.currentsong[0] = "hip_shop.ogg"
global.currentsong[1] = gml_Script_mus_loop_ext(global.currentsong[0], 1, 0.98)
menu = 0
menuc[0] = 0
menuc[1] = 0
menuc[2] = 0
menuc[3] = 0
menuc[4] = 0
item0pic = 2526
item1pic = 2526
item2pic = 2526
item3pic = 2526
itemtotal = 4
item[0] = 24
item[1] = 25
item[2] = 12
item[3] = 22
item[4] = 0
item[5] = 0
item[6] = 0
itemtype[0] = "item"
itemtype[1] = "item"
itemtype[2] = "armor"
itemtype[3] = "armor"
itemtype[4] = "item"
itemtype[5] = "item"
itemtype[6] = "item"
shopdesc[0] = gml_Script_stringsetloc("ITEM#Short for#ButlerJuice#+100HP", "obj_shop_ch2_swatch_slash_Create_0_gml_80_0")
shopdesc[1] = gml_Script_stringsetloc("ITEM#Spaghetti#woven by#master coders#Party +30HP", "obj_shop_ch2_swatch_slash_Create_0_gml_79_0")
shopdesc[2] = gml_Script_stringsetloc("ARMOR#A handsome#bowtie.", "obj_shop_ch2_swatch_slash_Create_0_gml_81_0")
shopdesc[3] = gml_Script_stringsetloc("ARMOR#Luxurious#brooch.", "obj_shop_ch2_swatch_slash_Create_0_gml_81_0_b")
for (i = 0; i < itemtotal; i += 1)
{
    itematk[i] = 0
    itemdef[i] = 0
    itemmagic[i] = 0
    canequip[i][1] = false
    canequip[i][2] = false
    canequip[i][3] = false
    if (itemtype[i] == "item")
    {
        item[i]
        shopitemname[i] = itemnameb
        buyvalue[i] = value
    }
    if (itemtype[i] == "armor")
    {
        item[i]
        shopitemname[i] = armornametemp
        buyvalue[i] = value
        itemdef[i] = armordftemp
        canequip[i][1] = armorchar1temp
        canequip[i][2] = armorchar2temp
        canequip[i][3] = armorchar3temp
    }
    if (itemtype[i] == "weapon")
    {
        item[i]
        itematk[i] = weaponattemp
        itemmagic[i] = weaponmagtemp
        shopitemname[i] = weaponnametemp
        canequip[i][1] = weaponchar1temp
        canequip[i][2] = weaponchar2temp
        canequip[i][3] = weaponchar3temp
        buyvalue[i] = value
    }
}
sell = 0
bought = 0
mainmessage = 0
minimenuy = 220
global.typer = 23
"mainbig"
sidemessage = 0
selling = 0
global.msc = 0
glow = 0
shx = 130
soldo = 0
global.fe = 0
an = 0
global.fe = 0
siner = 0
shx = 0
guysiner = 0
talksiner = 0
shinetimer = 0
nothingcount = 0
selltype = "item"
selltotal = max(global.flag[64], 12)
for (i = 0; i < selltotal; i++)
{
    itemsellvalue[i] = 0
    itemsellname[i] = ""
}
