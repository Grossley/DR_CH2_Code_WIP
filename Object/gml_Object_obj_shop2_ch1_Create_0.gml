idletimer = 0
idlefacer = 0
talkfacer = 0
talkbuffer = 0
menu = 0
submenu = 0
global.typer = 6
draw_set_color(c_white)
gml_Script_scr_84_set_draw_font_ch1("mainbig")
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
global.currentsong[0] = gml_Script_snd_init_ch1("hip_shop.ogg")
global.currentsong[1] = gml_Script_mus_loop_ext_ch1(global.currentsong[0], 1, 1)
menu = 0
menuc[0] = 0
menuc[1] = 0
menuc[2] = 0
menuc[3] = 0
menuc[4] = 0
item0pic = spr_heart_ch1
item1pic = spr_heart_ch1
item2pic = spr_heart_ch1
item3pic = spr_heart_ch1
itemtotal = 4
item[0] = 15
item[1] = 6
item[2] = 10
item[3] = 1
item[4] = 0
item[5] = 0
item[6] = 0
itemtype[0] = "item"
itemtype[1] = "weapon"
itemtype[2] = "weapon"
itemtype[3] = "armor"
itemtype[4] = "item"
itemtype[5] = "item"
itemtype[6] = "item"
shopdesc[0] = gml_Script_scr_84_get_lang_string_ch1("obj_shop2_slash_Create_0_gml_73_0")
shopdesc[1] = gml_Script_scr_84_get_lang_string_ch1("obj_shop2_slash_Create_0_gml_74_0")
shopdesc[2] = gml_Script_scr_84_get_lang_string_ch1("obj_shop2_slash_Create_0_gml_75_0")
shopdesc[3] = gml_Script_scr_84_get_lang_string_ch1("obj_shop2_slash_Create_0_gml_76_0")
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
        gml_Script_scr_iteminfo_ch1(item[i])
        shopitemname[i] = itemnameb
        buyvalue[i] = value
    }
    if (itemtype[i] == "armor")
    {
        gml_Script_scr_armorinfo_ch1(item[i])
        shopitemname[i] = armornametemp
        buyvalue[i] = value
        itemdef[i] = armordftemp
        canequip[i][1] = armorchar1temp
        canequip[i][2] = armorchar2temp
        canequip[i][3] = armorchar3temp
    }
    if (itemtype[i] == "weapon")
    {
        gml_Script_scr_weaponinfo_ch1(item[i])
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
gml_Script_scr_84_set_draw_font_ch1("mainbig")
sidemessage = 0
selling = 0
global.msc = 0
glow = 0
shx = 130
soldo = 0
global.faceemotion = 0
an = 0
global.fe = 0
siner = 0
friendly = 0
if (global.plot >= 175)
    friendly = 1
worm_max = 4
for (i = 0; i < worm_max; i += 1)
{
    worm_siner[i] = random(999)
    worm_image[i] = floor(random(4))
    worm_y[i] = (-4 + random(8))
}
