gml_Script_snd_free_all_ch1()
filechoicebk = 0
if variable_global_exists("filechoice")
    filechoicebk = global.filechoice
gml_Script_scr_gamestart_ch1()
global.filechoice = filechoicebk
file = ("filech1_" + string(global.filechoice))
myfileid = gml_Script_ossafe_file_text_open_read_ch1(file)
if instance_exists(obj_loadscreen_ch1)
    obj_loadscreen_ch1.save_loaded = 1
global.truename = gml_Script_ossafe_file_text_read_string_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
show_debug_message(("*** loaded global.truename : " + string(global.truename)))
if global.is_console
{
    var othername_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(othername_list); i += 1)
        global.othername[i] = ds_list_find_value(othername_list, i)
    ds_list_destroy(othername_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
}
else
{
    for (i = 0; i < 6; i += 1)
    {
        global.othername[i] = file_text_read_string(myfileid)
        file_text_readln(myfileid)
    }
}
global.char[0] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.char[1] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.char[2] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.gold = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.xp = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.lv = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.inv = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.invc = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.darkzone = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
if global.is_console
{
    var hp_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(hp_list); i += 1)
        global.hp[i] = ds_list_find_value(hp_list, i)
    ds_list_destroy(hp_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var maxhp_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(maxhp_list); i += 1)
        global.maxhp[i] = ds_list_find_value(maxhp_list, i)
    ds_list_destroy(maxhp_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var at_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(at_list); i += 1)
        global.at[i] = ds_list_find_value(at_list, i)
    ds_list_destroy(at_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var df_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(df_list); i += 1)
        global.df[i] = ds_list_find_value(df_list, i)
    ds_list_destroy(df_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var mag_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(mag_list); i += 1)
        global.mag[i] = ds_list_find_value(mag_list, i)
    ds_list_destroy(mag_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var guts_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(guts_list); i += 1)
        global.guts[i] = ds_list_find_value(guts_list, i)
    ds_list_destroy(guts_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var charweapon_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(charweapon_list); i += 1)
        global.charweapon[i] = ds_list_find_value(charweapon_list, i)
    ds_list_destroy(charweapon_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var chararmor1_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(chararmor1_list); i += 1)
        global.chararmor1[i] = ds_list_find_value(chararmor1_list, i)
    ds_list_destroy(chararmor1_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var chararmor2_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(chararmor2_list); i += 1)
        global.chararmor2[i] = ds_list_find_value(chararmor2_list, i)
    ds_list_destroy(chararmor2_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var weaponstyle_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(weaponstyle_list); i += 1)
        global.weaponstyle[i] = ds_list_find_value(weaponstyle_list, i)
    ds_list_destroy(weaponstyle_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
}
for (i = 0; i < 4; i += 1)
{
    if (!global.is_console)
    {
        global.hp[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.maxhp[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.at[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.df[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.mag[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.guts[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.charweapon[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.chararmor1[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.chararmor2[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.weaponstyle[i] = gml_Script_ossafe_file_text_read_string_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
    }
    for (q = 0; q < 4; q += 1)
    {
        global.itemat[i][q] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.itemdf[i][q] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.itemmag[i][q] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.itembolts[i][q] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.itemgrazeamt[i][q] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.itemgrazesize[i][q] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.itemboltspeed[i][q] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.itemspecial[i][q] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
    }
    for (j = 0; j < 12; j += 1)
    {
        global.spell[i][j] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
    }
}
global.boltspeed = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.grazeamt = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.grazesize = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
if global.is_console
{
    var item_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(item_list); i += 1)
        global.item[i] = ds_list_find_value(item_list, i)
    ds_list_destroy(item_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var keyitem_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(keyitem_list); i += 1)
        global.keyitem[i] = ds_list_find_value(keyitem_list, i)
    ds_list_destroy(keyitem_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var weapon_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(weapon_list); i += 1)
        global.weapon[i] = ds_list_find_value(weapon_list, i)
    ds_list_destroy(weapon_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var armor_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < ds_list_size(armor_list); i += 1)
        global.armor[i] = ds_list_find_value(armor_list, i)
    ds_list_destroy(armor_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
}
else
{
    for (j = 0; j < 13; j += 1)
    {
        global.item[j] = file_text_read_real(myfileid)
        file_text_readln(myfileid)
        global.keyitem[j] = file_text_read_real(myfileid)
        file_text_readln(myfileid)
        global.weapon[j] = file_text_read_real(myfileid)
        file_text_readln(myfileid)
        global.armor[j] = file_text_read_real(myfileid)
        file_text_readln(myfileid)
    }
}
global.tension = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.maxtension = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.lweapon = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.larmor = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.lxp = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.llv = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.lgold = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.lhp = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.lmaxhp = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.lat = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.ldf = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.lwstrength = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.ladef = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
if global.is_console
{
    var litem_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < (ds_list_size(litem_list) - 1); i += 1)
        global.litem[i] = ds_list_find_value(litem_list, i)
    ds_list_destroy(litem_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var phone_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < (ds_list_size(phone_list) - 1); i += 1)
        global.phone[i] = ds_list_find_value(phone_list, i)
    ds_list_destroy(phone_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
    var flag_list = gml_Script_scr_ds_list_read_ch1(myfileid)
    for (i = 0; i < (ds_list_size(flag_list) - 1); i += 1)
        global.flag[i] = ds_list_find_value(flag_list, i)
    ds_list_destroy(flag_list)
    gml_Script_ossafe_file_text_readln_ch1(myfileid)
}
else
{
    for (i = 0; i < 8; i += 1)
    {
        global.litem[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
        global.phone[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
    }
    for (i = 0; i < 9999; i += 1)
    {
        global.flag[i] = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
        gml_Script_ossafe_file_text_readln_ch1(myfileid)
    }
}
global.plot = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.currentroom = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
global.time = gml_Script_ossafe_file_text_read_real_ch1(myfileid)
gml_Script_ossafe_file_text_readln_ch1(myfileid)
gml_Script_ossafe_file_text_close_ch1(myfileid)
global.lastsavedtime = global.time
global.lastsavedlv = global.lv
audio_group_set_gain(1, global.flag[15], 0)
audio_set_master_gain(0, global.flag[17])
if (global.plot >= 156)
{
    for (i = 0; i < 4; i += 1)
        global.charauto[i] = 0
}
if (global.flag[279] == 0)
{
    global.flag[279] = 1
    var room_index = global.currentroom
    var room_offset = room_index
    show_debug_message(("trying to load : " + string(room_get_name(room_index))))
    if (room_index < ROOM_INITIALIZE_ch1)
    {
        room_offset = (ROOM_INITIALIZE_ch1 + room_index)
        show_debug_message(("offset added : " + string(room_get_name(room_offset))))
    }
    global.currentroom = room_offset
}
__loadedroom = global.currentroom
if gml_Script_scr_dogcheck_ch1()
    __loadedroom = PLACE_DOG_ch1
room_goto(__loadedroom)
global.currentroom = __loadedroom
gml_Script_scr_tempsave_ch1()
return;
