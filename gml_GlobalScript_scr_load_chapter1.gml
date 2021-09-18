// WARNING: Popz'd an empty stack.
filechoicebk = global.filechoice
// WARNING: Popz'd an empty stack.
global.filechoice = filechoicebk
file = ("filech1_" + string(global.filechoice))
myfileid = file
global.truename = myfileid
myfileid
if global.is_console
{
    var othername_list = myfileid
    for (i = 0; i < ds_list_size(othername_list); i += 1)
        global.othername[i] = ds_list_find_value(othername_list, i)
    othername_list
    myfileid
}
else
{
    for (i = 0; i < 6; i += 1)
    {
        global.othername[i] = myfileid
        myfileid
    }
}
global.char[0] = myfileid
myfileid
global.char[1] = myfileid
myfileid
global.char[2] = myfileid
myfileid
global.gold = myfileid
myfileid
global.xp = myfileid
myfileid
global.lv = myfileid
myfileid
global.inv = myfileid
myfileid
global.invc = myfileid
myfileid
global.darkzone = myfileid
myfileid
if global.is_console
{
    var hp_list = myfileid
    for (i = 0; i < ds_list_size(hp_list); i += 1)
        global.hp[i] = ds_list_find_value(hp_list, i)
    hp_list
    myfileid
    var maxhp_list = myfileid
    for (i = 0; i < ds_list_size(maxhp_list); i += 1)
        global.maxhp[i] = ds_list_find_value(maxhp_list, i)
    maxhp_list
    myfileid
    var at_list = myfileid
    for (i = 0; i < ds_list_size(at_list); i += 1)
        global.at[i] = ds_list_find_value(at_list, i)
    at_list
    myfileid
    var df_list = myfileid
    for (i = 0; i < ds_list_size(df_list); i += 1)
        global.df[i] = ds_list_find_value(df_list, i)
    df_list
    myfileid
    var mag_list = myfileid
    for (i = 0; i < ds_list_size(mag_list); i += 1)
        global.mag[i] = ds_list_find_value(mag_list, i)
    mag_list
    myfileid
    var guts_list = myfileid
    for (i = 0; i < ds_list_size(guts_list); i += 1)
        global.guts[i] = ds_list_find_value(guts_list, i)
    guts_list
    myfileid
    var charweapon_list = myfileid
    for (i = 0; i < ds_list_size(charweapon_list); i += 1)
        global.charweapon[i] = ds_list_find_value(charweapon_list, i)
    charweapon_list
    myfileid
    var chararmor1_list = myfileid
    for (i = 0; i < ds_list_size(chararmor1_list); i += 1)
        global.chararmor1[i] = ds_list_find_value(chararmor1_list, i)
    chararmor1_list
    myfileid
    var chararmor2_list = myfileid
    for (i = 0; i < ds_list_size(chararmor2_list); i += 1)
        global.chararmor2[i] = ds_list_find_value(chararmor2_list, i)
    chararmor2_list
    myfileid
    var weaponstyle_list = myfileid
    for (i = 0; i < ds_list_size(weaponstyle_list); i += 1)
        global.weaponstyle[i] = ds_list_find_value(weaponstyle_list, i)
    weaponstyle_list
    myfileid
}
for (i = 0; i < 4; i += 1)
{
    if (!global.is_console)
    {
        global.hp[i] = myfileid
        myfileid
        global.maxhp[i] = myfileid
        myfileid
        global.at[i] = myfileid
        myfileid
        global.df[i] = myfileid
        myfileid
        global.mag[i] = myfileid
        myfileid
        global.guts[i] = myfileid
        myfileid
        global.charweapon[i] = myfileid
        myfileid
        global.chararmor1[i] = myfileid
        myfileid
        global.chararmor2[i] = myfileid
        myfileid
        global.weaponstyle[i] = myfileid
        myfileid
    }
    for (q = 0; q < 4; q += 1)
    {
        global.itemat[i][q] = myfileid
        myfileid
        global.itemdf[i][q] = myfileid
        myfileid
        global.itemmag[i][q] = myfileid
        myfileid
        global.itembolts[i][q] = myfileid
        myfileid
        global.itemgrazeamt[i][q] = myfileid
        myfileid
        global.itemgrazesize[i][q] = myfileid
        myfileid
        global.itemboltspeed[i][q] = myfileid
        myfileid
        global.itemspecial[i][q] = myfileid
        myfileid
    }
    for (j = 0; j < 12; j += 1)
    {
        global.spell[i][j] = myfileid
        myfileid
    }
}
global.boltspeed = myfileid
myfileid
global.grazeamt = myfileid
myfileid
global.grazesize = myfileid
myfileid
if global.is_console
{
    var item_list = myfileid
    for (i = 0; i < ds_list_size(item_list); i += 1)
        global.item[i] = ds_list_find_value(item_list, i)
    item_list
    myfileid
    var keyitem_list = myfileid
    for (i = 0; i < ds_list_size(keyitem_list); i += 1)
        global.keyitem[i] = ds_list_find_value(keyitem_list, i)
    keyitem_list
    myfileid
    var weapon_list = myfileid
    for (i = 0; i < ds_list_size(weapon_list); i += 1)
        global.weapon[i] = ds_list_find_value(weapon_list, i)
    weapon_list
    myfileid
    var armor_list = myfileid
    for (i = 0; i < ds_list_size(armor_list); i += 1)
        global.armor[i] = ds_list_find_value(armor_list, i)
    armor_list
    myfileid
}
else
{
    for (j = 0; j < 13; j += 1)
    {
        global.item[j] = myfileid
        myfileid
        global.keyitem[j] = myfileid
        myfileid
        global.weapon[j] = myfileid
        myfileid
        global.armor[j] = myfileid
        myfileid
    }
}
global.weapon[12] = 0
global.armor[12] = 0
global.tension = myfileid
myfileid
global.maxtension = myfileid
myfileid
global.lweapon = myfileid
myfileid
global.larmor = myfileid
myfileid
global.lxp = myfileid
myfileid
global.llv = myfileid
myfileid
global.lgold = myfileid
myfileid
global.lhp = myfileid
myfileid
global.lmaxhp = myfileid
myfileid
global.lat = myfileid
myfileid
global.ldf = myfileid
myfileid
global.lwstrength = myfileid
myfileid
global.ladef = myfileid
myfileid
if global.is_console
{
    var litem_list = myfileid
    for (i = 0; i < (ds_list_size(litem_list) - 1); i += 1)
        global.litem[i] = ds_list_find_value(litem_list, i)
    litem_list
    myfileid
    var phone_list = myfileid
    for (i = 0; i < (ds_list_size(phone_list) - 1); i += 1)
        global.phone[i] = ds_list_find_value(phone_list, i)
    phone_list
    myfileid
    var flag_list = myfileid
    for (i = 0; i < (ds_list_size(flag_list) - 1); i += 1)
        global.flag[i] = ds_list_find_value(flag_list, i)
    flag_list
    myfileid
}
else
{
    for (i = 0; i < 8; i += 1)
    {
        global.litem[i] = myfileid
        myfileid
        global.phone[i] = myfileid
        myfileid
    }
    for (i = 0; i < 9999; i += 1)
    {
        global.flag[i] = myfileid
        myfileid
    }
}
global.plot = myfileid
myfileid
global.currentroom = myfileid
myfileid
global.time = myfileid
myfileid
myfileid
global.lastsavedtime = global.time
global.lastsavedlv = global.lv
// WARNING: Popz'd an empty stack.
if (global.is_console && global.game_won == 1)
    global.darkzone = false
// WARNING: Popz'd an empty stack.
audio_group_set_gain(1, global.flag[15], 0)
audio_set_master_gain(0, global.flag[17])
return;
