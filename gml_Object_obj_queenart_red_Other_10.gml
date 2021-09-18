var _temp_local_var_3;
if (flippable == 1)
    flip = 1
if (isswitch == 1)
{
    if (room == room_dw_mansion_east_2f_transformed_new)
    {
        if (extflag == "a")
        {
            if (global.flag[395] == 0)
            {
                global.flag[395] = 1
                61
                gml_Script_instance_create(x, y, obj_shake)
                if (shine != -4)
                    shine
            }
            isswitch = 0
        }
        if (extflag == "b")
        {
            if (global.flag[396] == 0)
            {
                global.flag[396] = 1
                61
                gml_Script_instance_create(x, y, obj_shake)
                if (shine != -4)
                    shine
            }
            isswitch = 0
        }
    }
    if (room == room_dw_mansion_fire_paintings)
    {
        if (extflag == "treasureswitch" && global.flag[398] == 0)
        {
            61
            with (obj_queenart_mona)
            {
                if (extflag == "treasure")
                {
                    treasure = gml_Script_instance_create((x + (sprite_width / 2)), y, obj_queenart_red)
                    treasure.flippable = 0
                    treasure.extflag = "treasure"
                    treasure.isswitch = 1
                    treasure.sprite_index = spr_queenart_mona_middlepoint
                    treasure.spriteindex2 = 2927
                    treasure.flip = 1
                    // WARNING: Popz'd an empty stack.
                }
            }
            with (obj_overworld_bulletarea)
            {
                if (extflag == "bottom")
                    // WARNING: Popz'd an empty stack.
            }
            if (shine != -4)
                shine
            skip = 1
            isswitch = 0
            extflag = 0
            global.flag[398] = 1
            dontshine = 1
        }
        if (extflag == "treasure")
        {
            if (global.flag[138] == 0)
            {
                61
                itemflag = 138
                var itemget = gml_Script_scr_itemget_anytype_text(2, "item")
                "no_name"
                gml_Script_msgsetloc(0, "* (You found a ReviveMint!)/", "obj_queenart_red_slash_Other_10_gml_91_0")
                itemget
                if (noroom == false)
                    global.flag[itemflag] = 1
                if (shine != -4)
                    shine
            }
            else
            {
                "no_name"
                gml_Script_msgsetloc(0, "* (There's nothing here.)/%", "obj_queenart_red_slash_Other_10_gml_107_0")
            }
            mydialoguer = gml_Script_instance_create(0, 0, obj_dialoguer)
        }
        if (extflag == "fireswitch" && global.flag[399] == 0)
        {
            global.flag[399] = 1
            dontshine = 1
            isswitch = 0
            decor = obj_sneo_friedpipis
            con = 0
            flipcon = 0
            flip = 1
            gml_Script_instance_create(x, y, obj_shake)
            var _temp_local_var_3 = shine
        }
    }
}
myinteract = 3
global.interact = 1
if (skip != 0)
    global.interact = 0
