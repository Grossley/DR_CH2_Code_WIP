var _temp_local_var_1, _temp_local_var_4, _temp_local_var_5, _temp_local_var_11;
if (uniqueRideExperience == 1 && (!reverse))
{
    if (global.flag[373] != 1)
        return;
}
if (state == 1)
{
    global.interact = 1
    with (obj_mainchara)
    {
        cutscene = true
        battlemode = 1
        drawbattlemode = 0
    }
    var _camXto = 
    var _camYto = 
    if centerX
    {
        var _camW = 
        _camXto = clamp((x - (_camW / 2)), 0, (room_width - _camW))
    }
    if centerY
    {
        _camYto = (y - camTargetHeight)
        _camYto
    }
    var _panMax = 8
    if rideToRide
        _panMax = 4
    if (centerX || centerY)
        gml_Script_scr_pan_lerp(_camXto, _camYto, 8)
    if (camFollow && camFollowAfter == 0)
    {
    }
    partySize = 1
    if global.cinstance[0]
        partySize++
    if global.cinstance[1]
        partySize++
    159
    var i = 0
    while (i < partySize)
    {
        var _character = (i == 0 ? 80 : global.cinstance[(i - 1)])
        var _cup = cup_char[i]
        var _jumpInDuration = jumpInDuration
        var _rollSprites = [544, 544, 542, 3337]
        var _rideToRide = rideToRide
        _rideToRide = 1
        var _temp_local_var_4 = _character
        var _spr = sprite_index
        if _rideToRide
            _spr = _rollSprites[global.char[i]]
        image_alpha = 0
        facing[0] = 0
        global.facing = 0
        var _temp_local_var_5 = gml_Script_scr_dark_marker(x, y, _spr)
        if _rideToRide
            image_speed = 0.5
        var _xx = _cup.x
        var _yy = (_cup.y - 10)
        gml_Script_scr_depth()
        gml_Script_scr_jump_to_point(_xx, _yy, (_rideToRide ? 16 : 8), _jumpInDuration)
        gml_Script_scr_doom(id, _jumpInDuration)
    }
    state = 2
    waitingAround = jumpInDuration
}
if (state == 999 && global.interact == 0)
{
    var nearobj = instance_nearest(x, y, obj_readable_room1)
    if (nearobj > 100)
    {
        var _temp_local_var_11 = nearobj
        event_user(0)
    }
}
