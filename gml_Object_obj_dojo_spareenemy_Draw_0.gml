if (global.flag[20] == 0)
    idlesprite = (shaved ? spr_npc_puzzlepiece_shaved_frown : spr_npc_puzzlepiece)
if (global.flag[20] == 1)
    idlesprite = (shaved ? spr_npc_puzzlepiece_shaved_happy : spr_npc_puzzlepiece_happy)
if (global.flag[20] == 2)
    idlesprite = (shaved ? spr_npc_puzzlepiece_shock2_shaved : spr_npc_puzzlepiece_shock2)
if (global.flag[20] == 3)
    idlesprite = (shaved ? spr_npc_puzzlepiece_shock1_shaved : spr_npc_puzzlepiece_shock1)
hurtsprite = (shaved ? spr_npc_puzzlepiece_shock2_shaved : spr_npc_puzzlepiece_shock2)
if (state == 3)
{
    0.5
    hurttimer -= 1
    if (hurttimer < 0)
        state = 0
    else
    {
        if (global.monster[myself] == false)
        {
            defeatanim = gml_Script_instance_create(x, y, obj_launchanim)
            defeatanim.sprite_index = sprite_index
            defeatanim.sprite_index = hurtsprite
            defeatanim.image_index = 0
            defeatanim.image_xscale = image_xscale
            defeatanim.image_yscale = image_yscale
            // WARNING: Popz'd an empty stack.
        }
        hurtshake += 1
        if (hurtshake > 1)
        {
            if (shakex > 0)
                shakex -= 1
            if (shakex < 0)
                shakex += 1
            shakex = (-shakex)
            hurtshake = 0
        }
        draw_sprite_ext(hurtsprite, 0, ((x + shakex) + hurtspriteoffx), (y + hurtspriteoffy), 2, 2, 0, image_blend, 1)
    }
}
if (custom_draw_example == 0)
    image_speed
else if (state == 0)
{
    if (flash == true)
        fsiner++
    siner += 0.16666666666666666
    if (global.mercymod[myself] >= global.mercymax[myself])
        gml_Script_draw_monster_body_part(sparedsprite, siner, x, y)
    else
    {
        gml_Script_draw_monster_body_part(1558, 1, (x + (sin(siner) * 2)), y)
        gml_Script_draw_monster_body_part(1558, 0, (x - (sin(siner) * 2)), (y + cos(siner)))
    }
}
if (becomeflash == false)
    flash = false
becomeflash = false
