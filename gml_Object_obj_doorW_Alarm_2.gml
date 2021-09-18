global.entrance = 23
gml_Script_instance_create(0, 0, obj_persistentfadein)
7
if (room == room_hospital_lobby)
    38
if (room == room_alphysalley)
    36
if (room == room_town_north)
    35
if (room == room_beach)
    34
if (room == room_town_mid)
{
    if (x > 290 && x < 370)
    {
        global.entrance = 20
        57
    }
    if (x > 1730 && x < 1840)
    {
        global.entrance = 23
        52
    }
}
if (room == room_lw_icee_pizza)
{
    global.entrance = 20
    36
}
if (room == room_town_south)
{
    if (x > 230 && x < 280)
    {
        global.entrance = 22
        55
    }
    if (x > 580 && x < 660)
    {
        global.entrance = 23
        43
    }
}
if (room == room_lw_police)
{
    global.entrance = 22
    38
}
if (room == room_dw_castle_east_door)
    65
if (room == room_castle_tutorial)
    67
if (room == room_dw_ralsei_castle_front)
{
    global.entrance = 24
    76
}
if (room == room_dw_ralsei_castle_1f)
{
    if (x > 840 && x < 1000)
    {
        global.entrance = 23
        78
    }
    if (x > 550 && x < 700)
    {
        global.entrance = 24
        72
    }
}
if (room == room_dw_ralsei_castle_2f)
{
    if (x > 240 && x < 340)
    {
        global.entrance = 22
        80
    }
    if (x > 520 && x < 610)
    {
        global.entrance = 23
        81
    }
    if (x > 780 && x < 860)
    {
        global.entrance = 24
        268
    }
}
if (room == room_dw_cyber_teacup_1)
{
    if (x < 10)
    {
        global.entrance = 21
        88
    }
}
if (room == room_dw_cyber_battle_maze_1)
{
    if (x < 1200)
    {
        global.entrance = 21
        261
    }
}
if (room == room_dw_cyber_musical_door)
{
    if (y < 60)
    {
        global.entrance = 21
        98
    }
    if (y > 400)
    {
        global.entrance = 20
        105
    }
}
if (room == room_dw_cyber_escalator_slide)
{
    global.entrance = 20
    93
}
if (room == room_dw_cyber_battle_maze_2)
{
    global.entrance = 23
    106
}
if (room == room_dw_cyber_keyboard_puzzle_3)
{
    global.entrance = 23
    96
}
if (room == room_dw_cyber_maze_rhythm)
{
    if (y > 900)
    {
        global.entrance = 23
        96
    }
    if (y < 10)
    {
        global.entrance = 20
        103
    }
}
if (room == room_dw_cyber_maze_queenscreen)
{
    if (extflag == "to_room_dw_cyber_musical_shop")
    {
        global.entrance = 20
        98
    }
    if (extflag == "to_room_dw_cyber_maze_rhythm")
    {
        global.entrance = 23
        96
    }
}
if (room == room_dw_cyber_maze_tasque)
{
    if (extdestination == "room_dw_cyber_maze_tasque to room_dw_cyber_maze_virokun")
    {
        if (x > 180)
        {
            global.entrance = 20
            94
        }
    }
    if (x > 1000)
    {
        global.entrance = 21
        96
    }
    if (x > 1400)
    {
        global.entrance = 22
        96
    }
}
if (room == room_dw_cyber_maze_virokun)
{
    if (y > 430)
    {
        global.entrance = 20
        102
    }
    if (y < 50)
    {
        global.entrance = 21
        101
    }
}
if (room == room_dw_cyber_maze_fireworks)
{
    global.entrance = 21
    94
}
if (room == room_dw_cyber_musical_shop)
{
    if (extflag == "to_room_dw_cyber_maze_queenscreen")
    {
        global.entrance = 21
        103
    }
    if (extflag != "to_room_dw_cyber_maze_queenscreen")
    {
        global.entrance = 21
        93
    }
}
if (room == room_dw_castle_rooms_kris)
{
    global.entrance = 22
    77
}
if (room == room_dw_castle_rooms_susie)
{
    global.entrance = 23
    77
}
if (room == room_cc_lancer)
{
    global.entrance = 24
    77
}
if (room == room_dw_castle_dungeon)
{
    global.entrance = 23
    76
}
if (room == room_dw_city_treasure)
{
    global.entrance = 23
    126
}
if (room == room_dw_city_big_1)
{
    if (x < 10)
    {
        global.entrance = 23
        148
    }
    if (x > 720)
    {
        global.entrance = 24
        146
    }
}
if (room == room_dw_city_big_2)
{
    global.entrance = 24
    147
}
if (room == room_dw_city_traffic_2)
{
    global.entrance = 23
    147
}
if (room == room_dw_city_susie_ralsei_fun_1)
{
    global.entrance = 24
    126
}
if (room == room_dw_city_mirrorfriend)
{
    if (extflag == "big2")
    {
        global.entrance = 24
        128
    }
}
if (room == room_dw_city_big_3)
{
    if (extflag == 0)
    {
        global.entrance = 23
        132
    }
    if (extflag == "ralsusfun3")
        global.entrance = 23
}
if (room == room_dw_city_traffic_3)
{
    if (y < 900)
    {
        global.entrance = 23
        131
    }
}
if (room == room_dw_city_moss)
{
    global.entrance = 24
    132
}
if (room == room_dw_city_dog_traffic)
{
    global.entrance = 24
    132
}
if (room == room_dw_city_traffic_4)
{
    if (x > 3100 && y > 400)
    {
        global.entrance = 23
        139
    }
    if (x > 4500)
    {
        global.entrance = 24
        140
    }
    if (x < 50)
    {
        global.entrance = 22
        137
    }
}
if (room == room_dw_city_spamton_alley)
{
    global.entrance = 23
    138
}
if (room == room_dw_city_monologue)
{
    global.entrance = 24
    138
}
if (room == room_dw_city_mansion_front)
{
    global.entrance = 22
    166
}
if (room == room_dw_mansion_lightner_hallway)
{
    if (x > 210 && x < 280)
    {
        global.entrance = 19
        159
    }
    if (x > 490 && x < 590)
    {
        global.entrance = 20
        160
    }
    if (x > 1900)
    {
        global.entrance = 21
        162
    }
}
if (room == room_dw_mansion_susieroom)
{
    global.entrance = 20
    161
}
if (room == room_dw_mansion_krisroom)
{
    global.entrance = 19
    161
}
if (room == room_dw_mansion_darkbulb_1)
{
    if (x < 10)
    {
        global.entrance = 21
        161
    }
    if (x > 600)
    {
        if (global.plot < 120)
        {
            global.entrance = 20
            163
        }
        else
        {
            global.entrance = 20
            165
        }
    }
}
if (room == room_dw_mansion_darkbulb_2)
{
    if (x < 10)
    {
        global.entrance = 20
        162
    }
    if (x > 600)
    {
        global.entrance = 19
        164
    }
}
if (room == room_dw_mansion_darkbulb_3)
{
    if (x < 10)
    {
        global.entrance = 19
        163
    }
    if (x > 600)
    {
        global.entrance = 20
        165
    }
}
if (room == room_dw_mansion_dining_a)
{
    if (x < 10)
    {
        global.entrance = 20
        if (global.plot < 120)
            164
        else
            162
    }
}
if (room == room_dw_mansion_east_2f_shortcut)
{
    global.entrance = 20
    166
}
if (room == room_dw_mansion_entrance)
{
    if (x > 620 && x < 630 && y > 450 && y < 470)
    {
        global.entrance = 20
        191
    }
    if (x > 730 && x < 750 && y > 450 && y < 470)
    {
        global.entrance = 19
        196
    }
    if (x > 800 && y > 670)
    {
        global.entrance = 21
        173
    }
}
if (room == room_dw_mansion_east_4f_a)
{
    global.entrance = 19
    166
}
if (room == room_dw_mansion_east_2f_transformed_new)
{
    if (extflag == "topleft")
    {
        global.entrance = 22
        192
    }
    if (extflag == "topright")
    {
        global.entrance = 24
        215
    }
}
if (room == room_dw_mansion_east_1f_secret)
{
    if (x < 10)
    {
        global.entrance = 21
        166
    }
}
if (room == room_dw_mansion_b_central)
{
    if (global.flag[309] < 9)
    {
        global.entrance = 24
        185
    }
    else
    {
        global.entrance = 24
        188
    }
}
if (room == room_dw_mansion_b_east)
{
    if (x < 10)
    {
        global.entrance = 24
        180
    }
    if (x > 80 && x < 150)
    {
        global.entrance = 22
        186
    }
    if (x > 1000)
    {
        global.entrance = 23
        187
    }
}
if (room == room_dw_mansion_b_east_a)
{
    global.entrance = 22
    if (global.flag[309] < 8)
        185
    else
        188
}
if (room == room_dw_mansion_b_east_b)
{
    global.entrance = 23
    185
}
if (room == room_dw_mansion_b_east_transformed)
{
    if (y < 200)
    {
        global.entrance = 22
        186
    }
    else
    {
        global.entrance = 24
        180
    }
}
if (room == room_dw_mansion_b_west_1f)
{
    if (extflag == "gotoroom_dw_mansion_b_west_2f")
    {
        global.entrance = 24
        184
    }
    if (x > 800)
    {
        global.entrance = 23
        183
    }
    if (x > 1400)
    {
        global.entrance = 22
        182
    }
}
if (room == room_dw_mansion_b_west_2f)
{
    global.entrance = 24
    181
}
if (room == room_dw_mansion_b_west_1f_a)
{
    global.entrance = 22
    181
}
if (room == room_dw_mansion_b_west_1f_b)
{
    global.entrance = 23
    181
}
if (room == room_dw_mansion_east_2f_d)
{
    if (x > 1200)
    {
        global.entrance = 20
        193
    }
    else
    {
        global.entrance = 24
        177
    }
}
if (room == room_dw_mansion_east_2f_c)
{
    if (extflag == "farleft")
    {
        global.entrance = 20
        195
    }
    if (extflag == "topleft")
    {
        global.entrance = 23
        194
    }
    if (extflag == "topright")
    {
        global.entrance = 22
        194
    }
    if (extflag == "bottom")
    {
        global.entrance = 24
        219
    }
    if (extflag == "farright")
    {
        global.entrance = 23
        216
    }
}
if (room == room_dw_mansion_kitchen)
{
    global.entrance = 22
    190
}
if (room == room_dw_mansion_east_2f_c_a)
{
    if (x > 260)
    {
        global.entrance = 23
        193
    }
    if (x > 1540)
    {
        global.entrance = 22
        193
    }
}
if (room == room_dw_mansion_east_2f_c_b)
{
    global.entrance = 24
    193
}
if (room == room_dw_mansion_east_3f_toilet)
{
    global.entrance = 23
    196
}
if (room == room_dw_mansion_east_3f_projection)
{
    global.entrance = 21
    196
}
if (room == room_dw_mansion_east_3f)
{
    if (x < 10)
    {
        global.entrance = 21
        197
    }
    if (x > 220 && y < 200)
    {
        global.entrance = 19
        166
    }
    if (x > 220 && y >= 440)
    {
        global.entrance = 22
        177
    }
    if (x > 500)
    {
        global.entrance = 20
        203
    }
    if (x > 870)
    {
        global.entrance = 23
        198
    }
    if (x > 1250)
    {
        global.entrance = 24
        199
    }
}
if (room == room_dw_mansion_east_teacup_2)
{
    if (y > 4600)
    {
        global.entrance = 24
        195
    }
    else
    {
        global.entrance = 22
        196
    }
}
if (room == room_dw_mansion_acid_tunnel)
{
    global.entrance = 24
    196
}
if (room == room_dw_mansion_acid_tunnel_puzzle_entrance)
{
    global.entrance = 24
    211
}
if (room == room_library)
{
    if (x > 110 && x < 150)
    {
        global.entrance = 23
        53
    }
    if (x > 215 && x < 230)
    {
        global.entrance = 20
        54
    }
}
if (room == room_lw_library_upstairs)
{
    global.entrance = 20
    51
}
if (room == room_lw_computer_lab)
{
    global.entrance = 23
    51
}
if (room == room_dw_cyber_virovirokun_fight)
{
    global.entrance = 23
    93
}
if (room == room_dw_mansion_traffic)
{
    global.entrance = 24
    174
}
if (room == room_dw_mansion_east_2f_a)
{
    global.entrance = 23
    174
}
if (room == room_dw_mansion_east_teacup)
{
    if (y > 4700)
    {
        global.entrance = 24
        171
    }
    else
    {
        global.entrance = 23
        189
    }
}
if (room == room_dw_city_berdly)
{
    if (x < 0)
    {
        global.entrance = 23
        136
    }
    else
    {
        global.entrance = 22
        138
    }
}
if (room == room_dw_city_poppup)
{
    global.entrance = 23
    137
}
if (room == room_dw_cyber_post_music_boss_slide)
{
    if (extflag == "leftExit")
    {
        global.entrance = 20
        93
    }
    if (extflag == "rightExit")
    {
        global.entrance = 20
        97
    }
}
if (room == room_dw_cyber_music_final)
{
    global.entrance = 23
    105
}
if (room == room_dw_cyber_teacup_final)
{
    global.entrance = 24
    104
}
if (room == room_dw_mansion_bridges_funny)
{
    global.entrance = 23
    211
}
if (room == room_dw_mansion_mouseLottery)
{
    global.entrance = 22
    211
}
if (room == room_dw_mansion_hands)
{
    global.entrance = 20
    211
}
if (room == room_dw_mansion_bridges)
{
    if (extflag == "back")
    {
        global.entrance = 24
        200
    }
    if (extflag == "funny")
    {
        global.entrance = 24
        212
    }
    if (extflag == "next")
    {
        global.entrance = 24
        213
    }
    if (extflag == "hands")
    {
        global.entrance = 24
        214
    }
}
if (room == room_dw_mansion_dining3)
{
    if (extflag == "top")
    {
        global.entrance = 21
        216
    }
    if (extflag == "bottom")
    {
        global.entrance = 21
        190
    }
}
if (room == room_dw_mansion_east_4f_b)
{
    if (x > 200)
    {
        global.entrance = 20
        196
    }
    if (x > 500)
    {
        global.entrance = 24
        210
    }
}
if (room == room_dw_mansion_noelle_room)
{
    global.entrance = 24
    203
}
if (room == room_dw_mansion_dininghall)
{
    if (extflag == "topright")
    {
        global.entrance = 24
        217
    }
    if (extflag == "topleft")
    {
        global.entrance = 21
        193
    }
    if (extflag == "bottom")
    {
        global.entrance = 21
        215
    }
}
if (room == room_dw_cyber_viro_ring)
{
    global.entrance = 23
    99
}
if (room == room_dw_mansion_dining_storage)
{
    global.entrance = 24
    216
}
