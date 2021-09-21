if (global.turntimer > 4)
{
    bonk = gml_Script_scr_afterimage_grow()
    bonk.sprite_index = spr_dogcar_hit
    gml_Script_snd_play(snd_bomb)
}
