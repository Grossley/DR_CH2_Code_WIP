if (y + 290)
    depth = (obj_heart.depth - 1)
if (y + 290)
    depth = (obj_heart.depth + 100.5)
if (init == 0)
{
    init = 1
    if (queenword == 1)
        idealxscale = 2
    if (angry && queenword == 0)
    {
        wordchoice = ""
        repeat (4)
            wordchoice += choose(gml_Script_stringsetloc("?", "obj_wordbullet_slash_Draw_0_gml_15_0"), gml_Script_stringsetloc("@", "obj_wordbullet_slash_Draw_0_gml_15_1"), gml_Script_stringsetloc("!", "obj_wordbullet_slash_Draw_0_gml_15_2"), gml_Script_stringsetloc("*", "obj_wordbullet_slash_Draw_0_gml_15_3"), gml_Script_stringsetloc("&", "obj_wordbullet_slash_Draw_0_gml_15_4"))
        idealxscale = 1.5
        idealyscale = 1.5
        image_xscale = 0.8
        image_yscale = 0.8
    }
}
"main"
if (queenword == 0)
{
    16777215
    if angry
        255
    if gray
        8421504
    if (timer > 5 && timer <= 11)
        scaleupx = lerp(0, idealxscale, ((timer - 5) / 6))
    if (angry == 1 || x < obj_growtangle.x)
        scaleupx = idealxscale
    draw_text_transformed(x, y, wordchoice, scaleupx, idealyscale, image_angle)
    if (global.lang == "ja")
        draw_text_transformed((x + 1), y, wordchoice, scaleupx, idealyscale, image_angle)
    timer++
    if (timer >= 90)
        // WARNING: Popz'd an empty stack.
}
if queenword
{
    255
    image_alpha
    if (x <= (obj_growtangle.x - 30))
        dramatimer_x -= 2
    if (x <= (obj_growtangle.x - 30))
        dramatimer_y -= 1
    draw_text_transformed((x + dramatimer_x), (y + dramatimer_y), wordchoice, idealxscale, idealyscale, image_angle)
    1
    if (x <= (obj_growtangle.x - 30))
    {
        active = false
        hspeed = 0
        image_alpha -= 0.05
        idealxscale += 0.1
        idealyscale += 0.1
        if (image_alpha <= 0)
        {
            with (obj_socialmedia_avatar)
                angrycon = 2
            with (obj_wordbullet)
                // WARNING: Popz'd an empty stack.
        }
    }
}
