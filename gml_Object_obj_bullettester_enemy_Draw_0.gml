// WARNING: Popz'd an empty stack.
keya = "Q"
keyb = "W"
if (myself == 1)
{
    keya = "E"
    keyb = "R"
}
if (myself == 2)
{
    keya = "T"
    keyb = "Y"
}
255
"main"
draw_text_transformed((x - 80), (y - 10), string_hash_to_newline((((((("SpawnType: " + string(global.tempflag[(23 + myself)])) + "#") + keya) + "- ") + keyb) + "+ ")), 1.5, 1.5, 0)
