draw_self()
if gml_Script_i_ex(80)
{
    if (obj_mainchara.battlemode == 1)
    {
        if (myalpha != 1)
            myalpha = lerp(myalpha, 1, 0.25)
    }
    else if (myalpha != 0)
        myalpha = lerp(myalpha, 0, 0.35)
}
draw_sprite_ext(spr_MovingPlat_dw_cyber_music_final_battle, image_index, x, y, 2, 2, 0, c_white, myalpha)