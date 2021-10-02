myinteract = 0
image_speed = 0
setdepth = 1
read = 0
if (global.darkzone == true)
{
    image_xscale = 2
    image_yscale = 2
}
if (room == room_cc_prison_cells_ch1)
{
    sprite_index = spr_ironshackle_ch1
    image_index = 0
    if (global.flag[105] == 1)
        image_index = 1
}
if (room == room_cc_prison2_ch1)
{
    sprite_index = spr_npc_originalstarwalker_ch1
    if (global.flag[254] == 0)
        instance_destroy()
}
if (room == room_cc_throneroom_ch1)
{
    if (x >= 220 && x <= 400)
        sprite_index = spr_darkthrone_ch1
    else
        sprite_index = spr_darkmoney_ch1
}
if (room == room_flowershop_2f_ch1)
{
    sprite_index = spr_flowercontainer_ch1
    num = 0
    colortxt = scr_84_get_lang_string_ch1("obj_npc_sign_slash_Create_0_gml_45_0")
    if (x > 170)
    {
        num = 1
        colortxt = scr_84_get_lang_string_ch1("obj_npc_sign_slash_Create_0_gml_50_0")
        if (y > 110)
        {
            num = 5
            colortxt = scr_84_get_lang_string_ch1("obj_npc_sign_slash_Create_0_gml_51_0")
        }
        if (y > 130)
        {
            num = 6
            colortxt = scr_84_get_lang_string_ch1("obj_npc_sign_slash_Create_0_gml_52_0")
        }
    }
    if (x < 140)
    {
        num = 2
        colortxt = scr_84_get_lang_string_ch1("obj_npc_sign_slash_Create_0_gml_57_0")
        if (y > 110)
        {
            num = 3
            colortxt = scr_84_get_lang_string_ch1("obj_npc_sign_slash_Create_0_gml_58_0")
        }
        if (y > 130)
        {
            num = 4
            colortxt = scr_84_get_lang_string_ch1("obj_npc_sign_slash_Create_0_gml_59_0")
        }
    }
    image_index = num
}
if (room == room_town_north_ch1)
{
    sprite_index = spr_npc_asgoretruck_ch1
    setdepth = 0
    depth = 700000
}
if (room == room_beach_ch1)
    sprite_index = spr_npc_beachtable_ch1
if (room == room_town_krisyard_ch1)
    sprite_index = spr_torcar_u_ch1
if (setdepth == 1)
    scr_depth_ch1()
