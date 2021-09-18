timer++
alphaer1 = (timer / 20)
alphaer2 = ((timer + 5) / 20)
alphaer3 = ((timer + 10) / 20)
draw_sprite_ext(spr_mouseLotteryCompleteHint, 0, 566, 406, 2, 2, 0, c_white, alphaer1)
draw_sprite_ext(spr_mouseLotteryCompleteHint, 0, 566, 432, 2, 2, 0, c_white, alphaer2)
draw_sprite_ext(spr_mouseLotteryCompleteHint, 0, 566, 458, 2, 2, 0, c_white, alphaer3)
