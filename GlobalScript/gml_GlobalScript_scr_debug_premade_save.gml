var chapter = argument[0]
var filechoice = argument[1]
file = ((("filech" + string(chapter)) + "_") + string(filechoice))
myfileid = file
file_text_write_string(myfileid, global.truename)
myfileid
for (i = 0; i < 6; i += 1)
{
    file_text_write_string(myfileid, global.othername[i])
    myfileid
}
file_text_write_real(myfileid, global.char[0])
myfileid
file_text_write_real(myfileid, global.char[1])
myfileid
file_text_write_real(myfileid, global.char[2])
myfileid
file_text_write_real(myfileid, 0)
myfileid
file_text_write_real(myfileid, 0)
myfileid
file_text_write_real(myfileid, 1)
myfileid
file_text_write_real(myfileid, 0)
myfileid
file_text_write_real(myfileid, 1)
myfileid
file_text_write_real(myfileid, 0)
myfileid
for (i = 0; i < 4; i += 1)
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
    file_text_write_real(myfileid, global.weaponstyle[i])
    myfileid
    for (q = 0; q < 4; q += 1)
    {
        file_text_write_real(myfileid, global.itemat[i][q])
        myfileid
        file_text_write_real(myfileid, global.itemdf[i][q])
        myfileid
        file_text_write_real(myfileid, global.itemmag[i][q])
        myfileid
        file_text_write_real(myfileid, global.itembolts[i][q])
        myfileid
        file_text_write_real(myfileid, global.itemgrazeamt[i][q])
        myfileid
        file_text_write_real(myfileid, global.itemgrazesize[i][q])
        myfileid
        file_text_write_real(myfileid, global.itemboltspeed[i][q])
        myfileid
        file_text_write_real(myfileid, global.itemspecial[i][q])
        myfileid
    }
    for (j = 0; j < 12; j += 1)
    {
        file_text_write_real(myfileid, global.spell[i][j])
        myfileid
    }
}
file_text_write_real(myfileid, global.boltspeed)
myfileid
file_text_write_real(myfileid, global.grazeamt)
myfileid
file_text_write_real(myfileid, global.grazesize)
myfileid
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
file_text_write_real(myfileid, global.tension)
myfileid
file_text_write_real(myfileid, global.maxtension)
myfileid
file_text_write_real(myfileid, 2)
myfileid
file_text_write_real(myfileid, 3)
myfileid
file_text_write_real(myfileid, 0)
myfileid
file_text_write_real(myfileid, 1)
myfileid
file_text_write_real(myfileid, 2)
myfileid
file_text_write_real(myfileid, 20)
myfileid
file_text_write_real(myfileid, 20)
myfileid
file_text_write_real(myfileid, 10)
myfileid
file_text_write_real(myfileid, 20)
myfileid
file_text_write_real(myfileid, 1)
myfileid
file_text_write_real(myfileid, 0)
myfileid
for (i = 0; i < 8; i += 1)
{
    file_text_write_real(myfileid, global.litem[i])
    myfileid
    file_text_write_real(myfileid, global.phone[i])
    myfileid
}
for (i = 0; i < 9999; i += 1)
{
    file_text_write_real(myfileid, 0)
    myfileid
}
file_text_write_real(myfileid, 251)
myfileid
file_text_write_real(myfileid, 27)
myfileid
file_text_write_real(myfileid, 14400)
myfileid
"dr.ini"
ini_write_string(("G" + string(filechoice)), "Name", "Kris")
ini_write_real(("G" + string(filechoice)), "Level", 1)
ini_write_real(("G" + string(filechoice)), "Love", 1)
ini_write_real(("G" + string(filechoice)), "Time", 14400)
ini_write_real(("G" + string(filechoice)), "Room", 27)
ini_write_real(("G" + string(filechoice)), "InitLang", global.flag[912])
// WARNING: Popz'd an empty stack.
return;
