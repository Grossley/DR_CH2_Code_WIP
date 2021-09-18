// WARNING: Popz'd an empty stack.
followindex = 0
if 758
    followindexmax = 25
else
    followindexmax = 33
for (i = 0; i < (followindexmax + 1); i++)
{
    heartposx[i] = obj_heart.x
    heartposy[i] = obj_heart.y
}
damage = 6
timer = 0
destroyonhit = 0
trail = 
maxx = (obj_growtangle.x + (obj_growtangle.sprite_width / 1.3))
maxy = (obj_growtangle.y + (obj_growtangle.sprite_height / 1.3))
depth -= 3
textflash = 0
if 758
{
    damage = (global.monsterat[obj_mauswheel_enemy.myself] * 5)
    grazepoints = 3
}
