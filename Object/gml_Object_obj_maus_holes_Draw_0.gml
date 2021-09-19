if (preptimer > 0)
{
    preptimer--
    var invlerp = gml_Script_scr_inverselerp(5, 0, preptimer)
    var scale = lerp(0.7, 1, invlerp)
    draw_sprite_ext(sprite_index, 0, x, y, scale, scale, 0, c_white, 1)
    if (preptimer == 0)
    {
        d = gml_Script_instance_create(x, y, obj_bulletparent)
        d.sprite_index = spr_maus_holesblack
        d.depth += 3
    }
}
else
    draw_sprite_ext(sprite_index, image_index, (x + (random(shaky) * choose(1, -1))), (y + (random(shaky) * choose(1, -1))), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
shaky = gml_Script_scr_approach(shaky, 0, max(0.1, (shaky / 8)))
