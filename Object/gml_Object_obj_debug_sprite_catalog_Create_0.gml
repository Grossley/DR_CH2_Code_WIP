lastSprite = spr_nothing
myLastSprite = spr_nothing
siner = 0
for (i = 0; i < lastSprite; i++)
{
    spriteName[i] = sprite_get_name(i)
    spriteHeight[i] = sprite_get_height(i)
    mySprite[i] = i
    mySpriteName[i] = spriteName[i]
    mySpriteHeight[i] = spriteHeight[i]
}
sy = 0
init = false
oldway = 0
displaymode = 0
