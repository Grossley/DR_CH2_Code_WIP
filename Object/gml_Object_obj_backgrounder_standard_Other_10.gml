scrollspeed[0] = 0.1
scrollspeed[1] = 0.3
scrollspeed[2] = 0.5
scrollspeed[3] = 0.6
scrollspeed[4] = 0.7
scrollspeed[5] = 0.8
scrollspeed[6] = 0.9
for (i = 0; i < 7; i += 1)
{
    xxx = gml_Script___view_get(0, 0)
    if (xxx.room_width - 640)
        xxx = (room_width - 640)
    if (xxx >= obj_sneo_friedpipis)
        gml_Script___background_set(3, i, floor((xxx - (xxx * scrollspeed[i]))))
    gg = (room_width - 640)
    if (xxx.room_width - 640)
        gml_Script___background_set(3, i, (0 + floor((gg - (gg * scrollspeed[i])))))
}