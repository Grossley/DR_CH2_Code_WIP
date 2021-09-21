con = 0
stonelancer = -1
fan_a = -1
fan_b = -1
gavepresent = (global.flag[307] == 1 || global.flag[307] == 2)
lancer_stone = 0
if (global.chapter != 2)
    instance_destroy()
else if (global.plot >= 120)
{
    if (global.flag[356] == 0)
        lancernpc = gml_Script_instance_create(1605, 231, obj_pushable_lancer)
}
else
{
    con = -1
    gml_Script_scr_losechar()
    if instance_exists(obj_caterpillarchara)
        instance_destroy(obj_caterpillarchara)
    susienpc = gml_Script_scr_dark_marker(1184, 231, spr_cutscene_18_susie_lancer_carry_walk_right)
    susienpc.image_speed = 0
    lancer_stone = 0
}
