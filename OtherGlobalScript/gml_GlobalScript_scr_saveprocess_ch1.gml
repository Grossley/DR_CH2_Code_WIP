global.lastsavedtime = global.time
global.lastsavedlv = global.lv
file = ("filech1_" + string(argument0))
myfileid = gml_Script_ossafe_file_text_open_write_ch1(file)
gml_Script_ossafe_file_text_write_string_ch1(myfileid, global.truename)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
if global.is_console
{
    gml_Script_scr_ds_list_write_ch1(global.othername, 6)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
}
else
{
    for (i = 0; i < 6; i += 1)
    {
        gml_Script_ossafe_file_text_write_string_ch1(myfileid, global.othername[i])
        gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    }
}
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.char[0])
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.char[1])
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.char[2])
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.gold)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.xp)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lv)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.inv)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.invc)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.darkzone)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
if global.is_console
{
    gml_Script_scr_ds_list_write_ch1(global.hp, 4)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.maxhp, 4)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.at, 4)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.df, 4)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.mag, 4)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.guts, 4)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.charweapon, 4)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.chararmor1, 4)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.chararmor2, 4)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.weaponstyle, 4)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
}
for (i = 0; i < 4; i += 1)
{
    if (!global.is_console)
    {
        file_text_write_real(myfileid, global.hp[i])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.maxhp[i])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.at[i])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.df[i])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.mag[i])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.guts[i])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.charweapon[i])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.chararmor1[i])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.chararmor2[i])
        file_text_writeln(myfileid)
        file_text_write_string(myfileid, global.weaponstyle[i])
        file_text_writeln(myfileid)
    }
    for (q = 0; q < 4; q += 1)
    {
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemat[i][q])
        gml_Script_ossafe_file_text_writeln_ch1(myfileid)
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemdf[i][q])
        gml_Script_ossafe_file_text_writeln_ch1(myfileid)
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemmag[i][q])
        gml_Script_ossafe_file_text_writeln_ch1(myfileid)
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itembolts[i][q])
        gml_Script_ossafe_file_text_writeln_ch1(myfileid)
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemgrazeamt[i][q])
        gml_Script_ossafe_file_text_writeln_ch1(myfileid)
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemgrazesize[i][q])
        gml_Script_ossafe_file_text_writeln_ch1(myfileid)
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemboltspeed[i][q])
        gml_Script_ossafe_file_text_writeln_ch1(myfileid)
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.itemspecial[i][q])
        gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    }
    for (j = 0; j < 12; j += 1)
    {
        gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.spell[i][j])
        gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    }
}
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.boltspeed)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.grazeamt)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.grazesize)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
if global.is_console
{
    gml_Script_scr_ds_list_write_ch1(global.item, 13)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.keyitem, 13)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.weapon, 13)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.armor, 13)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
}
else
{
    for (j = 0; j < 13; j += 1)
    {
        file_text_write_real(myfileid, global.item[j])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.keyitem[j])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.weapon[j])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.armor[j])
        file_text_writeln(myfileid)
    }
}
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.tension)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.maxtension)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lweapon)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.larmor)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lxp)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.llv)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lgold)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lhp)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lmaxhp)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lat)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.ldf)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.lwstrength)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.ladef)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
if global.is_console
{
    gml_Script_scr_ds_list_write_ch1(global.litem, 8)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.phone, 8)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
    gml_Script_scr_ds_list_write_ch1(global.flag, 9999)
    gml_Script_ossafe_file_text_writeln_ch1(myfileid)
}
else
{
    for (i = 0; i < 8; i += 1)
    {
        file_text_write_real(myfileid, global.litem[i])
        file_text_writeln(myfileid)
        file_text_write_real(myfileid, global.phone[i])
        file_text_writeln(myfileid)
    }
    for (i = 0; i < 9999; i += 1)
    {
        file_text_write_real(myfileid, global.flag[i])
        file_text_writeln(myfileid)
    }
}
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.plot)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.currentroom)
gml_Script_ossafe_file_text_writeln_ch1(myfileid)
gml_Script_ossafe_file_text_write_real_ch1(myfileid, global.time)
gml_Script_ossafe_file_text_close_ch1(myfileid)
return;
