var a = 2
if (sprite_index == spr_susieb_actready)
    a = 1.5
if (sprite_index == spr_susieb_act)
    a = 1.5
if (sprite_index == spr_susieb_attackready)
    a = 1.5
if (sprite_index == spr_susieb_attack)
    a = 1.5
if (sprite_index == spr_susieb_defend)
    a = 1.5
if (sprite_index == spr_susie_rudebuster)
    a = 1.5
if (sprite_index == spr_susie_spell)
    a = 1.5
if (sprite_index == spr_susie_spellready)
    a = 1.5
if (sprite_index == spr_susie_actready)
    a = 1.5
if (sprite_index == spr_susie_act)
    a = 1.5
if (sprite_index == spr_susie_attackready)
    a = 1.5
if (sprite_index == spr_susie_attack)
    a = 1.5
if (sprite_index == spr_susie_defend)
    a = 1.5
var hurt = false
if (sprite_index == spr_krisb_hurt)
    hurt = true
if (sprite_index == spr_susie_hurt)
    hurt = true
if (sprite_index == spr_susieb_hurt)
    hurt = true
if (sprite_index == spr_ralsei_hurt_fixed)
    hurt = true
if (HeroID == 0 && obj_herokris.hurt > false)
    hurt = true
if (HeroID == 1 && instance_exists(obj_herosusie) && obj_herosusie.hurt > false)
    hurt = true
if (HeroID == 2 && instance_exists(obj_heroralsei) && obj_heroralsei.hurt > false)
    hurt = true
back.x = x
back.y = (y + 8)
var xx2 = 0
var yy2 = 0
if (sprite_index == spr_susie_act)
{
    xx2 = -5
    yy2 = 5
}
if (sprite_index == spr_susieb_act)
{
    xx2 = -9
    yy2 = 7
}
if (userealsprite == 0)
    draw_sprite_ext(sprite_index, image_index, (((x + 20) + xx) + xx2), ((((y - (sprite_get_height(sprite_index) * a)) + yy) + yy2) + 8), image_xscale, image_yscale, 0, c_white, image_alpha)
if instance_exists(obj_herosusie)
{
    if (obj_herosusie.sprite_index == spr_susier_dark)
        obj_herosusie.sprite_index = spr_susie_walk_right_dw
    if (obj_herosusie.sprite_index == spr_susie_walk_right_dw)
    {
        obj_herosusie.x += 9
        obj_herosusie.y += 0
    }
}
if instance_exists(obj_heroralsei)
{
    if (obj_heroralsei.sprite_index == spr_ralsei_walk_right)
    {
        obj_heroralsei.x += 7
        obj_heroralsei.y += 3
    }
}
if (hurt == false)
    draw_sprite_ext(spr_coaster_hero, HeroID, x, (y + 8), image_xscale, image_yscale, 0, c_white, image_alpha)
if (hurt == true)
    draw_sprite_ext(spr_coaster_hero_hurt, HeroID, x, (y + 8), image_xscale, image_yscale, 0, c_white, image_alpha)
if (hspeed < 0 || disabled == 1)
{
    if (userealsprite == 0)
        draw_sprite_ext(sprite_index, image_index, ((x + 20) + xx), (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8), image_xscale, image_yscale, 0, c_black, 0.4)
    if (hurt == false)
        draw_sprite_ext(spr_coaster_hero, HeroID, x, (y + 8), image_xscale, image_yscale, 0, c_black, 0.4)
    if (hurt == true)
        draw_sprite_ext(spr_coaster_hero_hurt, HeroID, x, (y + 8), image_xscale, image_yscale, 0, c_black, 0.4)
}
