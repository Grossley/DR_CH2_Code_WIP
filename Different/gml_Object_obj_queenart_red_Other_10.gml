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
                snd_play(snd_impact)
                instance_create(x, y, obj_shake)
                if (shine != noone)
                    instance_destroy(shine)
            }
            isswitch = 0
        }
        if (extflag == "b")
        {
            if (global.flag[396] == 0)
            {
                global.flag[396] = 1
                snd_play(snd_impact)
                instance_create(x, y, obj_shake)
                if (shine != noone)
                    instance_destroy(shine)
            }
            isswitch = 0
        }
    }
    if (room == room_dw_mansion_fire_paintings)
    {
        if (extflag == "treasureswitch" && global.flag[398] == 0)
        {
            snd_play(snd_impact)
            with (obj_queenart_mona)
            {
                if (extflag == "treasure")
                {
                    treasure = instance_create((x + (sprite_width / 2)), y, obj_queenart_red)
                    treasure.flippable = 0
                    treasure.extflag = "treasure"
                    treasure.isswitch = 1
                    treasure.sprite_index = spr_queenart_mona_middlepoint
                    treasure.spriteindex2 = spr_queenart_treasure_middlepoint
                    treasure.flip = 1
                    instance_destroy()
                }
            }
            with (obj_overworld_bulletarea)
            {
                if (extflag == "bottom")
                    instance_destroy()
            }
            if (shine != noone)
                instance_destroy(shine)
            skip = true
            isswitch = 0
            extflag = 0
            global.flag[398] = 1
            dontshine = 1
        }
        if (extflag == "treasure")
        {
            if (global.flag[138] == 0)
            {
                snd_play(snd_impact)
                itemflag = 138
                var itemget = scr_itemget_anytype_text(2, "item")
                scr_speaker("no_name")
                msgsetloc(0, "* (You found a ReviveMint!)/", "obj_queenart_red_slash_Other_10_gml_91_0")
                msgnext(itemget)
                if (noroom == false)
                    global.flag[itemflag] = 1
                if (shine != noone)
                    instance_destroy(shine)
            }
            else
            {
                scr_speaker("no_name")
                msgsetloc(0, "* (There's nothing here.)/%", "obj_queenart_red_slash_Other_10_gml_107_0")
            }
            mydialoguer = instance_create(0, 0, obj_dialoguer)
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
            instance_create(x, y, obj_shake)
            with (shine)
                instance_destroy()
            with (obj_queenart_mona)
            {
                if (extflag == "exitblocker")
                {
                    decor = instance_create(x, y, obj_queenart_red)
                    decor.decorative = 1
                    decor.sprite_index = spr_queenart_red
                    decor.spriteindex2 = spr_queenart_red
                    decor.extflag = "decor"
                    decor.depth = 998000
                    snd_play(snd_impact)
                    instance_destroy()
                }
            }
            with (obj_overworld_bulletarea)
            {
                if (extflag == "blocker")
                    instance_destroy()
            }
        }
    }
}
myinteract = 3
global.interact = 1
if (skip != false)
    global.interact = 0
