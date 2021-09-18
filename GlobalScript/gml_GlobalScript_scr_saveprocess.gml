global.lastsavedtime = global.time
global.lastsavedlv = global.lv
file = ("filech2_" + string(argument0))
myfileid = file
gml_Script_ossafe_file_text_write_string(myfileid, global.truename)
myfileid
if global.is_console
{
    gml_Script_scr_ds_list_write(global.othername, 6)
    myfileid
}
else
{
    for (i = 0; i < 6; i += 1)
    {
        gml_Script_ossafe_file_text_write_string(myfileid, global.othername[i])
        myfileid
    }
}
gml_Script_ossafe_file_text_write_real(myfileid, global.char[0])
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.char[1])
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.char[2])
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.gold)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.xp)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.lv)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.inv)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.invc)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.darkzone)
myfileid
if global.is_console
{
    var stats_amount = 5
    gml_Script_scr_ds_list_write(global.hp, stats_amount)
    myfileid
    gml_Script_scr_ds_list_write(global.maxhp, stats_amount)
    myfileid
    gml_Script_scr_ds_list_write(global.at, stats_amount)
    myfileid
    gml_Script_scr_ds_list_write(global.df, stats_amount)
    myfileid
    gml_Script_scr_ds_list_write(global.mag, stats_amount)
    myfileid
    gml_Script_scr_ds_list_write(global.guts, stats_amount)
    myfileid
    gml_Script_scr_ds_list_write(global.charweapon, stats_amount)
    myfileid
    gml_Script_scr_ds_list_write(global.chararmor1, stats_amount)
    myfileid
    gml_Script_scr_ds_list_write(global.chararmor2, stats_amount)
    myfileid
    gml_Script_scr_ds_list_write(global.weaponstyle, stats_amount)
    myfileid
}
for (i = 0; i < 5; i += 1)
{
    if (!global.is_console)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.hp[i])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.maxhp[i])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.at[i])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.df[i])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.mag[i])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.guts[i])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.charweapon[i])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.chararmor1[i])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.chararmor2[i])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.weaponstyle[i])
        myfileid
    }
    for (q = 0; q < 4; q += 1)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemat[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemdf[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemmag[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.itembolts[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemgrazeamt[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemgrazesize[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemboltspeed[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemspecial[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemelement[i][q])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemelementamount[i][q])
        myfileid
    }
    for (j = 0; j < 12; j += 1)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.spell[i][j])
        myfileid
    }
}
gml_Script_ossafe_file_text_write_real(myfileid, global.boltspeed)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.grazeamt)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.grazesize)
myfileid
if global.is_console
{
    gml_Script_scr_ds_list_write(global.item, 13)
    myfileid
    gml_Script_scr_ds_list_write(global.keyitem, 13)
    myfileid
    gml_Script_scr_ds_list_write(global.weapon, 48)
    myfileid
    gml_Script_scr_ds_list_write(global.armor, 48)
    myfileid
    gml_Script_scr_ds_list_write(global.pocketitem, 72)
    myfileid
}
else
{
    for (j = 0; j < 13; j += 1)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.item[j])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.keyitem[j])
        myfileid
    }
    for (j = 0; j < 48; j++)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.weapon[j])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.armor[j])
        myfileid
    }
    for (j = 0; j < 72; j++)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.pocketitem[j])
        myfileid
    }
}
gml_Script_ossafe_file_text_write_real(myfileid, global.tension)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.maxtension)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.lweapon)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.larmor)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.lxp)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.llv)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.lgold)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.lhp)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.lmaxhp)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.lat)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.ldf)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.lwstrength)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.ladef)
myfileid
if global.is_console
{
    gml_Script_scr_ds_list_write(global.litem, 8)
    myfileid
    gml_Script_scr_ds_list_write(global.phone, 8)
    myfileid
    gml_Script_scr_ds_list_write(global.flag, 2500)
    myfileid
}
else
{
    for (i = 0; i < 8; i += 1)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.litem[i])
        myfileid
        gml_Script_ossafe_file_text_write_real(myfileid, global.phone[i])
        myfileid
    }
    for (i = 0; i < 2500; i += 1)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.flag[i])
        myfileid
    }
}
gml_Script_ossafe_file_text_write_real(myfileid, global.plot)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.currentroom)
myfileid
gml_Script_ossafe_file_text_write_real(myfileid, global.time)
myfileid
return;
