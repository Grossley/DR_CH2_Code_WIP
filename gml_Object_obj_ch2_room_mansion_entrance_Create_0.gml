southcon = 0
weird = 0
con = 0
if (global.flag[915] == 7 && global.flag[916] == 0)
{
    global.flag[346] = 1
    global.flag[340] = 1
    weird = 1
    // WARNING: Popz'd an empty stack.
    2
    3
    with (obj_caterpillarchara)
        // WARNING: Popz'd an empty stack.
    obj_mainchara.x = 440
    obj_mainchara.y = 690
    gml_Script_scr_makecaterpillar((obj_mainchara.x - 6), ((obj_mainchara.y + 10) - 2), 2, 0)
    gml_Script_scr_makecaterpillar((obj_mainchara.x - 2), ((obj_mainchara.y + 20) + 2), 3, 1)
    with (obj_caterpillarchara)
        // WARNING: Popz'd an empty stack.
    30
}
if (global.chapter != 2)
    // WARNING: Popz'd an empty stack.
else if (global.flag[340] == 1)
    layer_set_visible("TILES_Secret", 0)
else
{
    southcollider = gml_Script_instance_create(839, 720, obj_solidblock)
    southcollider.image_xscale = 4
    southcollider.image_yscale = 4
}
if (global.flag[346] == 0)
{
    bookcase_left = gml_Script_instance_create(616, 400, obj_npc_sign)
    bookcase_left.sprite_index = spr_dw_mansion_bookcase
    bookcase_left.depth = 899999
}
if (global.plot < 160)
{
    bookcase_right = gml_Script_instance_create(737, 400, obj_npc_sign)
    bookcase_right.sprite_index = spr_dw_mansion_bookcase
    bookcase_right.depth = 899999
}
if (global.flag[418] == 0)
{
    global.flag[418] = 1
    // WARNING: Popz'd an empty stack.
}
