room_speed = 30
time = 0
global.firework_sprite_pixel_data = ds_map_create()
current_sprites[0] = 2427
current_sprites[1] = 2428
current_sprites[2] = 2429
event_user(0)
is_active = 0
if (room == room_dw_cyber_post_music_boss_slide)
    is_active = 1
if (room == room_dw_cyber_maze_fireworks)
    is_active = global.flag[357] == 1
fireworksprite[0] = 2427
fireworksprite[1] = 2428
fireworksprite[2] = 2429
fireworkcount = 0
finished = 0
