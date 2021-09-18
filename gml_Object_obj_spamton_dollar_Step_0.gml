// WARNING: Popz'd an empty stack.
if (!582)
    return;
if (obj_spamton_attack_mode.state == 2)
{
    if (x > ((obj_spamton_attack_mode.x + obj_spamton_attack_mode.mouthx) - 50))
        y += clamp(((obj_spamton_attack_mode.y + obj_spamton_attack_mode.mouthy) - y), -5, 5)
    if (x < ((obj_spamton_attack_mode.x + obj_spamton_attack_mode.mouthx) - 10))
    {
        direction = point_direction(x, y, (obj_spamton_attack_mode.x + obj_spamton_attack_mode.mouthx), (obj_spamton_attack_mode.y + obj_spamton_attack_mode.mouthy))
        friction = -0.1
    }
}
else
    friction = 0
