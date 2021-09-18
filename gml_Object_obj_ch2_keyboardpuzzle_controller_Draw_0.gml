var _xx = (puzzle_id == 2 ? 136 : 196)
var _yy = (puzzle_id == 2 ? 50 : 70)
if (puzzle_id == 2 && use_ja)
    _xx -= 22
if (room == room_dw_cyber_keyboard_puzzle_2)
    _xx += 40
2
16777215
draw_text(_xx, _yy, idealString)
65280
if lost
    255
if won
    65535
draw_text(_xx, (_yy + 28), currentString)
if won
{
    if hacked
        imageTimer = (1 - imageTimer)
    else if (imageTimer < (sprite_get_number(victorySprite) - 0.25))
        imageTimer += 0.25
    wincolor = c_lime
    if (victorySprite == spr_keyboard_puzzle_bluecheck)
        wincolor = c_white
    if (victorySprite != IMAGE_LOGO)
        draw_sprite_ext(victorySprite, imageTimer, monitorx, monitory, 2, 2, 0, wincolor, 1)
    if (room == room_dw_cyber_keyboard_puzzle_1)
    {
        if 285
        {
            with (obj_forcefield)
                // WARNING: Popz'd an empty stack.
        }
        global.flag[390] = 1
    }
    if (room == room_dw_cyber_keyboard_puzzle_2)
        global.flag[333] = 1
}
