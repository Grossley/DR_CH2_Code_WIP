global.lastsavedtime = global.time
global.lastsavedlv = global.lv
file = ("filech1_" + string(argument0))
myfileid = file
gml_Script_ossafe_file_text_write_string_ch1(myfileid, global.truename)
myfileid
if global.is_console
{
    gml_Script_scr_ds_list_write_ch1(global.othername, 6)
    myfileid
}
else
{
    for (i = 0; i < 6; i += 1)
    {
        gml_Script_ossafe_file_text_write_string_ch1(myfileid, global.othername[i])
        myfileid
    }
}
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.char[0])
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.char[1])
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.char[2])
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.gold)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.xp)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lv)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.inv)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.invc)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.darkzone)
myfileid
if global.is_console
{
    gml_Script_scr_ds_list_write_ch1(global.hp, 4)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.maxhp, 4)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.at, 4)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.df, 4)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.mag, 4)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.guts, 4)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.charweapon, 4)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.chararmor1, 4)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.chararmor2, 4)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.weaponstyle, 4)
    myfileid
}
for (i = 0; i < 4; i += 1)
{
    if (!global.is_console)
    {
        file_text_write_real(myfileid, global.hp[i])
        myfileid
        file_text_write_real(myfileid, global.maxhp[i])
        myfileid
        file_text_write_real(myfileid, global.at[i])
        myfileid
        file_text_write_real(myfileid, global.df[i])
        myfileid
        file_text_write_real(myfileid, global.mag[i])
        myfileid
        file_text_write_real(myfileid, global.guts[i])
        myfileid
        file_text_write_real(myfileid, global.charweapon[i])
        myfileid
        file_text_write_real(myfileid, global.chararmor1[i])
        myfileid
        file_text_write_real(myfileid, global.chararmor2[i])
        myfileid
        file_text_write_string(myfileid, global.weaponstyle[i])
        myfileid
    }
    for (q = 0; q < 4; q += 1)
    {
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemat[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemdf[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemmag[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itembolts[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemgrazeamt[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemgrazesize[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemboltspeed[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemspecial[i][q])
        myfileid
    }
    for (j = 0; j < 12; j += 1)
    {
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.spell[i][j])
        myfileid
    }
}
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.boltspeed)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.grazeamt)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.grazesize)
myfileid
if global.is_console
{
    gml_Script_scr_ds_list_write_ch1(global.item, 13)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.keyitem, 13)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.weapon, 13)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.armor, 13)
    myfileid
}
else
{
    for (j = 0; j < 13; j += 1)
    {
        file_text_write_real(myfileid, global.item[j])
        myfileid
        file_text_write_real(myfileid, global.keyitem[j])
        myfileid
        file_text_write_real(myfileid, global.weapon[j])
        myfileid
        file_text_write_real(myfileid, global.armor[j])
        myfileid
    }
}
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.tension)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.maxtension)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lweapon)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.larmor)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lxp)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.llv)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lgold)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lhp)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lmaxhp)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lat)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.ldf)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lwstrength)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.ladef)
myfileid
if global.is_console
{
    gml_Script_scr_ds_list_write_ch1(global.litem, 8)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.phone, 8)
    myfileid
    gml_Script_scr_ds_list_write_ch1(global.flag, 9999)
    myfileid
}
else
{
    for (i = 0; i < 8; i += 1)
    {
        file_text_write_real(myfileid, global.litem[i])
        myfileid
        file_text_write_real(myfileid, global.phone[i])
        myfileid
    }
    for (i = 0; i < 9999; i += 1)
    {
        file_text_write_real(myfileid, global.flag[i])
        myfileid
    }
}
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.plot)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.currentroom)
myfileid
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.time)
myfileid
return;
