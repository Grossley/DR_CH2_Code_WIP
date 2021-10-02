if (instance_exists(obj_berdlyb_enemy) && obj_berdlyb_enemy.nitro > false)
    nitro = true
else
    nitro = false
if (o_coaster_controller.actcon == 1 && o_coaster_controller.timer < o_coaster_controller.timermax)
{
    if ((button1_p() && HeroID == 0 && gooffscreen == 0) || (button2_p() && HeroID == 1 && gooffscreen == 0) || (button3_p() && HeroID == 2 && gooffscreen == 0))
    {
        if (visible == true)
        {
            if (button1_p() && HeroID == 0)
                draw_button_press = 0
            if (button2_p() && HeroID == 1)
                draw_button_press = 0
            if (button3_p() && HeroID == 2)
                draw_button_press = 0
            mykeybuffer = 3
            o_coaster_controller.playerinput = 1
            if ((HeroID == 0 && sprite_index != spr_krisb_act) || (HeroID == 0 && sprite_index == spr_krisb_act && image_index > 9))
            {
                sprite_index = spr_krisb_act
                image_index = 0
                forceact = 1
                image_speed = 0.5
            }
            if ((HeroID == 1 && sprite_index != spr_susie_act) || (HeroID == 1 && sprite_index == spr_susie_act && image_index > 8))
            {
                sprite_index = spr_susie_act
                image_index = 0
                forceact = 1
                image_speed = 0.5
            }
            if ((HeroID == 2 && sprite_index != spr_ralsei_act) || (HeroID == 2 && sprite_index == spr_ralsei_act && image_index > 11))
            {
                sprite_index = spr_ralsei_act
                image_index = 0
                forceact = 1
                image_speed = 0.5
            }
        }
    }
}
if (o_coaster_controller.actcon != 0)
    actoncondelay = 1
if instance_exists(obj_battleblcon)
    actoncondelay = 0
if (o_coaster_controller.actcon == 0 && actoncondelay == 0)
{
    if (HeroID == 0 && forceact == 0)
    {
        sprite_index = obj_herokris.sprite_index
        image_index = (obj_herokris.image_index - 1)
    }
    if (HeroID == 1 && forceact == 0 && instance_exists(obj_herosusie))
    {
        sprite_index = obj_herosusie.sprite_index
        image_index = (obj_herosusie.image_index - 1)
    }
    if (HeroID == 2 && forceact == 0 && instance_exists(obj_heroralsei))
    {
        sprite_index = obj_heroralsei.sprite_index
        image_index = (obj_heroralsei.image_index - 1)
    }
}
if (sprite_index == spr_krisb_act && image_index > 10)
{
    obj_herokris.sprite_index = spr_krisb_idle
    image_speed = 0.25
    sprite_index = spr_krisb_idle
}
if (sprite_index == spr_susie_act && image_index > 9)
{
    sprite_index = spr_susieb_idle
    image_speed = 0.25
}
if (sprite_index == spr_susieb_act && image_index > 9)
    sprite_index = spr_susieb_idle
if (sprite_index == spr_ralsei_act && image_index > 11)
{
    sprite_index = spr_ralsei_idle
    image_speed = 0.25
    forceact = 0
}
if (sprite_index == spr_krisb_attack && forceact == 1 && introanim == 1)
{
    sprite_index = spr_krisb_idle
    image_speed = 0
    image_index = 0
    forceact = 0
    introanim = 0
}
if (sprite_index == spr_susie_attack && forceact == 1 && introanim == 1)
{
    sprite_index = spr_susieb_idle
    image_speed = 0
    image_index = 0
    forceact = 0
    introanim = 0
}
if (sprite_index == spr_ralsei_battleintro && forceact == 1 && introanim == 1)
{
    sprite_index = spr_ralsei_idle
    image_speed = 0
    image_index = 9
    forceact = 0
    introanim = 0
}
if (sprite_index == spr_krisb_idle)
{
    xx = 4
    yy = -11
}
else if (sprite_index == spr_krisb_attack)
{
    xx = 0
    yy = 8
}
else if (sprite_index == spr_krisb_attackready)
{
    xx = 0
    yy = 8
}
else if (sprite_index == spr_susie_idle)
{
    xx = 0
    yy = -9
}
else if (sprite_index == spr_susieb_idle)
{
    xx = 0
    yy = -9
}
else if (sprite_index == spr_ralsei_idle)
{
    xx = -12
    yy = -9
}
else if (sprite_index == spr_ralsei_act)
{
    xx = -12
    yy = 0
}
else if (sprite_index == spr_ralsei_walk_right)
{
    xx = 0
    yy = -16
}
else if (sprite_index == spr_ralsei_right)
{
    xx = 0
    yy = -16
}
else if (sprite_index == spr_krisb_victory)
{
    xx = 0
    yy = -11
}
else if (sprite_index == spr_ralsei_victory)
{
    xx = 0
    yy = -9
}
else if (sprite_index == spr_krisr_dark)
{
    xx = 5
    yy = -10
}
else if (sprite_index == spr_susie_right_dw)
{
    xx = 10
    yy = -13
}
else if (sprite_index == spr_ralsei_walk_right)
{
    xx = 1
    yy = -2
}
else
{
    xx = 0
    yy = 0
}
if (HeroID == 1)
    xx -= 10
