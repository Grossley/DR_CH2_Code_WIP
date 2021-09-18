var a = 0
b = 0
repeat (19)
{
    hand = gml_Script_instance_create(((gml_Script_camerax() + gml_Script_camerawidth()) - b), ((gml_Script_cameray() + gml_Script_cameraheight()) - 80), obj_sneo_sine_hand)
    hand.y = 19
    if (a == 0)
        hand.siner = 20
    if (a == 1)
        hand.siner = 26
    if (a == 2)
        hand.siner = 32
    if (a == 3)
        hand.siner = 26
    a++
    if (a > 3)
        a = 0
    b += 35
}
a = 0
b = 0
repeat (19)
{
    hand = gml_Script_instance_create(((gml_Script_camerax() + gml_Script_camerawidth()) - b), (gml_Script_cameray() - 80), obj_sneo_sine_hand)
    hand.y = 19
    hand.image_yscale = -1
    if (a == 0)
        hand.siner = 20
    if (a == 1)
        hand.siner = 26
    if (a == 2)
        hand.siner = 32
    if (a == 3)
        hand.siner = 26
    a++
    if (a > 3)
        a = 0
    b += 35
}
