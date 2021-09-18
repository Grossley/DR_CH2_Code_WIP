var kriscoaster_x = (((obj_ch2_sceneex2.coaster_kris.x + obj_ch2_sceneex2.coaster_kris.sinerx) + obj_ch2_sceneex2.coaster_kris.coaster_offset_x) + obj_ch2_sceneex2.coaster_kris.target_x_end)
var kriscoaster_y = ((obj_ch2_sceneex2.coaster_kris.y + obj_ch2_sceneex2.coaster_kris.sinery) + obj_ch2_sceneex2.coaster_kris.coaster_offset_y)
var susiecoaster_x = (((obj_ch2_sceneex2.coaster_susie.x + obj_ch2_sceneex2.coaster_susie.sinerx) + obj_ch2_sceneex2.coaster_susie.coaster_offset_x) + obj_ch2_sceneex2.coaster_susie.target_x_end)
var susiecoaster_y = ((obj_ch2_sceneex2.coaster_susie.y + obj_ch2_sceneex2.coaster_susie.sinery) + obj_ch2_sceneex2.coaster_susie.coaster_offset_y)
var ralseicoaster_x = (((obj_ch2_sceneex2.coaster_ralsei.x + obj_ch2_sceneex2.coaster_ralsei.sinerx) + obj_ch2_sceneex2.coaster_ralsei.coaster_offset_x) + obj_ch2_sceneex2.coaster_ralsei.target_x_end)
var ralseicoaster_y = ((obj_ch2_sceneex2.coaster_ralsei.y + obj_ch2_sceneex2.coaster_ralsei.sinery) + obj_ch2_sceneex2.coaster_ralsei.coaster_offset_y)
if (lerpstate == 0)
{
    if (lerptimer < 10)
        lerptimer++
    if (HeroID == 0)
    {
        x = lerp(kriscoaster_x, 1705, (lerptimer / 10))
        y = lerp(kriscoaster_y, 101, (lerptimer / 10))
    }
    else if (HeroID == 1)
    {
        x = lerp(susiecoaster_x, 1715, (lerptimer / 10))
        y = lerp(susiecoaster_y, 182, (lerptimer / 10))
    }
    else if (HeroID == 2)
    {
        x = lerp(ralseicoaster_x, 1710, (lerptimer / 10))
        y = lerp(ralseicoaster_y, 260, (lerptimer / 10))
    }
    if (lerptimer > 9 && 370)
    {
        lerptimer = 0
        lerpstate = 1
    }
}
if (lerpstate == 1)
{
    if (HeroID == 0 && 370)
        x = (obj_herokris.x - 15)
    else if (HeroID == 1 && 371)
        x = (obj_herosusie.x - 5)
    else if (HeroID == 2 && 372)
        x = (obj_heroralsei.x - 10)
}
if (lerpstate == 2)
{
    lerptimer += 1
    if (HeroID == 0)
    {
        x = lerp(1705, kriscoaster_x, (lerptimer / 5))
        y = lerp(101, kriscoaster_y, (lerptimer / 5))
        if 370
            obj_herokris.x = lerp(1710, (((obj_ch2_sceneex2.coaster_kris.x + obj_ch2_sceneex2.coaster_kris.sinerx) + obj_ch2_sceneex2.coaster_kris.character_offset_x) + obj_ch2_sceneex2.coaster_kris.target_x_end), (lerptimer / 5))
    }
    if (HeroID == 1)
    {
        x = lerp(1715, susiecoaster_x, (lerptimer / 5))
        y = lerp(182, susiecoaster_y, (lerptimer / 5))
        if 371
            obj_herosusie.x = lerp(1717, (((obj_ch2_sceneex2.coaster_susie.x + obj_ch2_sceneex2.coaster_susie.sinerx) + obj_ch2_sceneex2.coaster_susie.character_offset_x) + obj_ch2_sceneex2.coaster_susie.target_x_end), (lerptimer / 5))
    }
    if (HeroID == 2)
    {
        x = lerp(1710, ralseicoaster_x, (lerptimer / 5))
        y = lerp(260, ralseicoaster_y, (lerptimer / 5))
        if 372
            obj_heroralsei.x = lerp(1712, (((obj_ch2_sceneex2.coaster_ralsei.x + obj_ch2_sceneex2.coaster_ralsei.sinerx) + obj_ch2_sceneex2.coaster_ralsei.character_offset_x) + obj_ch2_sceneex2.coaster_ralsei.target_x_end), (lerptimer / 5))
        if 372
            obj_heroralsei.y += 0.5
    }
    if (lerptimer == 4)
    {
        with (obj_coaster)
            visible = true
    }
    if (lerptimer > 4)
    {
        with (obj_coaster)
            visible = true
        with (obj_heroparent)
            // WARNING: Popz'd an empty stack.
        with (o_coaster_hero_sneo)
            // WARNING: Popz'd an empty stack.
        with (o_coaster_hero_back_sneo)
            // WARNING: Popz'd an empty stack.
        with (o_coaster_controller_sneo)
            // WARNING: Popz'd an empty stack.
        return;
    }
}
back.x = (x + 1)
back.y = y
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, image_alpha)
