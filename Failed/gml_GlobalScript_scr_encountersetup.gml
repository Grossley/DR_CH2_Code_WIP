xx = gml_Script___view_get(0, 0)
yy = gml_Script___view_get(1, 0)
for (i = 0; i < 3; i += 1)
{
    global.heromakex[i] = (xx + 80)
    global.heromakey[i] = ((yy + 50) + (80 * i))
    global.monsterinstancetype[i] = obj_baseenemy
    global.monstertype[i] = 1
    global.monstermakex[i] = ((xx + 500) + (20 * i))
    global.monstermakey[i] = ((yy + 40) + (90 * i))
}
global.monstertype[1] = 0
global.monstertype[2] = 0
if (global.char[0] != 0 && global.char[1] == 0 && global.char[2] == 0)
    global.heromakey[0] = (yy + 140)
if (global.char[0] != 0 && global.char[1] != 0 && global.char[2] == 0)
{
    global.heromakey[0] = (yy + 100)
    global.heromakey[1] = (yy + 180)
}
global.battlemsg[0] = gml_Script_stringsetloc("* It is known.", "scr_encountersetup_slash_scr_encountersetup_gml_34_0")
switch argument0
{
    case obj_sneo_friedpipis:
        break
    case obj_pipis_bullet_cone:
        global.monsterinstancetype[0] = obj_baseenemy
        global.monstertype[0] = 1
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 110)
        global.monsterinstancetype[1] = obj_baseenemy
        global.monstertype[1] = 1
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Test enemies showed up.", "scr_encountersetup_slash_scr_encountersetup_gml_60_0")
        break
    case obj_84_lang_helper:
        global.monsterinstancetype[0] = obj_lancerboss
        global.monstertype[0] = 2
        global.monstermakex[0] = (xx + 540)
        global.monstermakey[0] = (yy + 200)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        break
    case obj_pipisFireworkGenerator:
        global.monsterinstancetype[0] = obj_dummyenemy
        global.monstertype[0] = 3
        global.monstermakex[0] = (xx + 500)
        global.monstermakey[0] = (yy + 160)
        if instance_exists(obj_npc_room)
        {
            global.monstermakex[0] = obj_npc_room.xstart
            global.monstermakey[0] = obj_npc_room.ystart
        }
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        break
    case obj_afterimage_anim:
        global.monsterinstancetype[0] = obj_diamondenemy
        global.monstertype[0] = 5
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 140)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Rudinn drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_98_0")
        if (global.flag[500] >= 1)
            global.battlemsg[0] = gml_Script_stringsetloc("* A different Rudinn from last time drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_99_0")
        if (global.flag[500] == 2)
            global.battlemsg[0] = gml_Script_stringsetloc("* Assumedly another different Rudinn appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_100_0")
        break
    case obj_ch2_scene26_henshin_flash:
        global.monsterinstancetype[0] = obj_diamondenemy
        global.monstertype[0] = 5
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 110)
        global.monsterinstancetype[1] = obj_diamondenemy
        global.monstertype[1] = 5
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* A necklace of Rudinns blocks your path.", "scr_encountersetup_slash_scr_encountersetup_gml_116_0")
        break
    case obj_spamtonpainting:
        global.monsterinstancetype[0] = obj_diamondenemy
        global.monstertype[0] = 5
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 110)
        global.monsterinstancetype[1] = obj_heartenemy
        global.monstertype[1] = 6
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Rudinn and Hathy blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_132_0")
        break
    case obj_growtangle_spark:
        global.monsterinstancetype[0] = obj_smallcheckers_enemy
        global.monstertype[0] = 9
        global.monstermakex[0] = (xx + 440)
        global.monstermakey[0] = (yy + 150)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* C. Round attacked violently!&* (You recall Ralsei's advice to include Susie in an ACT.)", "scr_encountersetup_slash_scr_encountersetup_gml_144_0")
        break
    case obj_mettaton_bomb_hitbox:
        global.monsterinstancetype[0] = obj_clubsenemy
        global.monstertype[0] = 16
        global.monstermakex[0] = (xx + 400)
        global.monstermakey[0] = (yy + 120)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Clover grew close!", "scr_encountersetup_slash_scr_encountersetup_gml_155_0")
        break
    case obj_dw_city_mice3Fence:
        global.monsterinstancetype[0] = obj_heartenemy
        global.monstertype[0] = 6
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 20)
        global.monsterinstancetype[1] = obj_heartenemy
        global.monstertype[1] = 6
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 120)
        global.monsterinstancetype[2] = obj_heartenemy
        global.monstertype[2] = 6
        global.monstermakex[2] = (xx + 460)
        global.monstermakey[2] = (yy + 220)
        global.battlemsg[0] = gml_Script_stringsetloc("* Three Hathys blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_174_0")
        break
    case obj_magicalglass:
        global.monsterinstancetype[0] = obj_checkers_enemy
        global.monstertype[0] = 10
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 120)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Here it comes!", "scr_encountersetup_slash_scr_encountersetup_gml_188_0")
        break
    case obj_intro_ch2:
        global.monsterinstancetype[0] = obj_ponman_enemy
        global.monstertype[0] = 11
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 110)
        global.monsterinstancetype[1] = obj_ponman_enemy
        global.monstertype[1] = 11
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 200)
        global.battlemsg[0] = gml_Script_stringsetloc("* Ponman drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_201_0")
        global.monstertype[2] = 0
        break
    case obj_sneo_wireheart_old:
        global.monsterinstancetype[0] = obj_ponman_enemy
        global.monstertype[0] = 11
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 20)
        global.monsterinstancetype[1] = obj_ponman_enemy
        global.monstertype[1] = 11
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 120)
        global.monsterinstancetype[2] = obj_ponman_enemy
        global.monstertype[2] = 11
        global.monstermakex[2] = (xx + 460)
        global.monstermakey[2] = (yy + 220)
        global.battlemsg[0] = gml_Script_stringsetloc("* Ponman drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_222_0")
        break
    case obj_flowerking:
        global.monsterinstancetype[0] = obj_clubsenemy
        global.monstertype[0] = 7
        global.monstermakex[0] = (xx + 400)
        global.monstermakey[0] = (yy + 30)
        global.monsterinstancetype[1] = obj_heartenemy
        global.monstertype[1] = 6
        global.monstermakex[1] = (xx + 420)
        global.monstermakey[1] = (yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Clover and Hathy grew close!", "scr_encountersetup_slash_scr_encountersetup_gml_239_0")
        break
    case obj_sprite_hunter:
        global.monsterinstancetype[0] = obj_rabbick_enemy
        global.monstertype[0] = 13
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 140)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Rabbick slithered in the way!", "scr_encountersetup_slash_scr_encountersetup_gml_250_0")
        break
    case obj_mazepipis:
        global.monsterinstancetype[0] = obj_rabbick_enemy
        global.monstertype[0] = 13
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 60)
        global.monsterinstancetype[1] = obj_rabbick_enemy
        global.monstertype[1] = 13
        global.monstermakex[1] = (xx + 460)
        global.monstermakey[1] = (yy + 180)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Rabbicks slithered in the way!", "scr_encountersetup_slash_scr_encountersetup_gml_266_0")
        break
    case obj_sneo_wireheart_edit:
        global.monsterinstancetype[0] = obj_bloxer_enemy
        global.monstertype[0] = 14
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 140)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Bloxer assembled!", "scr_encountersetup_slash_scr_encountersetup_gml_277_0")
        break
    case obj_tutorial_puzboy:
        global.monsterinstancetype[0] = obj_bloxer_enemy
        global.monstertype[0] = 14
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 60)
        global.monsterinstancetype[1] = obj_bloxer_enemy
        global.monstertype[1] = 14
        global.monstermakex[1] = (xx + 460)
        global.monstermakey[1] = (yy + 180)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Bloxers assembled!", "scr_encountersetup_slash_scr_encountersetup_gml_293_0")
        break
    case obj_fountainkris_ch2_sideb:
        global.monsterinstancetype[0] = obj_lancerboss2
        global.monstertype[0] = 12
        global.heromakex[0] = (xx + 120)
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 160)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Lancer blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_308_0")
        break
    case obj_debug_ballooner:
        global.monsterinstancetype[0] = obj_jigsawryenemy
        global.monstertype[0] = 15
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 140)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Jigsawry drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_319_0")
        if (global.flag[500] >= 1)
            global.battlemsg[0] = gml_Script_stringsetloc("* A different Jigsawry from last time drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_320_0")
        if (global.flag[500] == 2)
            global.battlemsg[0] = gml_Script_stringsetloc("* Assumedly another different Jigsawry appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_321_0")
        break
    case obj_sneo_rotatingwall_pipis:
        global.monsterinstancetype[0] = obj_jigsawryenemy
        global.monstertype[0] = 15
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 20)
        global.monsterinstancetype[1] = obj_jigsawryenemy
        global.monstertype[1] = 15
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 120)
        global.monsterinstancetype[2] = obj_jigsawryenemy
        global.monstertype[2] = 15
        global.monstermakex[2] = (xx + 460)
        global.monstermakey[2] = (yy + 220)
        global.battlemsg[0] = gml_Script_stringsetloc("* A board of Jigsawrys blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_340_0")
        break
    case obj_tasque_manager_tempsave:
        global.monsterinstancetype[0] = obj_jigsawryenemy
        global.monstertype[0] = 15
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 20)
        global.monsterinstancetype[1] = obj_diamondenemy
        global.monstertype[1] = 5
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 120)
        global.monsterinstancetype[2] = obj_heartenemy
        global.monstertype[2] = 6
        global.monstermakex[2] = (xx + 460)
        global.monstermakey[2] = (yy + 220)
        global.battlemsg[0] = gml_Script_stringsetloc("* Smorgasboard.", "scr_encountersetup_slash_scr_encountersetup_gml_359_0")
        break
    case obj_tm_quiz_result:
        global.monsterinstancetype[0] = obj_rabbick_enemy
        global.monstertype[0] = 13
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 60)
        global.monsterinstancetype[1] = obj_diamondenemy
        global.monstertype[1] = 5
        global.monstermakex[1] = (xx + 460)
        global.monstermakey[1] = (yy + 180)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Rabbick slithered in the way!", "scr_encountersetup_slash_scr_encountersetup_gml_374_0")
        break
    case obj_power_up_fx_rouxls_backup:
        global.heromakex[0] = (xx + 80)
        global.heromakey[0] = (yy + 100)
        global.heromakex[1] = (xx + 90)
        global.heromakey[1] = (yy + 150)
        global.heromakex[2] = (xx + 100)
        global.heromakey[2] = (yy + 210)
        global.monsterinstancetype[0] = obj_joker
        global.monstertype[0] = 20
        global.monstermakex[0] = (xx + 500)
        global.monstermakey[0] = (yy + 160)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* LET THE GAMES BEGIN!", "scr_encountersetup_slash_scr_encountersetup_gml_400_0")
        break
    case obj_debug_drawInput:
        global.monsterinstancetype[0] = obj_checkers_enemy
        global.monstertype[0] = 21
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 120)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Here it comes^1. Again.", "scr_encountersetup_slash_scr_encountersetup_gml_413_0")
        global.heromakey[0] = (yy + 65)
        break
    case obj_sneo_weird_end_pipis_bullet:
        global.monsterinstancetype[0] = obj_rudinnranger
        global.monstertype[0] = 22
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 110)
        global.monsterinstancetype[1] = obj_rudinnranger
        global.monstertype[1] = 22
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Rudinn Rangers came sparkling into view!", "scr_encountersetup_slash_scr_encountersetup_gml_430_0")
        break
    case obj_debug_smallfacetester:
        global.monsterinstancetype[0] = obj_headhathy
        global.monstertype[0] = 23
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 110)
        global.monsterinstancetype[1] = obj_headhathy
        global.monstertype[1] = 23
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Head Hathy blocked the way quietly!", "scr_encountersetup_slash_scr_encountersetup_gml_446_0")
        break
    case obj_sneo_heart_biter_bullet:
        global.monsterinstancetype[0] = obj_headhathy
        global.monstertype[0] = 23
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 20)
        global.monsterinstancetype[1] = obj_headhathy
        global.monstertype[1] = 23
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 120)
        global.monsterinstancetype[2] = obj_headhathy
        global.monstertype[2] = 23
        global.monstermakex[2] = (xx + 460)
        global.monstermakey[2] = (yy + 220)
        global.battlemsg[0] = gml_Script_stringsetloc("* Head Hathy blocked the way quietly! (x3)", "scr_encountersetup_slash_scr_encountersetup_gml_465_0")
        break
    case obj_sneo_weird_end_pipis:
        global.monsterinstancetype[0] = obj_susieenemy
        global.monstertype[0] = 19
        global.monstermakex[0] = (xx + 520)
        global.monstermakey[0] = (yy + 80)
        global.monsterinstancetype[1] = obj_lancerboss3
        global.monstertype[1] = 18
        global.monstermakex[1] = (xx + 540)
        global.monstermakey[1] = (yy + 240)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Two bad guys blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_479_0")
        break
    case obj_CHAPTER_SELECT:
        global.monsterinstancetype[0] = obj_rabbick_enemy
        global.monstertype[0] = 13
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 20)
        global.monsterinstancetype[1] = obj_rabbick_enemy
        global.monstertype[1] = 13
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 120)
        global.monsterinstancetype[2] = obj_rabbick_enemy
        global.monstertype[2] = 13
        global.monstermakex[2] = (xx + 460)
        global.monstermakey[2] = (yy + 220)
        global.battlemsg[0] = gml_Script_stringsetloc("* Rabbicks slithered in the way!", "scr_encountersetup_slash_scr_encountersetup_gml_500_0")
        break
    case obj_viroarrow:
        global.monsterinstancetype[0] = obj_diamondenemy
        global.monstertype[0] = 5
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 20)
        global.monsterinstancetype[1] = obj_heartenemy
        global.monstertype[1] = 6
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 120)
        global.monsterinstancetype[2] = obj_diamondenemy
        global.monstertype[2] = 5
        global.monstermakex[2] = (xx + 460)
        global.monstermakey[2] = (yy + 220)
        global.battlemsg[0] = gml_Script_stringsetloc("* Various guys appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_521_0")
        break
    case obj_power_up_fx_rouxls:
        global.monsterinstancetype[0] = obj_king_boss
        global.monstertype[0] = 25
        global.monstermakex[0] = (xx + 460)
        global.monstermakey[0] = (yy + 70)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* King blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_533_0")
        break
    case obj_sneo_wall_controller_new:
        global.monsterinstancetype[0] = obj_omawaroid_enemy
        global.monstertype[0] = 30
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 110)
        global.monsterinstancetype[1] = obj_omawaroid_enemy
        global.monstertype[1] = 30
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 200)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Ambyu-Lances beeped towards you!", "scr_encountersetup_slash_scr_encountersetup_gml_554_0")
        if (global.chapter == 2)
        {
            if (null.room == room_dw_city_postbaseball_1)
                global.battlemsg[0] = gml_Script_stringsetloc("* Hey Kris^1, lemme show you my ultimate healing!", "scr_encountersetup_slash_scr_encountersetup_gml_559_0")
        }
        break
    case obj_ch2_fountain_sideb:
        global.monsterinstancetype[0] = obj_poppup_enemy
        global.monstertype[0] = 31
        global.monstermakex[0] = (xx + 440)
        global.monstermakey[0] = (yy + 50)
        global.monsterinstancetype[1] = obj_poppup_enemy
        global.monstertype[1] = 31
        global.monstermakex[1] = (xx + 490)
        global.monstermakey[1] = (yy + 120)
        global.monstertype[2] = 0
        global.monstermakex[2] = (xx + 440)
        global.monstermakey[2] = (yy + 190)
        global.battlemsg[0] = gml_Script_stringsetloc("* Poppups popped up!", "scr_encountersetup_slash_scr_encountersetup_gml_568_0")
        break
    case obj_cyber_hole_lights:
        global.monsterinstancetype[0] = obj_tasque_enemy
        global.monstertype[0] = 32
        global.monstermakex[0] = (xx + 440)
        global.monstermakey[0] = (yy + 50)
        global.monsterinstancetype[1] = obj_tasque_enemy
        global.monstertype[1] = 32
        global.monstermakex[1] = (xx + 480)
        global.monstermakey[1] = (yy + 160)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Tasques crossed your path!", "scr_encountersetup_slash_scr_encountersetup_gml_585_0")
        break
    case obj_queen_vector_explosion:
        global.monsterinstancetype[0] = obj_werewire_enemy
        global.monstertype[0] = 33
        global.monstermakex[0] = (xx + 490)
        global.monstermakey[0] = (yy + 60)
        global.monsterinstancetype[1] = obj_werewire_enemy
        global.monstertype[1] = 33
        global.monstermakex[1] = (xx + 520)
        global.monstermakey[1] = (yy + 190)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Werewires swung in!", "scr_encountersetup_slash_scr_encountersetup_gml_603_0")
        break
    case obj_battle_cleanup:
        global.monsterinstancetype[0] = obj_maus_enemy
        global.monstertype[0] = 34
        global.monstermakex[0] = (xx + 478)
        global.monstermakey[0] = (yy + 98)
        global.monsterinstancetype[1] = obj_maus_enemy
        global.monstertype[1] = 34
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 202)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Maice blocked the way! ", "scr_encountersetup_slash_scr_encountersetup_gml_620_0")
        break
    case obj_tutorial_graze:
        global.monsterinstancetype[0] = obj_virovirokun_enemy
        global.monstertype[0] = 35
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 40)
        global.monsterinstancetype[1] = obj_virovirokun_enemy
        global.monstertype[1] = 35
        global.monstermakex[1] = (xx + 510)
        global.monstermakey[1] = (yy + 154)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun floated in!", "scr_encountersetup_slash_scr_encountersetup_gml_637_0")
        if (global.ambush == 2)
            global.battlemsg[0] = gml_Script_stringsetloc("* First strike!", "scr_encountersetup_slash_scr_encountersetup_gml_640_0")
        break
    case obj_choicer_old:
        global.flag[426] = choose(0, 1, 2, 3)
        if (global.flag[541] == 0)
            global.flag[426] = -1
        global.monsterinstancetype[0] = obj_swatchling_enemy
        global.monstertype[0] = 36
        global.monstermakex[0] = (xx + 394)
        global.monstermakey[0] = (yy + 7)
        global.monsterinstancetype[1] = obj_swatchling_enemy
        global.monstertype[1] = 36
        global.monstermakex[1] = (xx + 490)
        global.monstermakey[1] = (yy + 74)
        global.monsterinstancetype[2] = obj_swatchling_enemy
        global.monstertype[2] = 36
        global.monstermakex[2] = (xx + 394)
        global.monstermakey[2] = (yy + 180)
        global.battlemsg[0] = gml_Script_stringsetloc("* Swatchlings bowed in!", "scr_encountersetup_slash_scr_encountersetup_gml_661_0")
        break
    case obj_choicer_neo:
        global.monsterinstancetype[0] = obj_tasque_enemy
        global.monstertype[0] = 32
        global.monstermakex[0] = (xx + 450)
        global.monstermakey[0] = (yy + 35)
        global.monsterinstancetype[1] = obj_tasque_manager_enemy
        global.monstertype[1] = 42
        global.monstermakex[1] = (xx + 486)
        global.monstermakey[1] = (yy + 95)
        global.monsterinstancetype[2] = obj_tasque_enemy
        global.monstertype[2] = 32
        global.monstermakex[2] = (xx + 450)
        global.monstermakey[2] = (yy + 220)
        global.battlemsg[0] = gml_Script_stringsetloc("* Tasque Manager blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_681_0")
        break
    case obj_face_parent:
        global.monsterinstancetype[0] = obj_berdlyb_enemy
        global.monstertype[0] = 43
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 100)
        global.monsterinstancetype[1] = obj_sneo_friedpipis
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Berdly rides in!", "scr_encountersetup_slash_scr_encountersetup_gml_695_0")
        break
    case obj_face:
        global.monsterinstancetype[0] = obj_queen_enemy
        global.monstertype[0] = 48
        if (gml_Script_scr_sideb_get_phase() < 2)
        {
            global.monstermakex[0] = (xx + 470)
            global.monstermakey[0] = (yy + 120)
        }
        else
        {
            global.monstermakex[0] = (xx + 450)
            global.monstermakey[0] = (yy + 98)
        }
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Queen blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_708_0")
        break
    case obj_smallface:
        global.monsterinstancetype[0] = obj_spamton_enemy
        global.monstertype[0] = 49
        global.monstermakex[0] = (xx + 490)
        global.monstermakey[0] = (yy + 180)
        global.heromakex[0] = (xx + 90)
        global.heromakey[0] = (yy + 170)
        global.battlemsg[0] = gml_Script_stringsetloc("* DON'T YOU WANNA BE A BIG SHOT?", "scr_encountersetup_slash_scr_encountersetup_gml_720_0")
        break
    case obj_dialoguer:
        global.monsterinstancetype[0] = obj_spamton_neo_enemy
        global.monstertype[0] = 50
        global.monstermakex[0] = (xx + 460)
        global.monstermakey[0] = (yy + 80)
        global.monstertype[2] = 0
        global.heromakex[0] = (xx + 80)
        global.heromakey[0] = (yy + 60)
        if (gml_Script_scr_sideb_get_phase() > 2)
            global.heromakey[0] = (yy + 173)
        global.battlemsg[0] = gml_Script_stringsetloc("* It's time to be a BIG SHOT!", "scr_encountersetup_slash_scr_encountersetup_gml_732_0")
        break
    case obj_writer:
        global.monsterinstancetype[0] = obj_sweet_enemy
        global.monstertype[0] = 39
        global.monstermakex[0] = (xx + 460)
        global.monstermakey[0] = (yy + 40)
        global.monsterinstancetype[1] = obj_kk_enemy
        global.monstertype[1] = 38
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 90)
        global.monsterinstancetype[2] = obj_hatguy_enemy
        global.monstertype[2] = 37
        global.monstermakex[2] = (xx + 480)
        global.monstermakey[2] = (yy + 200)
        global.battlemsg[0] = gml_Script_stringsetloc("* Sweet Cap'n Cakes block your way!", "scr_encountersetup_slash_scr_encountersetup_gml_752_0")
        break
    case obj_darkdoor:
        if gml_Script_i_ex(967)
        {
            with (obj_ch2_scene21_loop)
            {
                global.heromakex[0] = kr_actor.x
                global.heromakey[0] = kr_actor.y
                global.heromakex[1] = ra_actor.x
                global.heromakey[1] = ra_actor.y
            }
        }
        global.monsterinstancetype[0] = obj_rouxls_enemy
        global.monstertype[0] = 45
        global.monstermakex[0] = (xx + 500)
        global.monstermakey[0] = (yy + 60)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Thrash Machine reluctantly fights you!", "scr_encountersetup_slash_scr_encountersetup_gml_776_0")
        break
    case obj_classscene:
        global.flag[426] = choose(4, 5, 6, 7, 8)
        global.monsterinstancetype[0] = obj_swatchling_enemy
        global.monstertype[0] = 36
        global.monstermakex[0] = (xx + 432)
        global.monstermakey[0] = (yy + 24)
        global.monsterinstancetype[1] = obj_swatchling_enemy
        global.monstertype[1] = 36
        global.monstermakex[1] = (xx + 488)
        global.monstermakey[1] = (yy + 142)
        global.battlemsg[0] = gml_Script_stringsetloc("* Swatchlings bowed in!", "scr_encountersetup_slash_scr_encountersetup_gml_791_0")
        break
    case obj_schooldesk:
        global.monsterinstancetype[0] = obj_werewerewire_enemy
        global.monstertype[0] = 40
        global.monstermakex[0] = (xx + 502)
        global.monstermakey[0] = (yy + 70)
        global.monsterinstancetype[1] = obj_werewerewire_enemy
        global.monstertype[1] = 40
        global.monstermakex[1] = (xx + 456)
        global.monstermakey[1] = (yy + 190)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Werewerewire strongly blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_808_0")
        break
    case obj_solidblock:
        global.monsterinstancetype[0] = obj_maus_enemy
        global.monstertype[0] = 34
        global.monstermakex[0] = (xx + 500)
        global.monstermakey[0] = (yy + 172)
        global.battlemsg[0] = gml_Script_stringsetloc("* Maus blocked the way! ", "scr_encountersetup_slash_scr_encountersetup_gml_817_0")
        break
    case obj_interactablesolid:
        global.monsterinstancetype[0] = obj_virovirokun_enemy
        global.monstertype[0] = 35
        global.monstermakex[0] = (xx + 494)
        global.monstermakey[0] = (yy + 110)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* H-huh!? What's going on!?", "scr_encountersetup_slash_scr_encountersetup_gml_831_0")
        break
    case obj_tem_school:
        global.monsterinstancetype[0] = obj_virovirokun_enemy
        global.monstertype[0] = 35
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 40)
        global.monsterinstancetype[1] = obj_omawaroid_enemy
        global.monstertype[1] = 30
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 160)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun and Ambyu-lance are fighting each other!", "scr_encountersetup_slash_scr_encountersetup_gml_848_0")
        break
    case obj_torielclass_event:
        global.monsterinstancetype[0] = obj_omawaroid_enemy
        global.monstertype[0] = 30
        global.monstermakex[0] = (xx + 500)
        global.monstermakey[0] = (yy + 40)
        global.monsterinstancetype[1] = obj_virovirokun_enemy
        global.monstertype[1] = 35
        global.monstermakex[1] = (xx + 480)
        global.monstermakey[1] = (yy + 160)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun and Ambyu-lance are fighting each other!", "scr_encountersetup_slash_scr_encountersetup_gml_865_0")
        break
    case obj_unusedclassevent:
        global.monsterinstancetype[0] = obj_poppup_enemy
        global.monstertype[0] = 31
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 150)
        global.monsterinstancetype[1] = obj_tasque_enemy
        global.monstertype[1] = 32
        global.monstermakex[1] = (xx + 480)
        global.monstermakey[1] = (yy + 170)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Animal house.", "scr_encountersetup_slash_scr_encountersetup_gml_882_0")
        break
    case obj_alphysdesk:
        global.heromakex[0] = (xx + 94)
        global.heromakey[0] = (yy + 50)
        global.heromakex[1] = (xx + 80)
        global.heromakey[1] = (yy + 122)
        global.heromakex[2] = (xx + 72)
        global.heromakey[2] = (yy + 200)
        global.monsterinstancetype[0] = obj_clubsenemy
        global.monstertype[0] = 47
        global.monstermakex[0] = (xx + 400)
        global.monstermakey[0] = (yy + 80)
        global.battlemsg[0] = gml_Script_stringsetloc("* Clover joins the stage!", "scr_encountersetup_slash_scr_encountersetup_gml_892_0")
        break
    case obj_kris_headobj:
        global.heromakex[0] = (xx + 94)
        global.heromakey[0] = (yy + 50)
        global.heromakex[1] = (xx + 80)
        global.heromakey[1] = (yy + 122)
        global.heromakex[2] = (xx + 72)
        global.heromakey[2] = (yy + 200)
        global.monsterinstancetype[0] = obj_dojograzeenemy
        global.monstertype[0] = 42
        global.monstermakex[0] = (xx + 440)
        global.monstermakey[0] = (yy + 100)
        global.battlemsg[0] = gml_Script_stringsetloc("* It's a grazing adventure.", "scr_encountersetup_slash_scr_encountersetup_gml_901_0")
        break
    case obj_kris_putonheadobj:
        global.monsterinstancetype[0] = obj_virovirokun_enemy
        global.monstertype[0] = 35
        global.monstermakex[0] = (xx + 494)
        global.monstermakey[0] = (yy + 110)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("\\EE* H-huh!? What's going on!?&* What are we doing!?", "scr_encountersetup_slash_scr_encountersetup_gml_915_0")
        break
    case obj_rudy:
        global.monsterinstancetype[0] = obj_werewire_enemy
        global.monstertype[0] = 33
        global.monstermakex[0] = (xx + 494)
        global.monstermakey[0] = (yy + 64)
        global.monsterinstancetype[1] = obj_tasque_enemy
        global.monstertype[1] = 32
        global.monstermakex[1] = (xx + 430)
        global.monstermakey[1] = (yy + 130)
        global.monsterinstancetype[2] = obj_virovirokun_enemy
        global.monstertype[2] = 35
        global.monstermakex[2] = (xx + 495)
        global.monstermakey[2] = (yy + 204)
        global.battlemsg[0] = gml_Script_stringsetloc("* Smorgasbord 2.", "scr_encountersetup_slash_scr_encountersetup_gml_935_0")
        break
    case obj_church_event:
        global.monsterinstancetype[0] = obj_werewire_enemy
        global.monstertype[0] = 33
        global.monstermakex[0] = (xx + 540)
        global.monstermakey[0] = (yy + 85)
        global.monsterinstancetype[1] = obj_werewire_enemy
        global.monstertype[1] = 33
        global.monstermakex[1] = (xx + 435)
        global.monstermakey[1] = (yy + 144)
        global.monsterinstancetype[2] = obj_werewire_enemy
        global.monstertype[2] = 33
        global.monstermakex[2] = (xx + 522)
        global.monstermakey[2] = (yy + 214)
        global.battlemsg[0] = gml_Script_stringsetloc("* Werewires swung in!", "scr_encountersetup_slash_scr_encountersetup_gml_955_0")
        break
    case obj_town_shelter_event:
        global.monsterinstancetype[0] = obj_werewire_enemy
        global.monstertype[0] = 33
        global.monstermakex[0] = (xx + 500)
        global.monstermakey[0] = (yy + 62)
        global.monsterinstancetype[1] = obj_werewire_enemy
        global.monstertype[1] = 33
        global.monstermakex[1] = (xx + 434)
        global.monstermakey[1] = (yy + 126)
        global.monsterinstancetype[2] = obj_maus_enemy
        global.monstertype[2] = 34
        global.monstermakex[2] = (xx + 530)
        global.monstermakey[2] = (yy + 236)
        global.battlemsg[0] = gml_Script_stringsetloc("* Werewire and Maus swung down like stringed superheroes!", "scr_encountersetup_slash_scr_encountersetup_gml_975_0")
        break
    case obj_town_event:
        global.monsterinstancetype[0] = obj_poppup_enemy
        global.monstertype[0] = 31
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 150)
        global.monsterinstancetype[1] = obj_omawaroid_enemy
        global.monstertype[1] = 30
        global.monstermakex[1] = (xx + 480)
        global.monstermakey[1] = (yy + 170)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Ambyu-Lance and its pet appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_992_0")
        break
    case obj_flowershop_event:
        global.flag[426] = choose(4, 5, 6, 7, 8)
        global.monsterinstancetype[0] = obj_swatchling_enemy
        global.monstertype[0] = 36
        global.monstermakex[0] = (xx + 390)
        global.monstermakey[0] = (yy + 18)
        global.monsterinstancetype[1] = obj_swatchling_enemy
        global.monstertype[1] = 36
        global.monstermakex[1] = (xx + 394)
        global.monstermakey[1] = (yy + 180)
        global.monsterinstancetype[0] = obj_poppup_enemy
        global.monstertype[2] = 31
        global.monstermakex[2] = (xx + 460)
        global.monstermakey[2] = (yy + 240)
        global.battlemsg[0] = gml_Script_stringsetloc("* Poppup and caretakers appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_1012_0")
        break
    case obj_onionbody:
        global.monsterinstancetype[0] = obj_maus_enemy
        global.monstertype[0] = 34
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 70)
        global.monsterinstancetype[1] = obj_maus_enemy
        global.monstertype[1] = 34
        global.monstermakex[1] = (xx + 530)
        global.monstermakey[1] = (yy + 142)
        global.monsterinstancetype[2] = obj_maus_enemy
        global.monstertype[2] = 34
        global.monstermakex[2] = (xx + 468)
        global.monstermakey[2] = (yy + 214)
        global.battlemsg[0] = gml_Script_stringsetloc("* Maice blocked the way!", "scr_encountersetup_slash_scr_encountersetup_gml_1032_0")
        break
    case obj_mainchara:
        global.flag[426] = choose(4, 5, 6, 7, 8)
        global.monsterinstancetype[0] = obj_swatchling_enemy
        global.monstertype[0] = 36
        global.monstermakex[0] = (xx + 410)
        global.monstermakey[0] = (yy + 18)
        global.monsterinstancetype[1] = obj_swatchling_enemy
        global.monstertype[1] = 36
        global.monstermakex[1] = (xx + 482)
        global.monstermakey[1] = (yy + 100)
        global.monsterinstancetype[2] = obj_maus_enemy
        global.monstertype[2] = 34
        global.monstermakex[2] = (xx + 466)
        global.monstermakey[2] = (yy + 240)
        global.battlemsg[0] = gml_Script_stringsetloc("* Swatchling and vermin appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_1052_0")
        break
    case obj_onion_event:
        global.monsterinstancetype[0] = obj_werewerewire_enemy
        global.monstertype[0] = 40
        global.monstermakex[0] = (xx + 482)
        global.monstermakey[0] = (yy + 164)
        global.monsterinstancetype[1] = obj_sneo_friedpipis
        global.monsterinstancetype[2] = obj_sneo_friedpipis
        global.battlemsg[0] = gml_Script_stringsetloc("* Werewerewire strongly blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_1066_0")
        break
    case obj_hallway_mirror:
        global.monsterinstancetype[0] = obj_berdlyb2_enemy
        global.monstertype[0] = 46
        global.monstermakex[0] = (xx + 470)
        global.monstermakey[0] = (yy + 144)
        global.monstertype[1] = 0
        global.monstermakex[1] = (xx + 540)
        global.monstermakey[1] = (yy + 84)
        global.monstertype[2] = 0
        global.monstermakex[2] = (xx + 522)
        global.monstermakey[2] = (yy + 214)
        global.battlemsg[0] = gml_Script_stringsetloc("* Berdly blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_1076_0")
        break
    case obj_krisroom:
        global.monsterinstancetype[0] = obj_mauswheel_enemy
        global.monstertype[0] = 44
        global.monstermakex[0] = (xx + 450)
        global.monstermakey[0] = (yy + 100)
        global.monsterinstancetype[1] = obj_sneo_friedpipis
        global.monsterinstancetype[2] = obj_sneo_friedpipis
        global.battlemsg[0] = gml_Script_stringsetloc("* Mauswheel spins into you!", "scr_encountersetup_slash_scr_encountersetup_gml_1090_0")
        break
    case obj_npc_hammerguy:
        global.monsterinstancetype[0] = obj_gigaqueen_enemy
        global.monstertype[0] = 51
        global.monstermakex[0] = (xx + 150)
        global.monstermakey[0] = (yy + 0)
        global.monsterinstancetype[1] = obj_sneo_friedpipis
        global.monsterinstancetype[2] = obj_sneo_friedpipis
        global.battlemsg[0] = gml_Script_stringsetloc("* GIGA Queen blocks the way!", "scr_encountersetup_slash_scr_encountersetup_gml_1104_0")
        break
    case obj_shortcut_door:
        global.monsterinstancetype[0] = obj_omawaroid_enemy
        global.monstertype[0] = 30
        global.monstermakex[0] = (xx + 500)
        global.monstermakey[0] = (yy + 42)
        global.monsterinstancetype[1] = obj_omawaroid_enemy
        global.monstertype[1] = 30
        global.monstermakex[1] = (xx + 422)
        global.monstermakey[1] = (yy + 134)
        global.monsterinstancetype[2] = obj_omawaroid_enemy
        global.monstertype[2] = 30
        global.monstermakex[2] = (xx + 500)
        global.monstermakey[2] = (yy + 200)
        global.battlemsg[0] = gml_Script_stringsetloc("* Ambyu-Lances beeped towards you!", "scr_encountersetup_slash_scr_encountersetup_gml_551_0")
        break
    case obj_npc_puzzlemaster1:
        global.monsterinstancetype[0] = obj_virovirokun_enemy
        global.monstertype[0] = 35
        global.monstermakex[0] = (xx + 412)
        global.monstermakey[0] = (yy + 24)
        global.monsterinstancetype[1] = obj_tasque_enemy
        global.monstertype[1] = 32
        global.monstermakex[1] = (xx + 482)
        global.monstermakey[1] = (yy + 126)
        global.monsterinstancetype[2] = obj_virovirokun_enemy
        global.monstertype[2] = 35
        global.monstermakex[2] = (xx + 412)
        global.monstermakey[2] = (yy + 184)
        global.battlemsg[0] = gml_Script_stringsetloc("* Tasque and Co. drew near!", "scr_encountersetup_slash_scr_encountersetup_gml_1156_0")
        break
    case obj_npc_puzzlemaster2:
        global.monsterinstancetype[0] = obj_tasque_enemy
        global.monstertype[0] = 32
        global.monstermakex[0] = (xx + 412)
        global.monstermakey[0] = (yy + 24)
        global.monsterinstancetype[1] = obj_tasque_enemy
        global.monstertype[1] = 32
        global.monstermakex[1] = (xx + 474)
        global.monstermakey[1] = (yy + 114)
        global.monsterinstancetype[2] = obj_tasque_enemy
        global.monstertype[2] = 32
        global.monstermakex[2] = (xx + 412)
        global.monstermakey[2] = (yy + 184)
        global.battlemsg[0] = gml_Script_stringsetloc("* Tasques zoomed towards you!", "scr_encountersetup_slash_scr_encountersetup_gml_1175_0")
        break
    case obj_npc_susiedark:
        global.monsterinstancetype[0] = obj_poppup_enemy
        global.monstertype[0] = 31
        global.monstermakex[0] = (xx + 434)
        global.monstermakey[0] = (yy + 36)
        global.monsterinstancetype[1] = obj_virovirokun_enemy
        global.monstertype[1] = 35
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 100)
        global.monstertype[2] = 0
        global.monstermakex[2] = (xx + 440)
        global.monstermakey[2] = (yy + 190)
        global.battlemsg[0] = gml_Script_stringsetloc("* Poppup and Virovirokun Appeared!", "scr_encountersetup_slash_scr_encountersetup_gml_1233_0")
        break
    case obj_darklanding:
        global.heromakex[0] = (xx + 94)
        global.heromakey[0] = (yy + 50)
        global.heromakex[1] = (xx + 80)
        global.heromakey[1] = (yy + 122)
        global.heromakex[2] = (xx + 72)
        global.heromakey[2] = (yy + 200)
        global.monsterinstancetype[0] = obj_tasque_manager_enemy
        global.monstertype[0] = 42
        global.monstermakex[0] = (xx + 487)
        global.monstermakey[0] = (yy + 94)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Graze!", "scr_encountersetup_slash_scr_encountersetup_gml_1247_0")
        break
    case obj_lancerslideevent:
        global.heromakex[0] = (xx + 94)
        global.heromakey[0] = (yy + 50)
        global.heromakex[1] = (xx + 80)
        global.heromakey[1] = (yy + 122)
        global.heromakex[2] = (xx + 72)
        global.heromakey[2] = (yy + 200)
        global.monsterinstancetype[0] = obj_werewire_enemy
        global.monstertype[0] = 33
        global.monstermakex[0] = (xx + 476)
        global.monstermakey[0] = (yy + 70)
        global.monsterinstancetype[1] = obj_werewire_enemy
        global.monstertype[1] = 33
        global.monstermakex[1] = (xx + 454)
        global.monstermakey[1] = (yy + 168)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Round One!", "scr_encountersetup_slash_scr_encountersetup_gml_1263_0")
        break
    case obj_lancerchaseevent:
        global.heromakex[0] = (xx + 94)
        global.heromakey[0] = (yy + 50)
        global.heromakex[1] = (xx + 80)
        global.heromakey[1] = (yy + 122)
        global.heromakex[2] = (xx + 72)
        global.heromakey[2] = (yy + 200)
        global.monsterinstancetype[0] = obj_poppup_enemy
        global.monstertype[0] = 31
        global.monstermakex[0] = (xx + 412)
        global.monstermakey[0] = (yy + 40)
        global.monsterinstancetype[1] = obj_omawaroid_enemy
        global.monstertype[1] = 30
        global.monstermakex[1] = (xx + 466)
        global.monstermakey[1] = (yy + 106)
        global.monsterinstancetype[2] = obj_virovirokun_enemy
        global.monstertype[2] = 35
        global.monstermakex[2] = (xx + 412)
        global.monstermakey[2] = (yy + 184)
        global.battlemsg[0] = gml_Script_stringsetloc("* Round Two!", "scr_encountersetup_slash_scr_encountersetup_gml_1282_0")
        break
    case obj_darkslide:
        global.heromakex[0] = (xx + 94)
        global.heromakey[0] = (yy + 50)
        global.heromakex[1] = (xx + 80)
        global.heromakey[1] = (yy + 122)
        global.heromakex[2] = (xx + 72)
        global.heromakey[2] = (yy + 200)
        global.monsterinstancetype[0] = obj_tasque_enemy
        global.monstertype[0] = 32
        global.monstermakex[0] = (xx + 432)
        global.monstermakey[0] = (yy + 52)
        global.monsterinstancetype[1] = obj_tasque_enemy
        global.monstertype[1] = 32
        global.monstermakex[1] = (xx + 476)
        global.monstermakey[1] = (yy + 140)
        global.monsterinstancetype[2] = obj_maus_enemy
        global.monstertype[2] = 34
        global.monstermakex[2] = (xx + 512)
        global.monstermakey[2] = (yy + 236)
        global.battlemsg[0] = gml_Script_stringsetloc("* Round Three!", "scr_encountersetup_slash_scr_encountersetup_gml_1301_0")
        break
    case obj_darkslide_new:
        global.flag[426] = choose(0, 1, 2, 3)
        global.heromakex[0] = (xx + 94)
        global.heromakey[0] = (yy + 50)
        global.heromakex[1] = (xx + 80)
        global.heromakey[1] = (yy + 122)
        global.heromakex[2] = (xx + 72)
        global.heromakey[2] = (yy + 200)
        global.monsterinstancetype[0] = obj_swatchling_enemy
        global.monstertype[0] = 36
        global.monstermakex[0] = (xx + 394)
        global.monstermakey[0] = (yy + 8)
        global.monsterinstancetype[1] = obj_swatchling_enemy
        global.monstertype[1] = 36
        global.monstermakex[1] = (xx + 490)
        global.monstermakey[1] = (yy + 74)
        global.monsterinstancetype[2] = obj_swatchling_enemy
        global.monstertype[2] = 36
        global.monstermakex[2] = (xx + 394)
        global.monstermakey[2] = (yy + 160)
        global.battlemsg[0] = gml_Script_stringsetloc("* Round Four!", "scr_encountersetup_slash_scr_encountersetup_gml_1323_0")
        break
    case obj_rurus_appear:
        global.heromakex[0] = (xx + 94)
        global.heromakey[0] = (yy + 50)
        global.heromakex[1] = (xx + 80)
        global.heromakey[1] = (yy + 122)
        global.heromakex[2] = (xx + 72)
        global.heromakey[2] = (yy + 200)
        global.monsterinstancetype[0] = obj_werewerewire_enemy
        global.monstertype[0] = 40
        global.monstermakex[0] = (xx + 464)
        global.monstermakey[0] = (yy + 68)
        global.monsterinstancetype[1] = obj_werewerewire_enemy
        global.monstertype[1] = 40
        global.monstermakex[1] = (xx + 494)
        global.monstermakey[1] = (yy + 184)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Final Round!", "scr_encountersetup_slash_scr_encountersetup_gml_1339_0")
        break
    case obj_pushtile_room:
        global.monsterinstancetype[0] = obj_werewire_enemy
        global.monstertype[0] = 33
        global.monstermakex[0] = (xx + 502)
        global.monstermakey[0] = (yy + 144)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Werewire appeared.", "scr_encountersetup_slash_scr_encountersetup_gml_1351_0")
        break
    case obj_npc_king:
        global.monsterinstancetype[0] = obj_virovirokun_enemy
        global.monstertype[0] = 35
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 120)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Virovirokun floated in!", "scr_encountersetup_slash_scr_encountersetup_gml_637_0")
        break
    case obj_npc_mansion_room:
        global.monsterinstancetype[0] = obj_omawaroid_enemy
        global.monstertype[0] = 30
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 114)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Ambyu-Lance beeps towards you!", "scr_encountersetup_slash_scr_encountersetup_gml_1377_0")
        break
    case obj_npc_police:
        global.monsterinstancetype[0] = obj_tasque_enemy
        global.monstertype[0] = 32
        global.monstermakex[0] = (xx + 494)
        global.monstermakey[0] = (yy + 144)
        global.monstertype[1] = 0
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Tasque crossed your path!", "scr_encountersetup_slash_scr_encountersetup_gml_1390_0")
        break
    case obj_npc_conbini:
        global.monsterinstancetype[0] = obj_baseenemy
        global.monstertype[0] = 1
        global.monstermakex[0] = (xx + 480)
        global.monstermakey[0] = (yy + 80)
        global.monsterinstancetype[1] = obj_baseenemy
        global.monstertype[1] = 1
        global.monstermakex[1] = (xx + 500)
        global.monstermakey[1] = (yy + 160)
        global.monsterinstancetype[2] = obj_baseenemy
        global.monstertype[2] = 1
        global.monstermakex[2] = (xx + 520)
        global.monstermakey[2] = (yy + 240)
        global.monstertype[2] = 0
        global.battlemsg[0] = gml_Script_stringsetloc("* Test enemies showed up.", "scr_encountersetup_slash_scr_encountersetup_gml_60_0")
        break
    case obj_npc_rudy:
        global.heromakex[0] = (xx + 94)
        global.heromakey[0] = (yy + 50)
        global.heromakex[1] = (xx + 80)
        global.heromakey[1] = (yy + 122)
        global.heromakex[2] = (xx + 72)
        global.heromakey[2] = (yy + 200)
        global.monsterinstancetype[0] = obj_dojo_spareenemy
        global.monstertype[0] = 52
        global.monstermakex[0] = (xx + 440)
        global.monstermakey[0] = (yy + 100)
        global.battlemsg[0] = gml_Script_stringsetloc("* Jigsaw Joe jigs in!", "scr_encountersetup_slash_scr_encountersetup_gml_1422_0")
        break
    case obj_npc_room:
        global.monsterinstancetype[0] = obj_poppup_enemy
        global.monstertype[0] = 31
        global.monstermakex[0] = (xx + 440)
        global.monstermakey[0] = (yy + 50)
        global.monsterinstancetype[1] = obj_maus_enemy
        global.monstertype[1] = 34
        global.monstermakex[1] = (xx + 490)
        global.monstermakey[1] = (yy + 166)
        global.monstertype[2] = 0
        global.monstermakex[2] = (xx + 440)
        global.monstermakey[2] = (yy + 206)
        global.battlemsg[0] = gml_Script_stringsetloc("* Poppup and Maus appeared.", "scr_encountersetup_slash_scr_encountersetup_gml_1441_0")
        break
    case obj_npc_catti:
        global.monsterinstancetype[0] = obj_pipis_enemy
        global.monstertype[0] = 53
        global.monstermakex[0] = (xx + 530)
        global.monstermakey[0] = (yy + 100)
        global.monsterinstancetype[1] = obj_pipis_enemy
        global.monstertype[1] = 53
        global.monstermakex[1] = (xx + 448)
        global.monstermakey[1] = (yy + 168)
        global.monsterinstancetype[2] = obj_pipis_enemy
        global.monstertype[2] = 53
        global.monstermakex[2] = (xx + 510)
        global.monstermakey[2] = (yy + 250)
        global.battlemsg[0] = gml_Script_stringsetloc("* Pipis.", "scr_encountersetup_slash_scr_encountersetup_gml_1462_0")
        break
    case obj_bg_attack:
        global.monsterinstancetype[0] = obj_bullettester_enemy
        global.monsterinstancetype[1] = obj_bullettester_enemy
        global.monsterinstancetype[2] = obj_bullettester_enemy
        global.monstertype[0] = 1
        global.monstertype[1] = 1
        global.monstertype[2] = 1
        global.battlemsg[0] = gml_Script_stringsetloc(" ", "scr_encountersetup_slash_scr_encountersetup_gml_1114_0")
        break
    default:

}

return;
