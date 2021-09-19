if (!obj_shapepuzzle.goalHit)
{
    gml_Script_snd_play(64)
    global.interact = 1
    global.facing = 2
    active = true
    with (obj_shapepuzzle)
        inUse = 1
    with (myPiece)
        active = true
    mybuffer = 0
}
