var _character, _marker, _charaDest, _longestAnim, _animSpeed, animdone, _charSpin, _cupDepth, _spritesTea, _fadeDistance, _theCurrentScore, woosh, _temp_local_var_2, _temp_local_var_4, _temp_local_var_7, _temp_local_var_20, _temp_local_var_22;
camTargetHeight = (reverse ? camTargetHeightReverse : camTargetHeightNormal)
var _tempLock = 0
riseSpeedBoost = min(riseSpeedBoost, riseSpeedBoostMax)
var _generalSpeed = riseSpeed
if (reverse && (!is_undefined(riseSpeedReverse)))
    _generalSpeed = riseSpeedReverse
var _riseSpeedFinal = (_generalSpeed + riseSpeedBoost)
if tutorialRide
    _riseSpeedFinal = riseSpeedBoost
if (state == 0)
{
    if (uniqueRideExperience == 1 && global.flag[373] == 1)
        instance_destroy()
    var _targetY = ystart
    if reverse
        _targetY = endY
    y = gml_Script_scr_approach(y, _targetY, riseSpeedInitial)
    if (y == _targetY)
    {
        state = 1
        if (uniqueRideExperience == 1)
        {
            gml_Script_snd_play(59)
            gml_Script_instance_create(0, 0, obj_shake)
            state = 0.1
            waitingAround = 15
        }
    }
}
if (state == 0.1)
{
    if (--waitingAround <= 0)
        state = 1
}
if (state == 1)
{
}
if (state == 2)
{
    if (--waitingAround <= 0)
    {
        state = 3
        gml_Script_snd_play(51)
    }
}
if (state == 3)
{
    var i = 0
    while (i < partySize)
    {
        var _sprites = [2548, 2548, 2559, 2555]
        cup_char[i].sprite_index = _sprites[global.char[i]]
        var _temp_local_var_4 = cup_char[i]
        image_xscale = 2
        image_yscale = 2
        image_index = 0
        image_speed = 0
        cutoff = 10
    }
    cupCharExists = 1
    state = 4
    waitingAround = 15
    if (uniqueRideExperience == 1 && (!reverse))
    {
        waitingAround = 45
        originalY = y
        originalX = x
    }
    if rideToRide
        waitingAround = 3
}
if (state == 4)
{
    if (uniqueRideExperience == 1 && (!reverse))
    {
        i = 0
        while (i < 3)
        {
            var _temp_local_var_7 = cup_char[i]
            gml_Script_scr_depth()
        }
        var _shakeSize = 5
        x = (originalX + irandom_range((-_shakeSize), _shakeSize))
        y = (originalY + irandom_range((-_shakeSize), _shakeSize))
        spin = gml_Script_scr_approach(spin, 0, spinSpeed)
        if (waitingAround <= 15)
        {
            x = originalX
            y = originalY
        }
    }
    if (--waitingAround <= 0)
    {
        heldThisRide = 0
        state = 5
        looptrack = gml_Script_snd_loop(112)
        gml_Script_snd_pitch(looptrack, (0.3 + (_riseSpeedFinal * 0.09)))
        gml_Script_snd_volume(looptrack, 0.3, 0)
    }
}
if (state == 5)
{
    if (room == room_dw_cyber_battle_maze_1 && global.flag[442] == 0)
    {
        if (riseSpeedBoost == 0)
            idletimer++
        else
        {
            global.flag[442] = 1
            idletimer = 0
        }
    }
    var _moveDirection = (reverse ? 1 : -1)
    var _destinationY = (reverse ? ystart : endY)
    if (!held)
    {
        if ((!heldThisRide) && holdHeight > self && (!reverse))
        {
            var _moveAmount = (y + (_riseSpeedFinal * _moveDirection))
            var _holdCondition = (reverse ? _moveAmount > holdHeight : _moveAmount < holdHeight)
            if _holdCondition
            {
                y = holdHeight
                held = 1
                heldThisRide = 1
                heldAmount = 0
            }
        }
    }
    else
    {
        with (obj_teacupParallaxer)
            autoamount -= (_riseSpeedFinal * 2)
        heldAmount += _riseSpeedFinal
        if (heldAmount >= holdDistance)
            held = 0
        with (obj_teacup_bullet)
        {
            if (master == other.id)
                ystart += _riseSpeedFinal
        }
        if (uniqueRideExperience == 4 && gml_Script_scr_sideb_get_phase() != 3)
        {
            if (teaBullets-- > 0)
            {
                if ((teaBullets % 3) == 0)
                    gml_Script_scr_tb_make_split(800, spin, 0, 3, 5)
            }
            if (collision_rectangle(bbox_left, (bbox_top - 10), bbox_right, bbox_bottom, obj_teacup_bullet, 0, 1) != -4)
            {
                if (cup_char[1].sprite_index == spr_teacup_susie)
                    cup_char[1].sprite_index = spr_teacup_susie_tea
                teatimer--
                if (teatimer <= 0)
                {
                    gml_Script_snd_play(179)
                    teatimer = 6
                }
            }
            else if (cup_char[1].sprite_index == spr_teacup_susie_tea)
                cup_char[1].sprite_index = spr_teacup_susie
            var _closest = abs((368 - spin)) > abs((8 - spin))
            spin = gml_Script_scr_approach(spin, (_closest ? 8 : 368), spinSpeed)
            if instance_exists(obj_teacupParallaxer)
            {
                if (obj_teacupParallaxer.auto == 0)
                    obj_teacupParallaxer.auto = 1
            }
            _tempLock = 1
        }
    }
    var _spinSpeed = spinSpeed
    var _mode = mode
    if (uniqueRideExperience == 1 && reverse)
    {
        _mode = 2
        _spinSpeed = 2
        if (global.tempflag[33] > 0 && room == room_dw_mansion_b_west_2f)
            _riseSpeedFinal = 12
    }
    var _spinDir = ((gml_Script_down_h() || gml_Script_left_h()) - (gml_Script_up_h() || gml_Script_right_h()))
    switch _mode
    {
        case 0:
            if (!_tempLock)
                spin -= _spinSpeed
            if (!held)
                y += (_spinDir * _riseSpeedFinal)
            break
        case 1:
            if (!_tempLock)
                spin += (_spinSpeed * _spinDir)
            if (!held)
                y = gml_Script_scr_approach(y, _destinationY, _riseSpeedFinal)
            break
        case 2:
            if (!_tempLock)
                spin += (_spinSpeed * _moveDirection)
            if (!held)
                y = gml_Script_scr_approach(y, _destinationY, _riseSpeedFinal)
            break
    }

    spin = gml_Script_scr_wrap(spin, 0, 360)
    if camFollow
    {
        var _movedSoFar = abs((reverse ? (endY - y) : (ystart - y)))
        if (_movedSoFar > camFollowAfter)
        {
            var _camTarget = camTargetHeight
            gml_Script_cameray_set(lerp(gml_Script_cameray(), (y - _camTarget), 0.2))
            gml_Script_cameray_set(clamp(gml_Script_cameray(), 0, (room_height - 480)))
            if (_movedSoFar > (camFollowAfter * 2))
                gml_Script_cameray_set(min(gml_Script_cameray(), ((y - _camTarget) + 140)))
            if held
                gml_Script_cameray_set(((y - camTargetHeight) + (_riseSpeedFinal * 4)))
            if (shaketimer > 0)
            {
                shaketimer--
                var shakex = shaketimer
                if ((shakex % 2) == 0)
                    shakex *= -1
                gml_Script_camerax_set((clamp((x - (gml_Script_camerawidth() / 2)), 0, (room_width - gml_Script_camerawidth())) + shakex))
            }
        }
    }
    if (y == _destinationY)
    {
        state = 6
        instance_create_depth(0, 0, 0, obj_shake)
        gml_Script_snd_play(59)
    }
    if (riseSpeedBoost != 0)
        riseSpeedBoost = gml_Script_scr_approach(riseSpeedBoost, 0, riseSpeedBoostFriction)
    if ((uniqueRideExperience == 2 || uniqueRideExperience == 3) && crusher == noone && abs((_destinationY - y)) < 100)
    {
        crusher = instance_create_depth(x, (endY - 510), (depth - 1000), obj_dw_pancakemaker)
        var _temp_local_var_20 = crusher
        image_xscale = 2
        image_yscale = image_xscale
    }
}
if (state == 6)
{
    with (obj_teacup_bullet)
    {
        if (master == other.id)
            instance_destroy()
    }
    if reverse
        theScore = 0
    gml_Script_snd_stop(looptrack)
    if (!instance_exists(obj_shake))
    {
        if (scoreboardExists && (!reverse))
        {
            if (scoreboardGoal <= theScore)
                state = 7
            else
            {
                gml_Script_snd_play(143)
                state = 6.1
                waitingAround = 30
            }
        }
        else
            state = 7
    }
}
if (state == 6.1)
{
    var _flash = ((waitingAround div 5) % 2)
    if (_flash == 0)
        scoreboard.scoreCol = 0
    else
        scoreboard.scoreCol = 255
    if (--waitingAround <= 0)
    {
        scoreboard.scoreCol = 14483711
        reverse = 1
        state = 5
    }
}
var _temp_local_var_22 = crusher
y += (5 + _riseSpeedFinal)
if (y >= other.y)
{
    y = other.y
    if (!other.crushed)
    {
        other.crushed = 1
        gml_Script_instance_create(0, 0, obj_shake)
        gml_Script_snd_play(59)
    }
}
