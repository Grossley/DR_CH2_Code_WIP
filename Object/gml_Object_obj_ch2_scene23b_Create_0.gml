con = -1
customcon = 0
steal_susie = 0
steal_icee = 0
with (obj_mainchara)
    bg = 1
moon = gml_Script_instance_create(-163, 0, obj_backgrounderparent)
moon.sprite_index = bg_dw_noelle_room_moon
moon.depth = 1000100
if (global.flag[393] == 0)
{
    susie_statue = gml_Script_instance_create(137, 176, obj_npc_sign)
    susie_statue.sprite_index = spr_dw_susie_statue
    susie_statue.setdepth = 0
    susie_statue.depth = 98000
}
if (global.flag[394] == 0)
{
    icee_cushion = gml_Script_instance_create(373, 194, obj_npc_sign)
    icee_cushion.sprite_index = spr_dw_icee_cushion
    icee_cushion.setdepth = 0
    icee_cushion.depth = 98000
}
if (global.chapter != 2 || global.flag[319] > 0)
    layer_set_visible("Backgrounds_3", 0)
else
{
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    with (obj_mainchara)
        visible = false
    blackall = gml_Script_scr_marker(-10, -10, 2529)
    blackall.image_xscale = 999
    blackall.image_yscale = 999
    blackall.depth = 100
    blackall.image_blend = c_black
    blackall.image_alpha = 1
    fadeout = 0
    rudebuster = 0
    rudebuster_timer = 0
    wirecon = 0
    werewire1 = gml_Script_scr_dark_marker(575, (gml_Script_cameray() - (sprite_get_height(spr_werewire_static) * 2)), 1706)
    werewire1.image_speed = 0
    werewire1.image_xscale = -2
    werewire2 = gml_Script_scr_dark_marker(705, (gml_Script_cameray() - (sprite_get_height(spr_werewire_static) * 2)), 1706)
    werewire2.image_speed = 0
    sparecon = 0
    disable_face = 1
}
