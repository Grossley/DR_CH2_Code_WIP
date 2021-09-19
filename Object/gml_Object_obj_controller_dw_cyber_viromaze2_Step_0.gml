var _temp_local_var_2;
if (noleavefield == obj_sneo_friedpipis && global.flag[352] != 1)
{
    if (obj_mainchara.x >= 240)
        noleavefield = gml_Script_instance_create(200, 240, obj_forcefield)
}
if (con == 1)
{
    gml_Script_instance_create(0, 0, obj_shake)
    gml_Script_snd_play(59)
    global.interact = 1
    gml_Script_scr_speaker("no_name")
    gml_Script_msgsetloc(0, "* Sounded like a forcefield deactivating./%", "obj_controller_dw_cyber_viromaze2_slash_Step_0_gml_9_0")
    d = gml_Script_d_make()
    d.side = 0
    if instance_exists(obj_ow_viromaze2_viro)
        obj_ow_viromaze2_viro.con = 3
    if gml_Script_i_ex(noleavefield)
    {
        var _temp_local_var_2 = noleavefield
        instance_destroy()
    }
    global.flag[352] = 1
    if instance_exists(obj_overworld_bulletarea)
    {
        obj_overworld_bulletarea.x = (noleavefield.room_width * 5)
        obj_overworld_bulletarea.y = (room_height * 5)
    }
    if instance_exists(obj_forcefield)
    {
        with (obj_forcefield)
            instance_destroy()
    }
    con = 2
}
if (con == 2)
{
    if (!gml_Script_d_ex())
    {
        global.interact = 0
        con = 3
    }
}
