var _segSpin = spin
if (mode != 0)
{
    _segSpin = (99999 + (y - heldAmount))
    if held
    {
        adjustForCamera += (riseSpeed * camFollowMultiplier)
        _segSpin -= adjustForCamera
    }
    else
        adjustForCamera = 0
}
var _bottomY = (ystart + heldAmount)
if (startOffset.undefined && startOffset > 0)
    _bottomY += startOffset
var _screwSegTotal = (((_bottomY - y) div screwSegHeight) + 1)
var _screwSegStart = 0
for (i = _screwSegStart; i < _screwSegTotal; i++)
{
    if (i != _screwSegStart)
        draw_sprite_ext(spr_teacup_screw, 0, x, ((_bottomY + 24) - (i * 30)), 2, 2, 0, c_white, 1)
    else
        draw_sprite_ext(spr_teacup_screw_end, 0, x, (((-2 + _bottomY) + 24) - (i * 30)), 2, 2, 0, c_white, 1)
}
draw_sprite_ext(spr_teacup_base, 0, x, (_bottomY + 20), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
draw_sprite_ext(spr_teacup_platform, 0, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
draw_sprite_ext(spr_teacup_center, (spin div 22.5), x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if (!shadowSurf)
    shadowSurf = surface_create(sprite_width, sprite_height)
shadowSurf
draw_clear_alpha(c_black, 0)
0
gpu_set_blendmode_ext(bm_one, bm_zero)
with (obj_teacup_bullet)
{
    if (master == other.id)
    {
        closenessToRide = ((ystart - (other.y - 300)) / 300)
        draw_sprite_ext(sprite_index, image_index, (x - other.bbox_left), ((other.y + circleY) - other.bbox_top), image_xscale, (image_yscale * 0.5), 0, c_black, (closenessToRide - (cutOff / spriteHeightRoot)))
        if lineToCenter
        {
            0
            (closenessToRide - (cutOff / spriteHeightRoot))
            draw_line_width((x - other.bbox_left), ((other.y + circleY) - other.bbox_top), (xstart - other.bbox_left), (other.y - other.bbox_top), 4)
            1
        }
    }
}
0
// WARNING: Popz'd an empty stack.
draw_surface(shadowSurf, bbox_left, bbox_top)
if (room == room_dw_cyber_battle_maze_1)
{
    if (drawtutorialarrows == 1)
        drawtutorialarrows_alpha = lerp(drawtutorialarrows_alpha, 1, 0.15)
    else
        drawtutorialarrows_alpha = lerp(drawtutorialarrows_alpha, 0, 0.35)
    draw_sprite_ext(spr_teacuparrow, 0, ((-2 + x) + 70), ((y + 34) - (sin((idletimer / 3)) * 2)), 2, 2, 0, c_white, drawtutorialarrows_alpha)
    draw_sprite_ext(spr_teacuparrow, 0, ((-2 + x) - 70), ((y + 34) + (sin((idletimer / 3)) * 2)), -2, 2, 0, c_white, drawtutorialarrows_alpha)
}
255
if cupCharExists
{
    if debugHitThisFrame
    {
        draw_circle(20, y, 64, 0)
        debugHitThisFrame = 0
    }
}
