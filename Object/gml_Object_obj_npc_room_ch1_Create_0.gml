var _temp_local_var_1;
myinteract = 0
talked = 0
tempvar = 0
image_speed = 0
depthcancel = false
normalanim = 1
remanimspeed = 0
if (global.darkzone == false)
{
    if (room == room_krisroom_ch1)
        sprite_index = spr_redwagon_ch1
    if (room == room_torhouse_ch1)
    {
        sprite_index = spr_chairiel_empty_ch1
        if (global.plot >= 250)
            sprite_index = spr_chairiel_ch1
    }
    if (room == room_graveyard_ch1)
    {
        sprite_index = spr_npc_bench_ch1
        fence = gml_Script_scr_marker_ch1(81, 122, 3665)
        var _temp_local_var_1 = fence
        gml_Script_scr_depth_ch1()
    }
    if (fence.room == room_hospital_lobby_ch1)
        sprite_index = spr_npc_nurse_ch1
    if (room == room_hospital_rudy_ch1)
        sprite_index = spr_rudy_d_ch1
    if (room == room_library_ch1)
        sprite_index = spr_normalnpc_ch1
    if (room == room_townhall_ch1)
    {
        sprite_index = spr_npc_businessguy_ch1
        if (x > obj_npc_rudy)
            sprite_index = spr_npc_receptionist_ch1
        if (x > obj_power_up_fx)
            sprite_index = spr_npc_politicsbear_ch1
    }
    if (room == room_diner_ch1)
    {
        if (x < obj_npc_musical_door)
            sprite_index = spr_npc_cattiwaitress_ch1
        if (x < obj_smallface)
            sprite_index = spr_npc_dragonfamily_ch1
        if (x >= obj_npc_musical_door && x <= obj_doorA)
            sprite_index = spr_npc_qc_ch1
        if (y > 130)
        {
            if (x > obj_wave_fx)
                sprite_index = spr_npc_dresslion_ch1
            if (x > obj_sneo_heart_laser)
            {
                sprite_index = spr_npc_greenfire_ch1
                depth = 4000
                depthcancel = true
            }
            if (x > obj_saucer_ufo_bullet)
            {
                sprite_index = spr_npc_flanneldemon_ch1
                depth = 4000
                depthcancel = true
            }
        }
        if (y < 120)
        {
            if (x > obj_markerr)
                sprite_index = spr_npc_most_improved_1997_ch1
            if (x > obj_power_up_fx)
                sprite_index = spr_npc_icewolf_ch1
        }
    }
    if (room == room_town_south_ch1)
    {
        if (x > obj_bulletdeleter)
            sprite_index = spr_npc_donutcar_ch1
        if (x > obj_musical_note_bullet)
            sprite_index = spr_npc_snailcar_ch1
    }
    if (room == room_town_church_ch1)
        sprite_index = spr_npc_alvin_ch1
    if (room == room_town_mid_ch1)
    {
        if (x >= 1800)
            sprite_index = spr_mkid_dt_ch1
        if (x >= 1900)
            sprite_index = spr_snowy_dt_ch1
    }
    if (room == room_town_north_ch1)
    {
        if (x >= obj_werewire_spare2)
            sprite_index = spr_npc_catty_ch1
        if (x >= obj_sneo_lastattack)
            sprite_index = spr_npc_cattydad_ch1
        if (x >= DEVICE_CONTACT_old)
            sprite_index = spr_npc_bratty_ch1
    }
    if (room == room_beach_ch1)
    {
        if (x >= obj_smallface)
            sprite_index = spr_npc_rgbun_ch1
        if (x >= obj_npc_rudy)
            sprite_index = spr_npc_rgdragon_ch1
    }
}
if (global.darkzone == true)
{
    image_xscale = 2
    image_yscale = 2
    if (room == room_castle_tutorial_ch1)
        sprite_index = spr_dummynpc_ch1
    if (room == room_field2A_ch1 || room == room_field_puzzle1_ch1 || room == room_field4_ch1)
        sprite_index = spr_candytree_ch1
    if (room == room_field_topchef_ch1)
    {
        sprite_index = spr_topchef_ch1
        if (y <= 120)
        {
            sprite_index = spr_smoldercake_ch1
            alarm[11] = 1
        }
    }
    if (room == room_field_puzzletutorial_ch1)
    {
        sprite_index = spr_npc_puzzlepiece_ch1
        if (global.flag[251] == 1)
            instance_destroy()
    }
    if (room == room_field_maze_ch1)
    {
        if (x < obj_bloxer_enemy_ch1)
            sprite_index = spr_jigsawry_idle_ch1
        if (x > obj_bloxer_enemy_ch1)
            sprite_index = spr_lancer_dt_ch1
    }
    if (room == room_field_boxpuzzle_ch1)
        sprite_index = spr_npc_block_broken_ch1
    if (room == room_field_checkers7_ch1)
    {
        if (x.room_width / 2)
        {
            sprite_index = spr_npc_mrelegance_ch1
            if (global.plot >= 60)
                instance_destroy()
        }
        else
            sprite_index = spr_npc_mrsociety_ch1
    }
    if (room == room_forest_savepoint1_ch1)
    {
        if (x.room_width / 2)
        {
            sprite_index = spr_npc_puzzlepiece_ch1
            if (global.flag[251] == 0)
                instance_destroy()
        }
        else
            sprite_index = spr_npc_mrelegance_ch1
    }
    if (room == room_forest_area1_ch1)
        sprite_index = spr_diamond_overworld_ch1
    if (room == room_forest_area2A_ch1)
    {
        if (x.room_width / 2)
            sprite_index = spr_jackperson_ch1
        if (x.room_width / 2)
            sprite_index = spr_ballperson_ch1
    }
    if (room == room_forest_area3A_ch1)
    {
        if (x.room_width / 2)
            sprite_index = spr_blockler_b_ch1
        if (x.room_width / 2)
            sprite_index = spr_blockler_o_ch1
    }
    if (room == room_forest_savepoint2_ch1)
    {
        sprite_index = spr_bakesale_rudinn_ch1
        if (x >= obj_closing_block_left && x <= DEVICE_CONTACT_old)
            sprite_index = spr_bakesale_hathy_ch1
        if (x >= obj_ch2_scene26_powers_combined_old)
            sprite_index = spr_bakesale_lancer_ch1
    }
    if (room == room_forest_area4_ch1)
        sprite_index = spr_npc_coody_ch1
    if (room == room_forest_starwalker_ch1)
        sprite_index = spr_npc_originalstarwalker_ch1
    if (room == room_forest_savepoint_relax_ch1)
    {
        if (x <= obj_power_up_fx)
            sprite_index = spr_diamond_overworld_ch1
        if (x > obj_saucer_ufo_bullet)
        {
            if (global.plot >= 90)
                instance_destroy()
            if (y >= 240)
                sprite_index = spr_lancer_dark_relax_ch1
            else
                sprite_index = spr_susie_dark_relax_ch1
        }
    }
    if (room == room_forest_fightsusie_ch1)
    {
        sprite_index = spr_lancer_dt_ch1
        if (global.plot >= 150)
            instance_destroy()
    }
    if (room == room_cc_prison_cells_ch1)
        sprite_index = spr_diamond_trash_ch1
    if (room == room_cc_prison2_ch1)
    {
        global.flag[296] = 1
        sprite_index = spr_npc_gouldensam_ch1
        if (x > obj_sneo_heart_laser && x < obj_swatchling_candy)
        {
            king = gml_Script_instance_create_ch1(-100, -100, 1408)
            king.x = x
            king.y = y
            king.sprite_index = spr_npc_cage_king_ch1
            gml_Script_scr_depth_ch1()
            king.depth = (depth - 10)
        }
        if (x > obj_werewire_spare2 && x < obj_fluffyguard)
        {
            x += 4
            puzz = gml_Script_instance_create_ch1(-100, -100, 1408)
            puzz.x = obj_sneo_wall_controller
            puzz.y = 130
            puzz.sprite_index = spr_npc_puzzlepiece_jail_ch1
            tempvar = 1
        }
        if (x > obj_fluffyguard && x < obj_debug_xy)
        {
            x += 8
            rudinn = gml_Script_instance_create_ch1(-100, -100, 1408)
            rudinn.x = obj_debug_xy
            rudinn.y = 115
            rudinn.sprite_index = spr_diamond_overworld_ch1
            tempvar = 2
        }
        if (x > obj_debug_xy && x < obj_ch2_keyboardpuzzle_controller)
        {
            x += 12
            tempvar = 3
            animal = gml_Script_instance_create_ch1(-100, -100, 1408)
            animal.x = x
            animal.y = y
            animal.sprite_index = spr_npc_cage_animals_ch1
        }
    }
    if (room == room_cc_rudinn_ch1)
        sprite_index = spr_diamond_overworld_ch1
    if (room == room_cc_rurus1_ch1)
        sprite_index = spr_diamond_overworld_ch1
    if (room == room_cc_hathy_ch1)
        sprite_index = spr_heartenemy_overworld_ch1
    if (room == room_cc_rurus2_ch1)
        sprite_index = spr_diamond_overworld_ch1
    if (room == room_cc_clover_ch1)
    {
        sprite_index = spr_clubs_overworld_ch1
        if (x < obj_markerr)
            sprite_index = spr_diamond_overworld_ch1
        if (x > obj_ralseithrown)
            sprite_index = spr_heartenemy_overworld_ch1
    }
    if (room == room_cc_throneroom_ch1)
    {
        if (global.plot < 240)
            instance_destroy()
        else if (y < 300 && y > 80)
        {
            sprite_index = spr_npc_gouldensam_ch1
            if (x.room_width / 2)
            {
                king = gml_Script_instance_create_ch1(-100, -100, 1408)
                king.x = x
                king.y = y
                king.sprite_index = spr_npc_cage_king_ch1
                gml_Script_scr_depth_ch1()
                king.depth = (depth - 10)
            }
            else
            {
                tempvar = 1
                animal = gml_Script_instance_create_ch1(-100, -100, 1408)
                animal.x = x
                animal.y = y
                animal.sprite_index = spr_npc_cage_animals_ch1
            }
        }
        else if (x.room_width / 2)
            sprite_index = spr_diamond_overworld_ch1
        else
            sprite_index = spr_topchef_ch1
    }
    if (room == room_cc_preroof_ch1)
    {
        if (global.plot < 240)
            instance_destroy()
        if (x > 180)
            sprite_index = spr_diamond_overworld_ch1
        if (x > 320)
            sprite_index = spr_heartenemy_overworld_ch1
        if (x > 460)
            sprite_index = spr_clubs_overworld_ch1
        if (x > 680)
            sprite_index = spr_diamond_overworld_ch1
    }
    if (room == room_cc_kingbattle_ch1)
    {
        if (global.plot < 240)
            instance_destroy()
        if (x < 440)
            sprite_index = spr_rurus_idle_ch1
        if (y < 160)
        {
            if (x == 398)
                sprite_index = spr_npc_mrsociety_ch1
            if (x == 522)
                sprite_index = spr_npc_mrelegance_ch1
            if (x == 740)
                sprite_index = spr_blockler_b_ch1
            if (x == 820)
                sprite_index = spr_blockler_o_ch1
            if (x == 940)
                sprite_index = spr_blockler_o_ch1
            if (x == 1020)
                sprite_index = spr_blockler_b_ch1
            if (x > 1140)
            {
                sprite_index = spr_npc_puzzlepiece_happy_ch1
                if (global.flag[216] == 1)
                    sprite_index = spr_npc_puzzlepiece_shaved_ch1
            }
        }
        else if (x < 900)
            sprite_index = spr_jackperson_ch1
        else
            sprite_index = spr_ballperson_ch1
    }
}
if (depthcancel == false)
    gml_Script_scr_depth_ch1()
