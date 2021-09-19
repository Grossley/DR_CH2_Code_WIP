gml_Script_snd_play_pitch(95, (0.8 + random(0.1)))
var c = gml_Script_instance_create(x, y, obj_firework_explosion)
with (c)
{
    sprite_index = other.mySprite
    image_blend = other.image_blend
    colorProfile = other.colorProfile
    event_user(0)
}
if gml_Script_i_ex(344)
{
    with (obj_cyber_shadowMaker_fireworks)
        fade_in = 1
}
