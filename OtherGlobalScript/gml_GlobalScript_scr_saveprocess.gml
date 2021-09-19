global.lastsavedtime = global.time
global.lastsavedlv = global.lv
file = ("filech2_" + string(argument0))
myfileid = gml_Script_ossafe_file_text_open_write(file)
gml_Script_ossafe_file_text_write_string(myfileid, global.truename)
gml_Script_ossafe_file_text_writeln(myfileid)
if global.is_console
{
    gml_Script_scr_ds_list_write(global.othername, 6)
    gml_Script_ossafe_file_text_writeln(myfileid)
}
else
{
    for (i = 0; i < 6; i += 1)
    {
        gml_Script_ossafe_file_text_write_string(myfileid, global.othername[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
    }
}
gml_Script_ossafe_file_text_write_real(myfileid, global.char[0])
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.char[1])
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.char[2])
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.gold)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.xp)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.lv)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.inv)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.invc)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.darkzone)
gml_Script_ossafe_file_text_writeln(myfileid)
if global.is_console
{
    var stats_amount = 5
    gml_Script_scr_ds_list_write(global.hp, stats_amount)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.maxhp, stats_amount)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.at, stats_amount)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.df, stats_amount)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.mag, stats_amount)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.guts, stats_amount)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.charweapon, stats_amount)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.chararmor1, stats_amount)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.chararmor2, stats_amount)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.weaponstyle, stats_amount)
    gml_Script_ossafe_file_text_writeln(myfileid)
}
for (i = 0; i < 5; i += 1)
{
    if (!global.is_console)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.hp[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.maxhp[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.at[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.df[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.mag[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.guts[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.charweapon[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.chararmor1[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.chararmor2[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.weaponstyle[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
    }
    for (q = 0; q < 4; q += 1)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemat[i][q])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemdf[i][q])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemmag[i][q])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.itembolts[i][q])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemgrazeamt[i][q])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemgrazesize[i][q])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemboltspeed[i][q])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemspecial[i][q])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemelement[i][q])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.itemelementamount[i][q])
        gml_Script_ossafe_file_text_writeln(myfileid)
    }
    for (j = 0; j < 12; j += 1)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.spell[i][j])
        gml_Script_ossafe_file_text_writeln(myfileid)
    }
}
gml_Script_ossafe_file_text_write_real(myfileid, global.boltspeed)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.grazeamt)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.grazesize)
gml_Script_ossafe_file_text_writeln(myfileid)
if global.is_console
{
    gml_Script_scr_ds_list_write(global.item, 13)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.keyitem, 13)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.weapon, 48)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.armor, 48)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.pocketitem, 72)
    gml_Script_ossafe_file_text_writeln(myfileid)
}
else
{
    for (j = 0; j < 13; j += 1)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.item[j])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.keyitem[j])
        gml_Script_ossafe_file_text_writeln(myfileid)
    }
    for (j = 0; j < 48; j++)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.weapon[j])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.armor[j])
        gml_Script_ossafe_file_text_writeln(myfileid)
    }
    for (j = 0; j < 72; j++)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.pocketitem[j])
        gml_Script_ossafe_file_text_writeln(myfileid)
    }
}
gml_Script_ossafe_file_text_write_real(myfileid, global.tension)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.maxtension)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.lweapon)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.larmor)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.lxp)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.llv)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.lgold)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.lhp)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.lmaxhp)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.lat)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.ldf)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.lwstrength)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.ladef)
gml_Script_ossafe_file_text_writeln(myfileid)
if global.is_console
{
    gml_Script_scr_ds_list_write(global.litem, 8)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.phone, 8)
    gml_Script_ossafe_file_text_writeln(myfileid)
    gml_Script_scr_ds_list_write(global.flag, 2500)
    gml_Script_ossafe_file_text_writeln(myfileid)
}
else
{
    for (i = 0; i < 8; i += 1)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.litem[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
        gml_Script_ossafe_file_text_write_real(myfileid, global.phone[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
    }
    for (i = 0; i < 2500; i += 1)
    {
        gml_Script_ossafe_file_text_write_real(myfileid, global.flag[i])
        gml_Script_ossafe_file_text_writeln(myfileid)
    }
}
gml_Script_ossafe_file_text_write_real(myfileid, global.plot)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.currentroom)
gml_Script_ossafe_file_text_writeln(myfileid)
gml_Script_ossafe_file_text_write_real(myfileid, global.time)
gml_Script_ossafe_file_text_close(myfileid)
return;
