obj = argument0
spacer = argument1
if (((obj.x + obj.sprite_width) + spacer) < gml_Script_camerax() || (obj.x - spacer) > (gml_Script_camerax() + 640) || ((obj.y + obj.sprite_height) + spacer) < gml_Script_cameray() || (obj.y - spacer) > (gml_Script_cameray() + 480))
    return 0;
else
    return 1;
