if (!thrash)
    return;
if (deathtimer > 0)
{
    deathtimer--
    if (deathtimer <= 0)
    {
        obj_rouxls_enemy.thrashcon = 7
        obj_rouxls_enemy.x = obj_rouxls_enemy.remx
        thrash.a = 0
        // WARNING: Popz'd an empty stack.
    }
}
if duckmode
{
    var thrashcon = obj_rouxls_enemy.thrashcon
    if ((thrashcon == 3 || thrashcon == 5) && thrash.stomp != 0)
    {
        gml_Script_snd_pitch(56, (thrash.stomp == 1 ? 1.25 : 1))
        56
    }
}
thrash.stomp = 0
x = (thrash.xx - 30)
y = ((thrash.yy + (thrash.s * thrash.walkc)) + 14)
