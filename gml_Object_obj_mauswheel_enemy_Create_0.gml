gml_Script_scr_enemy_object_init()
talkmax = 90
image_speed = 0.5
idlesprite = spr_mauswheel_idle
hurtsprite = spr_mauswheel_idle
sparedsprite = spr_mauswheel_idle
firstturn = 1
trappingX = 0
remove = 0
trappedText = 0
basket = -4
trapped = 0
tasque_joined = 0
nact_count = 0
total_cursors = 3
for (i = 0; i < total_cursors; i++)
    cursor_memory[i] = gml_Script_instance_create(x, y, obj_mauswheel_cursor_memory)
cursor_count = 0
recording_cursor = 0
basket_size = 1
tasque_manager_recruited = 1
