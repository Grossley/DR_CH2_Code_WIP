// WARNING: Popz'd an empty stack.
if (block == 1)
    draw_sprite_ext(spr_caradventure_car_barrier, (x / 4), x, y, image_xscale, image_yscale, 0, c_white, 0.8)
if (blockeffectcon == 1)
{
    bsiner = 0
    blockeffectcon = 2
}
if (blockeffectcon == 2)
{
    bsiner++
    16777215
    draw_sprite_ext(spr_caradventure_car_barrier, (x / 4), (x + (bsiner * 2)), y, image_xscale, image_yscale, 0, c_white, (1 - (bsiner / 10)))
    draw_sprite_ext(spr_caradventure_car_barrier, (x / 4), (x + (bsiner * 4)), y, image_xscale, image_yscale, 0, c_white, (0.8 - (bsiner / 10)))
    if (bsiner >= 10)
    {
        blockeffectcon = 0
        bsiner = 0
    }
}
if (talkshowtimer > 0)
    talkshowtimer--
