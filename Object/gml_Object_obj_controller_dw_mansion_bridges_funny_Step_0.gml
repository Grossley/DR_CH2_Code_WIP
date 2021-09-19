if (saved == 1)
{
    var _temp_local_var_1 = swatchfriend
    gml_Script_scr_depth()
    if (con == 0)
    {
        global.interact = 1
        image_speed = 0.25
        if (x > 1376)
            x -= 8
        else
        {
            x = 1376
            con++
        }
    }
    if (con == 1)
    {
        if (y < 140)
            y += 8
        else
        {
            y = 140
            con++
        }
    }
    if (con == 2)
    {
        if (x > 1280)
            x -= 8
        else
        {
            x = 1280
            global.flag[376] = 1
            con++
        }
    }
    if (con == 3)
    {
        friendlySwatch = gml_Script_instance_create(x, y, obj_npc_room)
        friendlySwatch.sprite_index = sprite_index
        friendlySwatch.image_index = image_index
        friendlySwatch.image_speed = 0
        friendlySwatch.image_xscale = image_xscale
        friendlySwatch.image_yscale = image_yscale
        global.interact = 0
        instance_destroy()
    }
}
if (vaseSpawned == 0 && spawnVaseTrig == 1)
{
    global.flag[376] = 2
    global.interact = 1
    vaseSpawned = 1
    vase = gml_Script_instance_create(1078, -70, obj_queenvase)
    vase.image_index = 0
    vase.image_xscale = 2
    vase.image_yscale = 2
    vase.con = 0
    vase.newspeed = 4
}
if gml_Script_i_ex(vase)
{
    var _temp_local_var_3 = vase
    other.swatchLines = 1
    if (con == 0)
    {
        newspeed *= 1.5
        newspeed = clamp(newspeed, 0, 12)
        if (y <= 294)
            y += newspeed
        if (y >= 294)
        {
            y = 294
            con = 1
            global.interact = 0
        }
    }
}
if instance_exists(obj_marker)
{
    with (obj_marker)
    {
        if (sprite_index == spr_queenvase)
        {
            other.vaseCracked = 1
            timer = 0
        }
    }
}
if (vaseCracked == 1 && instance_exists(obj_npc_room))
{
    if (vaseCrackedCon == -1)
    {
        enemySwatch = gml_Script_instance_create(obj_npc_room.x, (obj_npc_room.y + 18), obj_chaseenemy)
        enemySwatch.image_xscale = obj_npc_room.image_xscale
        enemySwatch.image_yscale = obj_npc_room.image_yscale
        enemySwatch.sprite_index = spr_npc_swatchling_sweep_walk
        enemySwatch.image_speed = 0.25
        var _temp_local_var_5 = enemySwatch
        myencounter = 64
        radius = 100000
        ignoresolid = true
        alertcon = 0
        chasetype = 4
    }
}
if (vaseCrackedCon == 0)
{
    if (enemySwatch.x <= ((obj_mainchara.x + obj_mainchara.sprite_width) + 8))
    {
        global.interact = 1
        enemySwatch.x = ((obj_mainchara.x + obj_mainchara.sprite_width) + 8)
        image_index = 0
        timer = 0
        vaseCrackedCon++
    }
    if (instance_exists(obj_caterpillarchara) && enemySwatch.x <= ((obj_caterpillarchara.x + obj_caterpillarchara.sprite_width) + 8))
    {
        global.interact = 1
        enemySwatch.x = ((obj_caterpillarchara.x + obj_caterpillarchara.sprite_width) + 8)
        image_index = 0
        timer = 0
        vaseCrackedCon++
    }
}
if (vaseCrackedCon == 1)
{
    enemySwatch.image_speed = 0
    friendlySwatch = gml_Script_instance_create(enemySwatch.x, 208, obj_marker)
    friendlySwatch.sprite_index = spr_npc_swatchling_sweep
    friendlySwatch.image_xscale = enemySwatch.image_xscale
    friendlySwatch.image_index = 0
    friendlySwatch.image_yscale = enemySwatch.image_yscale
    friendlySwatch.image_speed = 0
    var _temp_local_var_7 = friendlySwatch
    gml_Script_scr_depth()
}
if (vaseCrackedCon == 2)
{
    timer++
    if (timer == 15)
    {
        global.facing = 1
        if instance_exists(obj_caterpillarchara)
        {
            with (obj_caterpillarchara)
            {
                fun = true
                _remsprite = sprite_index
                sprite_index = rsprite
                image_index = 0
            }
        }
    }
    if (timer == 30)
    {
        gml_Script_scr_speaker("no_name")
        gml_Script_msgsetloc(0, "* .../", "obj_controller_dw_mansion_bridges_funny_slash_Step_0_gml_180_0")
        gml_Script_msgnextloc("* I suppose we'll just have to let it go this once./%", "obj_controller_dw_mansion_bridges_funny_slash_Step_0_gml_181_0")
        d = gml_Script_d_make()
        vaseCrackedCon++
    }
}
if (vaseCrackedCon == 3)
{
    if (!gml_Script_i_ex(d))
        vaseCrackedCon++
}
if (vaseCrackedCon == 4)
{
    friendlySwatch.sprite_index = spr_npc_butler
    friendlySwatch.y = 188
    friendlySwatch.image_speed = 0.25
    _temp_local_var_8.x = (friendlySwatch.x - 8)
    var _temp_local_var_9 = friendlySwatch
    var _temp_local_var_10 = friendlySwatch
    var _temp_local_var_11 = enemySwatch
    var _temp_local_var_12 = -9
    var _temp_local_var_13 = friendlySwatch
    gml_Script_scr_depth()
}
