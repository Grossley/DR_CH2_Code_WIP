if (con == 10 && (!gml_Script_d_ex()))
{
    con = 50
    kknpc.sprite_index = spr_npc_kk_music
    gml_Script_snd_free(global.currentsong[0])
    global.currentsong[0] = gml_Script_snd_init("cybershop_christmas.ogg")
    global.currentsong[1] = gml_Script_mus_loop(global.currentsong[0])
}
