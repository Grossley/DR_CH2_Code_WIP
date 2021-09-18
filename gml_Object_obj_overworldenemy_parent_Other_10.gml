var _temp_local_var_1;
if (encountered == 0)
{
    encountered = 1
    if (touchflag > 0)
        global.flag[touchflag] = 1
    if (global.ambush == 1)
    {
        170
        with (obj_mainchara)
        {
            fun = true
            if (!274)
                // WARNING: Popz'd an empty stack.
            sprite_index = spr_krisb_hurt
        }
        with (obj_caterpillarchara)
        {
            fun = true
            // WARNING: Popz'd an empty stack.
            if (name == "susie")
                sprite_index = spr_susie_shock_r
            if (name == "ralsei")
                sprite_index = spr_ralsei_hurt_overworld
        }
    }
    global.flag[55] = x
    global.flag[56] = y
    if (washit == 1)
        global.ambush = 2
    newme = gml_Script_instance_create(x, y, obj_testoverworldenemy)
    newme.sprite_index = touchsprite
    newme.touchsprite = touchsprite
    newme.slidesprite = sprite_index
    newme.depth = depth
    newme.eraser = eraser
    newme.washit = washit
    newme.whichmonster = whichmonster
    var _temp_local_var_1 = newme
    event_user(0)
}
