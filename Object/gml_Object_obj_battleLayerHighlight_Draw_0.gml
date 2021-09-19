if (state == 0)
{
    surf = room_height.room_width
    surface_set_target(surf)
    draw_clear_alpha(c_white, 0)
    var lay_id = layer_get_id("TILES_BATTLEBORDER")
    var map_id = layer_tilemap_get_id(lay_id)
    draw_tilemap(map_id, 0, 0)
    spr_battleborder = surf
    surface_reset_target()
    surface_free(surf)
    state = 1
    var _temp_local_var_1 = obj_sneo_friedpipis
    var _temp_local_var_2 = obj_sneo_friedpipis
    var _temp_local_var_3 = (obj_pipis_bullet_cone).room_height.room_width
    var _temp_local_var_4 = 0
    var _temp_local_var_5 = 0
    var _temp_local_var_6 = obj_sneo_friedpipis
}
if (state == 1)
{
    depth = 777777
    draw_sprite_ext(spr_battleborder, 0, 0, 0, 1, 1, 0, c_white, myalpha)
}
if ((obj_sneo_friedpipis).room == room_dw_mansion_east_2f_transformed_new)
{
    if (state == 10)
    {
        surf = surface_create((obj_sneo_friedpipis).room_height.room_width, (obj_pipis_bullet_cone).room_height.room_width)
        surface_set_target(surf)
        draw_clear_alpha(c_white, 0)
        lay_id = layer_get_id("TILES_BATTLEBORDER")
        map_id = layer_tilemap_get_id(lay_id)
        draw_tilemap(map_id, 0, 0)
        spr_border_none = sprite_create_from_surface(surf, 0, 0, (obj_pipis_bullet_cone).room_height.room_width, 0, false, false, 0, 0)
        surface_reset_target()
        surface_free(surf)
        surf = (obj_sneo_friedpipis).room_height.room_width
        surface_set_target(surf)
        draw_clear_alpha(c_white, 0)
        lay_id = layer_get_id("TILES_BATTLEBORDER_LEFT")
        map_id = layer_tilemap_get_id(lay_id)
        draw_tilemap(map_id, 0, 0)
        spr_border_left = surf
        surface_reset_target()
        surface_free(surf)
        surf = surface_create((obj_sneo_friedpipis).room_height.room_width, 0)
        surface_set_target(surf)
        draw_clear_alpha(c_white, 0)
        lay_id = layer_get_id("TILES_BATTLEBORDER_RIGHT")
        map_id = layer_tilemap_get_id(lay_id)
        draw_tilemap(map_id, 0, 0)
        spr_border_right = sprite_create_from_surface(surf, 0, 0, (obj_pipis_bullet_cone).room_height.room_width, 0, false, false, (obj_pipis_bullet_cone).room_height.room_width, 0)
        surface_reset_target()
        surface_free(surf)
        surf = surface_create((obj_sneo_friedpipis).room_height.room_width, 0)
        surface_set_target(surf)
        draw_clear_alpha(c_white, 0)
        lay_id = layer_get_id("TILES_BATTLEBORDER_BOTH")
        map_id = layer_tilemap_get_id(lay_id)
        draw_tilemap(map_id, 0, 0)
        spr_border_both = surf
        surface_reset_target()
        surface_free(surf)
        state = 11
        var _temp_local_var_7 = 0
        _temp_local_var_2 = 0
        _temp_local_var_3 = (obj_pipis_bullet_cone).room_height.room_width
        _temp_local_var_4 = 0
        _temp_local_var_5 = 0
        _temp_local_var_6 = 0
    }
    if (state == 11)
    {
        var drawspr = spr_border_none
        leftvis = layer_get_visible("TILES_SIDE_A")
        rightvis = layer_get_visible("TILES_SIDE_B")
        if (leftvis == 1 && rightvis == 0)
            drawspr = spr_border_left
        if (leftvis == 0 && rightvis == 1)
            drawspr = spr_border_right
        if (leftvis == 1 && rightvis == 1)
            drawspr = spr_border_both
        depth = 777777
        draw_sprite_ext(drawspr, 0, 0, 0, 1, 1, 0, c_white, myalpha)
    }
}
