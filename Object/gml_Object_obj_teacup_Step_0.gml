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
    for (var i = 0; i < partySize; i += 1)
    {
        var _sprites = [2548, 2548, 2559, 2555]
        cup_char[i].sprite_index = _sprites[global.char[i]]
        with (cup_char[i])
        {
            image_xscale = 2
            image_yscale = 2
            image_index = 0
            image_speed = 0
            cutoff = 10
        }
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
        for (i = 0; i < 3; i += 1)
        {
            with (cup_char[i])
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
        if ((!heldThisRide) && holdHeight > -1 && (!reverse))
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
            var _temp_local_var_72 = teaBullets
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
    var _temp_local_var_15 = _mode
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
        with (crusher)
        {
            image_xscale = 2
            image_yscale = image_xscale
        }
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
with (crusher)
{
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
}
if (state == 7)
{
    if (uniqueRideExperience == 1 && (!reverse))
    {
        oX = x
        oY = y
    }
    if (uniqueRideExperience == 2)
    {
        for (i = 0; i < partySize; i++)
        {
            var _character = (i == 0 ? obj_mainchara : global.cinstance[(i - 1)])
            var _marker = cup_char[i]
            with (_character)
            {
                x = _marker.x
                y = (_marker.y - 10)
                image_alpha = 1
            }
            with (_marker)
                sprite_index = spr_teacup_empty
        }
        with (jumpToRide)
        {
            rideToRide = 1
            event_perform(ev_other, ev_user0)
        }
        gml_Script_snd_play(159)
        state = 12
    }
    else
    {
        gml_Script_snd_play(159)
        for (i = 0; i < partySize; i++)
        {
            _sprites = [544, 544, 542, 3338]
            var _charaDest = (reverse ? startPos[i] : endPos[i])
            jumpMarker[i] = gml_Script_instance_create(cup_char[i].x, cup_char[i].y, obj_marker)
            with (jumpMarker[i])
            {
                sprite_index = _sprites[global.char[i]]
                image_xscale = 2
                image_yscale = 2
                image_index = 0
                image_speed = 0.5
                jumper = gml_Script_scr_jump_to_point(_charaDest[0], _charaDest[1], 16, other.jumpOutDuration)
            }
            with (cup_char[i])
                sprite_index = spr_teacup_empty
        }
        cupCharExists = 0
        waitingAround = jumpOutDuration
        state = 8
    }
}
if (state == 8)
{
    if (uniqueRideExperience == 1 && (!reverse))
    {
        x = (oX + irandom_range(-3, 3))
        y = (oY + irandom_range(-1, 1))
    }
    if (--waitingAround <= 0)
    {
        for (i = 0; i < partySize; i++)
        {
            _sprites = [648, 648, 548, 2558]
            var _longestAnim = 0
            var _animSpeed = 0.25
            with (jumpMarker[i])
            {
                sprite_index = _sprites[global.char[i]]
                image_index = 0
                image_speed = _animSpeed
                cutoff = 0
                _longestAnim = max(_longestAnim, image_number)
            }
        }
        waitingAround = (12 + (_longestAnim / _animSpeed))
        state = 9
        gml_Script_snd_play(51)
        cameramarker = gml_Script_scr_dark_marker(jumpMarker[0].jumper.endx, jumpMarker[0].jumper.endy, 650)
        cameramarker.depth = -100
        cameramarker.image_blend = c_blue
        cameramarker.visible = false
        if (uniqueRideExperience != 1)
            gml_Script_scr_pan_to_obj(cameramarker, 12)
    }
}
if (state == 9)
{
    with (obj_mainchara)
    {
        battlemode = 0
        drawbattlemode = 1
    }
    if (uniqueRideExperience == 1 && (!reverse))
    {
        x = (oX + irandom_range(-3, 3))
        y = (oY + irandom_range(-1, 1))
    }
    var animdone = 0
    for (i = 0; i < partySize; i++)
    {
        with (jumpMarker[i])
        {
            if (image_index >= (image_number - 1))
            {
                image_speed = 0
                image_index = (image_number - 1)
            }
            if (image_index == (image_number - 1))
                animdone++
        }
        if (animdone >= 3 && waitingAround > 6)
            waitingAround = 6
    }
    if (--waitingAround <= 0)
    {
        for (i = 0; i < partySize; i++)
        {
            _character = (i == 0 ? obj_mainchara : global.cinstance[(i - 1)])
            _marker = jumpMarker[i]
            with (_character)
            {
                x = _marker.x
                y = _marker.y
                image_alpha = 1
            }
            with (_marker)
                instance_destroy()
            with (cameramarker)
                instance_destroy()
            global.facing = 0
            with (obj_caterpillarchara)
                gml_Script_scr_caterpillar_interpolate()
        }
        waitingAround = -1
        state = 10
    }
}
if (state == 10)
{
    if (uniqueRideExperience == 1 && (!reverse))
    {
        x = (oX + irandom_range(-3, 3))
        y = (oY + irandom_range(-1, 1))
    }
    if (--waitingAround <= 0)
    {
        with (obj_darkcontroller)
            charcon = 0
        global.interact = 0
        myPitch = 1
        with (obj_mainchara)
            cutscene = false
        riseSpeedBoost = riseSpeedBoostInitial
        heldAmount = 0
        if (!returnOnFinish)
        {
            if (scoreboardExists && reverse)
            {
                state = 13
                scoreboard.scoreCol = 14483711
            }
            else
                state = 1
            reverse = (!reverse)
            if ((!reverse) && regenerateBullets)
            {
                if (uniqueBulletPattern != -1)
                    gml_Script_scr_tb_pattern(uniqueBulletPattern)
                else
                    gml_Script_scr_tb_pattern()
            }
        }
        else
            state = 11
        if (uniqueRideExperience == 3)
            state = 12
        if (uniqueRideExperience == 4 && reverse)
            state = 12
        if (uniqueRideExperience == 1 && reverse)
        {
            state = 14
            waitingAround = 30
            x = oX
            y = oY
        }
    }
}
if (state == 11)
{
    y = gml_Script_scr_approach(y, ystart, riseSpeedInitial)
    spin -= riseSpeedInitial
    if (y == ystart)
    {
        state = 1
        if (uniqueBulletPattern != -1)
            gml_Script_scr_tb_pattern(uniqueBulletPattern)
        else
            gml_Script_scr_tb_pattern()
    }
}
if (state == 12)
{
}
if (state == 13)
{
    _closest = abs((360 - spin)) > abs((0 - spin))
    spin = gml_Script_scr_approach(spin, (_closest ? 0 : 360), spinSpeed)
    if (spin == 0 || spin == 360)
        state = 1
}
if (state == 14)
{
    y += 10
    if (y > (room_height + 500))
        state = 12
}
for (i = 0; i < 3; i++)
{
    var _charSpin = ((-90 + (120 * i)) - spin)
    cupx = lengthdir_x(cupDistanceFromCenter, _charSpin)
    cupy = lengthdir_y((cupDistanceFromCenter * 0.5), _charSpin)
    var _cupDepth = ((depth - depthSeparation) - cupy)
    var _spritesTea = [2552, 2549, 2549, 2556]
    if (teaFilled > 0.1 && global.char[i] != 2)
    {
        if (teaFilled >= 1)
            _spritesTea = [2554, 2550, 2549, 2557]
        if ((state == 5 || state == 6) && i < partySize)
            cup_char[i].sprite_index = _spritesTea[global.char[i]]
        else
            cup_char[i].sprite_index = _spritesTea[0]
    }
    cup_char[i].spin = _charSpin
    cup_char[i].x = (x + cupx)
    cup_char[i].y = ((y + cupy) - 16)
    cup_char[i].x += cupCharXnudge
    cup_char[i].y += cupCharYnudge
    cup_char[i].image_index = (gml_Script_scr_wrap(_charSpin, 0, 360) div 30)
    if (fadeOutOthers && (!reverse) && i != 0)
    {
        if (state == 5)
        {
            var _fadeDistance = 120
            if (uniqueRideExperience == 4)
                _fadeDistance = 900
            if (abs((_destinationY - y)) <= _fadeDistance)
                cup_char[i].image_alpha = gml_Script_scr_approach(cup_char[i].image_alpha, 1, (0.02 + (riseSpeed / _fadeDistance)))
            else
                cup_char[i].image_alpha = gml_Script_scr_approach(cup_char[i].image_alpha, 0.15, 0.05)
        }
        else
            cup_char[i].image_alpha = gml_Script_scr_approach(cup_char[i].image_alpha, 1, 0.05)
    }
    cup_char[i].depth = (_cupDepth - 1)
}
if scoreboardExists
{
    with (scoreboard)
    {
        var _theCurrentScore = other.theScore
        y = (other.y + 92)
        theScore = _theCurrentScore
        if (other.state == 6.1)
            theScore = other.scoreboardGoal
        image_index = floor(((_theCurrentScore / other.scoreboardGoal) * (image_number - 1)))
        if (_theCurrentScore >= other.scoreboardGoal)
        {
            image_index = (image_number - 1)
            scoreCol = 65280
        }
    }
}
if (room == room_dw_cyber_battle_maze_1)
{
    if (state == 5 && idletimer > 30 && global.flag[442] == 0)
        drawtutorialarrows = 1
    else
        drawtutorialarrows = 0
}
if (wooshnoise == 1)
{
    var woosh = gml_Script_snd_play_pitch(179, 0.6)
    gml_Script_snd_volume(woosh, 0.1, 0)
    gml_Script_snd_volume(woosh, 1, 1)
    wooshnoise = 0
}
if bouncenoise
{
    if (!gml_Script_snd_is_playing(159))
        gml_Script_snd_play_pitch(159, 1.5)
    bouncenoise = 0
}
if swallownoise
{
    gml_Script_snd_play(179)
    swallownoise = 0
}
