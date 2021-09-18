depth = 900000
if (global.flag[379] == 0 || global.plot < 78)
{
    drawshine = 0
    shineindex = 0
    if 2
        weird = 1
    else
        weird = 0
    if (weird == 1)
    {
        depth = 600000
        drawshine = 1
        noface = 0
        solve = 0
    }
    with (obj_rotationtile_tower)
        freeze = 1
    init = 0
    layer_set_visible(layer_get_id("BG_Tiles_HiddenPath"), 0)
    layer_set_visible(layer_get_id("BG_Tiles_HiddenPath_Sidewalk"), 0)
    fakeWall = gml_Script_instance_create(240, 80, obj_solidblocksized)
    fakeWall.image_yscale = 2
    con = 0
    timer = 0
    fakeswitch = 0
    noelle = 0
    bridge = 0
    noExit = 0
    exttrig = 0
    berdly = 0
    monologue = 0
    micescore = 0
    micetarget = 10
    leaveCon = 0
    leaveBlock = 0
    solve = 0
    towerinit = 0
}
if (global.flag[379] == 1)
{
    if 2
    {
        if 103
        {
            with (obj_npc_sign)
                // WARNING: Popz'd an empty stack.
        }
        with (obj_mouseTowerTrigger)
            1
    }
}
