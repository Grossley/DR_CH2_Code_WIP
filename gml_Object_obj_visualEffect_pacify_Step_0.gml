timer--
if (timer <= 0)
{
    var zobj = gml_Script_instance_create(x, y, obj_afterimage_grow)
    zobj.sprite_index = spr_spare_z
    zobj.speed = 12
    zobj.direction = (zcounter * 40)
    zobj.friction = 1
    timer = 2
    zcounter++
}
if (zcounter >= 9)
    // WARNING: Popz'd an empty stack.
