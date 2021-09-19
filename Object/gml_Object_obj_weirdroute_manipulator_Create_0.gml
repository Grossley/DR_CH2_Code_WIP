havenoelle = 0
if instance_exists(obj_caterpillarchara)
{
    with (obj_caterpillarchara)
    {
        if (name == "noelle")
            other.havenoelle = 1
    }
}
phase = gml_Script_scr_sideb_get_phase()
trashcon = 0
if (global.flag[915] > 0 && global.flag[916] == 0)
{
    if (room == room_dw_city_spamton_house)
    {
        viro = gml_Script_instance_create(960, 224, obj_chaseenemy)
        werewire = gml_Script_instance_create(416, 224, obj_chaseenemy)
    }
}
if (global.flag[915] >= 1.5 && global.flag[916] == 0)
{
    if (room == room_dw_city_intro)
    {
        gml_Script_safe_delete(101)
        gml_Script_safe_delete(108)
    }
    if instance_exists(obj_city_parallaxStreet)
    {
        with (obj_city_parallaxStreet)
            nocars = 1
    }
    if (room == room_dw_city_traffic_1)
    {
        gml_Script_safe_delete(1114)
        gml_Script_safe_delete(1115)
        gml_Script_safe_delete(1228)
        gml_Script_safe_delete(101)
        gml_Script_safe_delete(108)
        omawaroid = gml_Script_instance_create(880, 160, obj_chaseenemy)
        tasque = gml_Script_instance_create(1680, 220, obj_chaseenemy)
    }
}
if (global.flag[915] >= 1.75 && global.flag[916] == 0)
{
    if instance_exists(obj_city_parallaxStreet)
    {
        with (obj_city_parallaxStreet)
            nocars = 1
    }
    if (room == room_dw_city_traffic_2)
    {
        gml_Script_safe_delete(1114)
        gml_Script_safe_delete(1115)
        gml_Script_safe_delete(1228)
        gml_Script_safe_delete(101)
        gml_Script_safe_delete(103)
        gml_Script_safe_delete(108)
        virokun = gml_Script_instance_create(840, 120, obj_chaseenemy)
        werewire = gml_Script_instance_create(1504, 80, obj_chaseenemy)
    }
    if (room == room_dw_city_mirrorfriend)
    {
        gml_Script_safe_delete(101)
        gml_Script_safe_delete(1035)
    }
    if (room == room_dw_city_roadblock)
        gml_Script_safe_delete(108)
    if (room == room_dw_city_big_1)
        gml_Script_safe_delete(101)
    if (room == room_dw_city_susie_ralsei_fun_1)
    {
        with (obj_cybercity_balloon)
            instance_destroy()
        with (obj_ch2_susie_ralsei_fun)
            instance_destroy()
        with (obj_readable_room1)
            instance_destroy()
        if instance_exists(obj_marker)
        {
            with (obj_marker)
                instance_destroy()
        }
        with (obj_sprite_part_parallax_inverted)
            dontdraw = 1
        with (obj_sprite_part_parallax_example)
            dontdraw = 1
        var lay_id = layer_get_id("CarnivalSprites")
        var spr_id = layer_sprite_get_id(lay_id, "graphic_58FD8107")
        layer_sprite_change(spr_id, 2999)
        layer_sprite_x(spr_id, 216)
        layer_sprite_y(spr_id, -120)
    }
}
if (phase == 2)
{
    if (room == room_dw_city_traffic_1 || room == room_dw_city_traffic_2 || room == room_dw_city_traffic_3 || room == room_dw_city_roadblock || room == room_dw_city_big_1 || room == room_dw_city_big_2 || room == room_dw_city_big_3 || room == room_dw_city_mirrorfriend || room == room_dw_city_entrance)
    {
        gml_Script_safe_delete(1114)
        gml_Script_safe_delete(1228)
        gml_Script_safe_delete(103)
        gml_Script_safe_delete(101)
        gml_Script_safe_delete(108)
        gml_Script_safe_delete(313)
        gml_Script_safe_delete(314)
        gml_Script_safe_delete(311)
        gml_Script_safe_delete(1035)
        gml_Script_safe_delete(1251)
        if instance_exists(obj_traffic_switch)
        {
            with (obj_traffic_switch)
                gml_Script_scr_createFrozen(1)
        }
        if instance_exists(obj_cybercity_bg_trafficlight_shine)
        {
            with (obj_cybercity_bg_trafficlight_shine)
                mode = 0
        }
        if instance_exists(obj_sprite_part_parallax_inverted)
        {
            with (obj_sprite_part_parallax_inverted)
                dontdraw = 1
        }
        if instance_exists(obj_sprite_part_parallax_example)
        {
            with (obj_sprite_part_parallax_example)
                dontdraw = 1
        }
        if instance_exists(obj_cybercity_bg_carbridge)
        {
            with (obj_cybercity_bg_carbridge)
                dontdraw = 1
        }
        lid = layer_get_id("TILES_Sidewalk_Animated")
        layer_set_visible(lid, 0)
    }
    if (room == room_dw_city_mice2)
    {
        lid = layer_get_id("TILES_Sidewalk_Animated")
        layer_set_visible(lid, 0)
    }
    if (room == room_dw_city_intro)
    {
        if instance_exists(obj_npc_room)
        {
            with (obj_npc_room)
                instance_destroy()
        }
        if instance_exists(obj_npc_room_animated)
        {
            with (obj_npc_room_animated)
                instance_destroy()
        }
        lid = layer_get_id("TILES_Sidewalk_Animated")
        layer_set_visible(lid, 0)
    }
    if (room == room_dw_city_traffic_3)
    {
        gml_Script_instance_create(504, 386, obj_chaseenemy)
        gml_Script_instance_create(1314, 244, obj_chaseenemy)
    }
    if (room == room_dw_city_queen_drunk)
    {
        with (obj_ch2_scene13)
            instance_destroy()
        with (obj_npc_sign)
            instance_destroy()
        gml_Script_instance_create(1238, 238, obj_chaseenemy)
    }
    if (room == room_dw_city_cheesemaze)
    {
        with (obj_controller_city_cheesemaze)
            instance_destroy()
        with (obj_mazecheese)
            instance_destroy()
        with (obj_cybercity_bg_sign)
            instance_destroy()
        gml_Script_instance_create(1480, 480, obj_chaseenemy)
        gml_Script_instance_create(960, 640, obj_chaseenemy)
        lid = layer_get_id("TILES_Sidewalk_Animated")
        layer_set_visible(lid, 0)
    }
    if (room == room_dw_city_entrance)
    {
        lay_id = layer_get_id("Assets_WelcomeSign")
        spr_id = layer_sprite_get_id(lay_id, "graphic_66ADFD1")
        layer_sprite_speed(spr_id, 0)
        lid = layer_get_id("TILES_Sidewalk_Animated")
        layer_set_visible(lid, 0)
    }
    if (room == room_dw_city_savepoint)
    {
        lid = layer_get_id("TILES_Sidewalk_Animated")
        layer_set_visible(lid, 0)
        with (obj_cybercity_bg_lightset)
            instance_destroy()
        with (obj_ch2_room_city_savepoint)
            instance_destroy()
        with (obj_npc_room_animated)
            instance_destroy()
        box1 = gml_Script_instance_create(226, 152, obj_npc_room)
        box2 = gml_Script_instance_create(380, 152, obj_npc_room)
        box3 = gml_Script_instance_create(302, 176, obj_npc_room)
        with (obj_npc_room)
        {
            sprite_index = spr_cardboardbox
            image_xscale = 2
            image_yscale = 2
        }
        box1.extflag = "left"
        box3.extflag = "mid"
        box2.extflag = "right"
    }
    if (room == room_dw_city_poppup)
    {
        with (obj_cybercity_bg_trafficlight_shine)
            mode = 0
        with (obj_cybercity_bg_screen_dolphin)
            instance_destroy()
        lid = layer_get_id("TILES_Sidewalk_Animated")
        layer_set_visible(lid, 0)
    }
    if (room == room_dw_city_moss)
    {
        lid = layer_get_id("TILES_Sidewalk_Animated")
        layer_set_visible(lid, 0)
    }
    if (room == room_dw_city_queen_drunk)
    {
        with (obj_doorA_musfade)
        {
            door = gml_Script_instance_create(x, y, obj_doorA)
            door.image_yscale = image_xscale
            door.image_yscale = image_yscale
            instance_destroy()
        }
    }
    if (room == room_dw_city_savepoint)
    {
        with (obj_doorA_musfade)
        {
            door = gml_Script_instance_create(x, y, obj_doorA)
            door.image_yscale = image_xscale
            door.image_yscale = image_yscale
            instance_destroy()
        }
        with (obj_doorB_musfade)
        {
            door = gml_Script_instance_create(x, y, obj_doorB)
            door.image_yscale = image_xscale
            door.image_yscale = image_yscale
            instance_destroy()
        }
    }
    if (room == room_dw_city_big_3)
    {
        with (obj_doorB_musfade)
        {
            door = gml_Script_instance_create(x, y, obj_doorB)
            door.image_yscale = image_xscale
            door.image_yscale = image_yscale
            instance_destroy()
        }
    }
}
if (phase == 3)
{
    if (room == room_dw_mansion_entrance)
    {
        wigman = gml_Script_instance_create(600, 460, obj_npc_room)
        wigman.sprite_index = spr_npc_wig_robot
        wigman.image_xscale = -2
        wigman.image_yscale = 2
    }
    if (room == room_dw_mansion_east_1f_secret)
    {
        spamtondoor = gml_Script_instance_create(960, 120, obj_npc_sign)
        spamtondoor.sprite_index = spr_dw_mansion_door_spamton
        spamtondoor.image_xscale = 1
        spamtondoor.image_yscale = 1
        secretdoorlocked = gml_Script_instance_create(240, 120, obj_npc_sign)
        secretdoorlocked.sprite_index = spr_dw_mansion_door_closed
        secretdoorlocked.image_xscale = 1
        secretdoorlocked.image_yscale = 1
        gml_Script_safe_delete(142)
        gml_Script_safe_delete(152)
        gml_Script_safe_delete(1285)
        gml_Script_safe_delete(1284)
        with (obj_readable_room1)
        {
            if (x < 220)
                instance_destroy()
        }
    }
    if (room == room_dw_mansion_entrance || room == room_dw_mansion_east_3f || room == room_dw_mansion_east_2f_shortcut)
    {
        with (obj_doorAny)
            doorFadeMusic = -1
    }
    if (room == room_dw_mansion_east_2f_transformed_new)
    {
        gml_Script_scr_forcefield(760, 1000, 10, 2, 1, 0)
        with (obj_overworld_bulletarea)
            instance_destroy()
        gml_Script_instance_create(860, 760, obj_queenart_red)
        with (obj_queenart_red)
        {
            spam = gml_Script_instance_create((x - (sprite_width / 2)), y, obj_spamtonpainting)
            spam.depth = depth
            gml_Script_scr_darksize(spam)
            instance_destroy()
        }
        with (obj_queenart_mona)
        {
            spam = gml_Script_instance_create(x, y, obj_spamtonpainting)
            spam.depth = depth
            gml_Script_scr_darksize(spam)
            instance_destroy()
        }
        with (obj_npc_sign)
            instance_destroy()
        global.flag[362] = (1 && global.flag[382] == 0)
        layer_set_visible("TILES_LOCKED_DOOR", 0)
        if instance_exists(obj_lockedDoor_mansion_east_2f_transformed_new)
        {
            with (obj_lockedDoor_mansion_east_2f_transformed_new)
                instance_destroy()
        }
        kitchendoor = gml_Script_instance_create(640, 80, obj_npc_sign)
        kitchendoor.visible = true
        kitchendoor.sprite_index = spr_mansiondoor
        kitchendoor.image_xscale = 2
        kitchendoor.image_yscale = 2
        kitchendoor.depth = 999980
        global.flag[395] = 1
        global.flag[396] = 1
        gml_Script_instance_create(x, y, obj_chaseenemy)
    }
    if (room == room_dw_mansion_dining3)
    {
        with (obj_doorW)
        {
            if (extflag == "top")
            {
                x = 560
                y = 120
            }
        }
        obj_controller_dining3.weird = 1
        with (obj_readable_room1)
            instance_destroy()
    }
    if (room == room_dw_mansion_dininghall)
    {
        gml_Script_safe_delete(258)
        gml_Script_safe_delete(1198)
        gml_Script_safe_delete(1197)
        layer_set_visible("TILES_Pathway_NoCorridors_Weird", 1)
        block = gml_Script_scr_forcefield(520, 160, 2, 10, 1, 0)
        var _temp_local_var_7 = block
        gml_Script_scr_depth()
    }
    if (block.room == room_dw_mansion_east_2f_c)
    {
        door1 = gml_Script_instance_create(1580, 80, obj_solidblock)
        door1.visible = true
        door1.sprite_index = spr_dw_mansion_door_closed
        door1.depth = 999960
        door2 = gml_Script_instance_create(380, 80, obj_solidblock)
        door2.visible = true
        door2.sprite_index = spr_dw_mansion_door_closed
        door2.depth = 999960
    }
    if (room == room_dw_mansion_east_2f_c_a)
    {
        bulletarea = gml_Script_instance_create(120, 320, obj_overworld_bulletarea)
        bulletarea.image_xscale = 42
        bulletarea.image_yscale = 2
        field = gml_Script_scr_forcefield(80, 280, 88, 2, 1, 1)
        field.depth = 800000
        with (obj_mansion_vase)
            instance_destroy()
        with (obj_ch2_room_mansion_east_2f_c_a)
            instance_destroy()
        with (obj_saucer)
            instance_destroy()
    }
    if (room == room_dw_mansion_east_2f_d)
    {
        with (obj_overworld_bulletarea)
            instance_destroy()
        with (obj_queenart_mona)
            instance_destroy()
        obj_queenstatue_parallax.image_alpha = 0.15
        if (global.flag[542] == 0)
            gml_Script_instance_create(560, 160, obj_chaseenemy)
    }
    if (room == room_dw_mansion_east_3f)
    {
        with (obj_ch2_room_mansion_3f)
            instance_destroy()
        global.plot = 160
        global.flag[392] = 1
        bathroomdoor = gml_Script_instance_create(960, 80, obj_solidblock)
        bathroomdoor.visible = true
        bathroomdoor.sprite_index = spr_mansiondoor
        bathroomdoor.image_xscale = 2
        bathroomdoor.image_yscale = 2
        bathroomdoor.depth = 899980
        door = gml_Script_scr_dark_marker(590, 80, 2860)
        door.depth = 899980
        door_left = gml_Script_scr_dark_marker(250, 80, 2860)
        door_left.depth = 899980
    }
    if (room == room_dw_mansion_acid_tunnel)
    {
        with (obj_npc_sign)
            instance_destroy()
    }
    if (room == room_dw_mansion_east_3f_projection)
    {
        with (obj_npc_butler)
            instance_destroy()
        with (obj_shadowMaker)
            instance_destroy()
        with (obj_projector_footage)
            instance_destroy()
        gml_Script_instance_create(255, 287, obj_chaseenemy)
    }
    if (room == room_dw_mansion_east_4f_b)
        field = gml_Script_scr_forcefield(40, 280, 2, 8, 1, 0)
    if (room == room_dw_mansion_east_teacup_4)
    {
        with (obj_teacup)
            uniqueRideExperience = 0
    }
}
if (phase != 3)
{
    if (room == room_dw_mansion_east_2f_c || room == room_dw_mansion_east_2f_c_a)
    {
        with (obj_hangplug)
            instance_destroy()
    }
    if (room == room_dw_mansion_entrance)
    {
        with (obj_cybercity_bg_screen)
            instance_destroy()
        with (obj_queenscreen)
            instance_destroy()
    }
    if (room == room_dw_mansion_dining3)
    {
        with (obj_mazepipis)
            instance_destroy()
    }
    if (room == room_dw_mansion_dininghall)
    {
        gml_Script_safe_delete(266)
        gml_Script_safe_delete(3)
    }
}
encountercheck = 0
lastphase = global.flag[915]
phasechange = 0
init = 0
failstate = global.flag[916]