var a = 2
if (sprite_index == spr_susieb_actready)
    a = 1.5
if (sprite_index == spr_susieb_act)
    a = 1.5
if (sprite_index == spr_susieb_attackready)
    a = 1.5
if (sprite_index == spr_susieb_attack)
    a = 1.5
if (sprite_index == spr_susieb_defend)
    a = 1.5
if (sprite_index == spr_susie_rudebuster)
    a = 1.5
if (sprite_index == spr_susie_spell)
    a = 1.5
if (sprite_index == spr_susie_spellready)
    a = 1.5
if (sprite_index == spr_susie_actready)
    a = 1.5
if (sprite_index == spr_susie_act)
    a = 1.5
if (sprite_index == spr_susie_attackready)
    a = 1.5
if (sprite_index == spr_susie_attack)
    a = 1.5
if (sprite_index == spr_susie_defend)
    a = 1.5
userealsprite = 0
if (HeroID == 0)
{
    if (sprite_index == spr_krisb_hurt)
    {
        obj_herokris.x = ((x + 20) + xx)
        obj_herokris.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herokris.depth = (depth + 1)
    }
    else if (sprite_index == spr_krisb_idle && obj_berdlyb_enemy.bumpactstarted == 0 && dontshowherosprite < 1)
    {
        obj_herokris.x = ((x + 20) + xx)
        obj_herokris.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herokris.depth = (depth + 1)
    }
    else if (sprite_index == spr_krisb_defend)
    {
        obj_herokris.x = ((x + 20) + xx)
        obj_herokris.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herokris.depth = (depth + 1)
    }
    else if (sprite_index == spr_krisb_item)
    {
        obj_herokris.x = ((x + 20) + xx)
        obj_herokris.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herokris.depth = (depth + 1)
    }
    else if (dontshowherosprite > 0)
    {
        dontshowherosprite--
        userealsprite = 0
    }
    else
        obj_herokris.x = (camerax() - 300)
}
if (HeroID == 1 && instance_exists(obj_herosusie))
{
    if (sprite_index == spr_susie_hurt)
    {
        obj_herosusie.x = ((x + 20) + xx)
        obj_herosusie.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herosusie.depth = (depth + 1)
    }
    else if (sprite_index == spr_susieb_idle && obj_berdlyb_enemy.bumpactstarted == 0 && dontshowherosprite < 1)
    {
        obj_herosusie.x = ((x + 20) + xx)
        obj_herosusie.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herosusie.depth = (depth + 1)
    }
    else if (sprite_index == spr_susieb_hurt)
    {
        obj_herosusie.x = ((x + 20) + xx)
        obj_herosusie.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herosusie.depth = (depth + 1)
    }
    else if (obj_herosusie.hurt > false)
    {
        obj_herosusie.x = ((x + 20) + xx)
        obj_herosusie.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herosusie.depth = (depth + 1)
    }
    else if (sprite_index == spr_susieb_defend)
    {
        obj_herosusie.x = ((x + 20) + xx)
        obj_herosusie.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herosusie.depth = (depth + 1)
    }
    else if (sprite_index == spr_susie_rudebuster)
    {
        obj_herosusie.x = ((x + 20) + xx)
        obj_herosusie.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herosusie.depth = (depth + 1)
    }
    else if instance_exists(obj_rudebuster_anim)
    {
        obj_rudebuster_anim.x = ((x + 20) + xx)
        obj_rudebuster_anim.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        obj_herosusie.x = ((x + 20) + xx)
        obj_herosusie.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herosusie.depth = (depth + 1)
    }
    else if (sprite_index == spr_susie_spell)
    {
        obj_herosusie.x = ((x + 20) + xx)
        obj_herosusie.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herosusie.depth = (depth + 1)
    }
    else if (sprite_index == spr_susie_spellready)
    {
        obj_herosusie.x = ((x + 20) + xx)
        obj_herosusie.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herosusie.depth = (depth + 1)
    }
    else if (sprite_index == spr_susie_item)
    {
        obj_herosusie.x = ((x + 20) + xx)
        obj_herosusie.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_herosusie.depth = (depth + 1)
    }
    else if (dontshowherosprite > 0)
    {
        dontshowherosprite--
        userealsprite = 0
    }
    else
        obj_herosusie.x = (camerax() - 300)
}
if (HeroID == 2 && instance_exists(obj_heroralsei))
{
    if (sprite_index == spr_ralsei_idle && obj_berdlyb_enemy.bumpactstarted == 0 && dontshowherosprite < 1)
    {
        obj_heroralsei.x = ((x + 20) + xx)
        obj_heroralsei.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_heroralsei.depth = (depth + 1)
    }
    else if (sprite_index == spr_ralsei_hurt_fixed)
    {
        obj_heroralsei.x = ((x + 20) + xx)
        obj_heroralsei.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_heroralsei.depth = (depth + 1)
    }
    else if (sprite_index == spr_ralsei_defend)
    {
        obj_heroralsei.x = ((x + 20) + xx)
        obj_heroralsei.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_heroralsei.depth = (depth + 1)
    }
    else if (sprite_index == spr_ralsei_item)
    {
        obj_heroralsei.x = ((x + 20) + xx)
        obj_heroralsei.y = (((y - (sprite_get_height(sprite_index) * a)) + yy) + 8)
        userealsprite = 1
        obj_heroralsei.depth = (depth + 1)
    }
    else if (dontshowherosprite > 0)
    {
        dontshowherosprite--
        userealsprite = 0
    }
    else
        obj_heroralsei.x = (camerax() - 300)
}
if (disabled == 1)
{
    disabledtimer--
    if (disabledtimer <= 0)
        disabled = 0
}
if (con == 0)
{
    siner += 0.4
    if (gooffscreen == 0)
        x = (xstart + (sin((siner / 6)) * 3))
    if (mykeybuffer > 0 && disabled == 0)
    {
        con = 1
        dashtimer = 0
        damaged = 0
        with (o_coaster_controller)
            buttonspressed += 1
    }
}
if (con == 1)
{
    if (nitro == false)
    {
        hspeed += 4
        if (hspeed > 30)
            hspeed = 30
    }
    if (nitro == true)
    {
        hspeed += 8
        if (hspeed > 60)
            hspeed = 60
    }
    smoketimer += 2
    if (smoketimer >= 3)
    {
        smoke = instance_create(((x + hspeed) + 8), (y - 10), o_coastersmoke)
        smoketimer = 0
    }
    if (x >= (camerax() + 200))
        con = 2
    if (damaged == 1)
    {
        con = 5
        hspeed = -48
        if (nitro == true)
            hspeed = -200
    }
}
if (con == 2)
{
    if (damaged == 1)
        con = 5
    if (hspeed >= -6)
        hspeed -= 2
    if (nitro == true)
    {
        hspeed -= 1
        if (x >= (camerax() + 400) && hspeed > 0)
            hspeed = -2
    }
    if (x <= (xstart + 10))
    {
        damaged = 0
        hspeed = 0
        siner = 0
        con = 0
    }
}
if (con == 5)
{
    hspeed = -30
    if (nitro == true)
        hspeed = -100
    if (x <= (xstart - hspeed))
    {
        hspeed = 0
        damaged = 0
        siner = 0
        con = 0
    }
}
mykeybuffer -= 1
if (gooffscreen == 2)
{
    if (HeroID == 0)
        x -= 2
}
