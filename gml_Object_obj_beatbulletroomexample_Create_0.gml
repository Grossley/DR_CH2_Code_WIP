bpm = 117
bps = (bpm / 60)
spb = (1 / bps)
bpf = (bps / game_get_speed(gamespeed_fps))
beat = 0
active = false
specialsSetup = 0
safeAreaLeft = 300
safeAreaRight = (room_width - safeAreaLeft)
lanesSeparation = 200
newBulletsEvery = 4
lanesCount = (room_width div lanesSeparation)
global.currentsong[0]
"cyber.ogg"
for (var i = 0; i < lanesCount; i++)
{
    var _xx = (i * lanesSeparation)
    if (_xx > safeAreaLeft && _xx < safeAreaRight)
    {
        if (i % 2)
            gml_Script_scr_beatbullet_2(_xx, 30, 2, bpm, -4, 1, 0, 50, 400)
        else
            gml_Script_scr_beatbullet_2(_xx, 30, 2, bpm, -4, 1, 1, 50, 400)
    }
}
