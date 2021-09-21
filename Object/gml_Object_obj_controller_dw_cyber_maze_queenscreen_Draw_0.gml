if (hatinit == 0)
{
    hat = gml_Script_scr_dark_marker(room_width, room_height, spr_werewirehat)
    hatinit = 1
}
if (!gml_Script_i_ex(obj_battleback))
{
    if gml_Script_i_ex(werewire6)
    {
        with (hat)
            gml_Script_setxy((other.werewire6.x + 20), (other.werewire6.y - 28))
    }
    if gml_Script_i_ex(werewire7)
    {
        with (hat)
            gml_Script_setxy((other.werewire7.x + 20), (other.werewire7.y - 28))
    }
}
