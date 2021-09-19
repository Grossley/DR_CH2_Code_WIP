track1_x += 4
track2_x += 4
track3_x += 4
if (track1_x > (gml_Script_camerax() + gml_Script_camerawidth()))
    track1_x -= 960
if (track2_x > (gml_Script_camerax() + gml_Script_camerawidth()))
    track2_x -= 960
if (track3_x > (gml_Script_camerax() + gml_Script_camerawidth()))
    track3_x -= 960
draw_sprite(spr_sneo_wall_track, 0, track1_x, ((gml_Script_cameray() + gml_Script_cameraheight()) - 180))
draw_sprite(spr_sneo_wall_track, 0, track2_x, ((gml_Script_cameray() + gml_Script_cameraheight()) - 180))
draw_sprite(spr_sneo_wall_track, 0, track3_x, ((gml_Script_cameray() + gml_Script_cameraheight()) - 180))
