timer++
image_alpha -= 0.05
if (image_alpha <= 0)
    // WARNING: Popz'd an empty stack.
image_alpha
draw_rectangle_color((x1 - timer), (obj_queen_enemy.y - 83), (x2 + timer), (obj_queen_enemy.y + 240), c_lime, c_lime, c_lime, c_lime, 1)
draw_rectangle_color((x1 - (timer / 2)), (obj_queen_enemy.y - 83), (x2 + (timer / 2)), (obj_queen_enemy.y + 240), c_lime, c_lime, c_lime, c_lime, 1)
1
