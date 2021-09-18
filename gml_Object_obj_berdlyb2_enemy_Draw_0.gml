if (state == 3)
{
    hurttimer -= 1
    if (hurttimer < 0 && global.monster[myself] == true)
        state = 0
    else
    {
        if (global.monster[myself] == false && (!62))
        {
            hurtsprite = spr_berdly_hurt_kneel_battle
            if (endbattle == 0)
            {
                endbattle = 1
                if (global.flag[915] == 5 && global.flag[916] == 0)
                {
                    gml_Script_instance_create(obj_heronoelle.x, obj_heronoelle.y, obj_berdlyb2_postBattle_noelle)
                    // WARNING: Popz'd an empty stack.
                }
                // WARNING: Popz'd an empty stack.
            }
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
0.16666666666666666
if (becomeflash == false)
    flash = false
becomeflash = false
