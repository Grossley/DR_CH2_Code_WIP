global.lastsavedkills = global.kills
global.lastsavedtime = obj_time_ch1.time
global.lastsavedlv = global.lv
file = ("file" + string(global.filechoice))
myfileid = file
file_text_write_string(myfileid, global.charname)
myfileid
file_text_write_real(myfileid, global.lv)
myfileid
file_text_write_real(myfileid, global.maxhp)
myfileid
file_text_write_real(myfileid, global.maxen)
myfileid
file_text_write_real(myfileid, global.at)
myfileid
file_text_write_real(myfileid, global.wstrength)
myfileid
file_text_write_real(myfileid, global.df)
myfileid
file_text_write_real(myfileid, global.adef)
myfileid
file_text_write_real(myfileid, global.sp)
myfileid
file_text_write_real(myfileid, global.xp)
myfileid
file_text_write_real(myfileid, global.gold)
myfileid
file_text_write_real(myfileid, global.kills)
myfileid
for (i = 0; i < 8; i += 1)
{
    file_text_write_real(myfileid, global.item[i])
    myfileid
    file_text_write_real(myfileid, global.phone[i])
    myfileid
}
file_text_write_real(myfileid, global.weapon)
myfileid
file_text_write_real(myfileid, global.armor)
myfileid
for (i = 0; i < 512; i += 1)
{
    file_text_write_real(myfileid, global.flag[i])
    myfileid
}
file_text_write_real(myfileid, global.plot)
myfileid
for (i = 0; i < 3; i += 1)
{
    file_text_write_real(myfileid, global.menuchoice[i])
    myfileid
}
file_text_write_real(myfileid, global.currentsong)
myfileid
file_text_write_real(myfileid, global.currentroom)
myfileid
file_text_write_real(myfileid, obj_time_ch1.time)
myfileid
return;
