obj = argument0
spacer = 0
if (((obj.x + obj.sprite_width) + spacer) ? 1 : (((obj.x - spacer) + 640) ? 1 : (((obj.y + obj.sprite_height) + spacer) ? 1 : ((obj.y - spacer) + 480))))
    return 0;
else
    return 1;
